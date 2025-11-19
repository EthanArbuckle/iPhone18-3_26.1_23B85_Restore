@interface BWPhotonicEngineNode
+ (void)initialize;
- ($2825F4736939C4A6D3AD43837233062D)processorController:(id)a3 outputPixelBufferDimensionsForProcessorInput:(id)a4 type:(unint64_t)a5 attachedMediaKey:(id)a6 pixelFormat:(unsigned int)a7 dimensions:(id)a8;
- (BOOL)_processingNeededForSettings:(uint64_t)a3 portType:;
- (BOOL)_shouldPassthroughWithStillImageSettings:(_BOOL8)result;
- (BOOL)demosaicedRawSupportedForCaptureType:(int)a3;
- (BOOL)learnedFusionSupportedForPortType:(id)a3;
- (BOOL)processingOnBeginMomentSupportedForCaptureSettings:(id)a3;
- (BOOL)rawNightModeSupportedForPortType:(id)a3;
- (BWPhotonicEngineNode)initWithNodeConfiguration:(id)a3 captureDevice:(id)a4;
- (__CVBuffer)_newOutputPixelBufferForProcessorController:(void *)a3 processorInput:(uint64_t)a4 type:(void *)a5 pixelBufferProvider:;
- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5;
- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5 attachedMediaKey:(id)a6;
- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5 attachedMediaKey:(id)a6 pixelFormat:(unsigned int)a7 dimensions:(id)a8;
- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5 attachedMediaKey:(id)a6 pixelFormat:(unsigned int)a7 dimensions:(id)a8 dimensionAlignment:(int)a9;
- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5 dimensions:(id)a6;
- (id)_bufferTypesExcludingErrorRecoveryTypesForCaptureSettings:(id)result;
- (id)_bufferTypesForCaptureSettings:(uint64_t)a1;
- (id)_nextNRInputForPortType:(id)result;
- (id)_nrfOutputSbufRouter;
- (id)_setupProcessorControllerConfigurations;
- (id)_softISPFusionCaptureOutputSbufRouter;
- (id)_standardNROutputRouterWithExpectedQueue:(id)result;
- (id)_ubInferenceInputRouter;
- (id)_ubRERRouter;
- (id)adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:(id)a3 wait:(BOOL)a4;
- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)a3 frameStatistics:(id)a4 stationary:(BOOL)a5 sphereOffsetEnabled:(BOOL)a6 detectedObjects:(id)a7;
- (id)processorController:(id)a3 newInferencesForProcessorInput:(id)a4 inferenceInputBufferType:(unint64_t)a5;
- (int)activeAspectRatio;
- (uint64_t)_deepFusionProcessorInputNeededForSettings:(uint64_t)a1 portType:;
- (uint64_t)_deferredCaptureAddSecondaryStereoPhotoCaptureSampleBufferIfReadyForSettings:(uint64_t)result;
- (uint64_t)_ensureDeepZoomInputEnqueued:(uint64_t)result;
- (uint64_t)_generateDisparityForSettings:(uint64_t)result;
- (uint64_t)_handleLidarDepthPointCloudSampleBuffer:(uint64_t)result;
- (uint64_t)_handleSampleBuffer:(uint64_t)a3 input:;
- (uint64_t)_infoForCaptureType:(uint64_t)result isSupportedCaptureTypeOut:isFusionCaptureTypeOut:;
- (uint64_t)_nrfProcessorInputNeededForSettings:(uint64_t)result portType:;
- (uint64_t)_processRawErrorRecoveryFrameWithNRFProcessorInput:(int)a3 processErrorRecoveryProxy:(uint64_t)a4 failureMetadata:;
- (uint64_t)_propagatedErrorRecoveryMetadataIfNeededForSampleBuffer:(uint64_t)result;
- (uint64_t)_releaseResources;
- (uint64_t)_scaleInferenceInputForRedEyeReductionFromPixelBuffer:(CVPixelBufferRef)destinationBuffer outputPixelBuffer:;
- (uint64_t)_serviceNextSoftISPInputWithSampleBuffer:(unint64_t)a3 processingMode:(uint64_t)a4 transferOwnership:;
- (uint64_t)_setupProcessingStateForClientBracketWithSettings:(uint64_t)a1 processingPlan:;
- (uint64_t)_setupProcessingStateForColorConstancyCaptureWithSettings:(uint64_t)a1 processingPlan:;
- (uint64_t)_setupProcessingStateForDeferredCaptureIfNeededWithSettings:(uint64_t)a1;
- (uint64_t)_setupProcessingStateForDisparityIfNeededWithSettings:(uint64_t)a3 sequenceNumber:(void *)a4 processingPlan:;
- (uint64_t)_setupProcessingStateForInferenceWithSettings:(uint64_t)a3 portType:(unint64_t)a4 inferenceInputBufferType:;
- (uint64_t)_setupProcessingStateForScalerIfNeededWithSettings:(uint64_t)a3 sequenceNumber:(uint64_t)a4 portType:(int)a5 preNoiseReductionScaler:(void *)a6 processingPlan:;
- (uint64_t)_setupProcessingStateForSmartStyleWithSettings:(uint64_t)result sequenceNumber:portType:processingPlan:;
- (uint64_t)_setupProcessingStateIfNeededWithBeginMomentSettings:(uint64_t)a1;
- (uint64_t)_setupResourceCoordinator;
- (uint64_t)_setupSoftISPProcessingStateIfNeededWithSettings:(uint64_t)result portType:processingPlan:;
- (uint64_t)_singleImageProcessSampleBuffer:(uint64_t)a1 settings:(uint64_t)a2 portType:(uint64_t)a3;
- (unint64_t)_softISPProcessingModeForSettings:(unint64_t)result captureFrameFlags:;
- (void)_attemptDisparityReferenceFrameResolutionForSettings:(uint64_t)a1 portType:;
- (void)_attemptPiecemealEncodingForGainMapSbuf:(uint64_t)a3 primarySbuf:(uint64_t)a4 portType:;
- (void)_attemptPiecemealEncodingOfAuxImagesForSmartStylesCaptureWithSampleBuffer:(uint64_t)a1 portType:(uint64_t)a2;
- (void)_beginStereoPhotoProcessingIfNeededForSettings:(void *)result;
- (void)_checkIfProcessingCompletedForNRFProcessorInput:(uint64_t)a1;
- (void)_copyNextSoftISPInputUsingProcessingOrderByPortType:processingMode:;
- (void)_deferredCaptureAddBuffer:bufferType:captureFrameFlags:metadata:rawThumbnailsBuffer:rawThumbnailsMetadata:portType:;
- (void)_deferredCaptureHandleSensorRawSampleBuffer:(int)a3;
- (void)_drainStashedBeginMomentBuffersIfNeededWithSettings:(uint64_t)a1;
- (void)_emitError:(uint64_t)a3 stillImageSettings:(uint64_t)a4 metadata:(uint64_t)a5 description:(uint64_t)a6;
- (void)_emitSampleBuffer:(uint64_t)a3 description:;
- (void)_enqueueSoftISPInput:(uint64_t)a1;
- (void)_ensureSmartStyleRenderingInputEnqueued:(void *)result;
- (void)_errorRecoveryBufferTypesForBufferTypes:(uint64_t)a1;
- (void)_handleDeepFusionError:(void *)a3 processorInput:;
- (void)_handleDeferredCaptureProxyOrErrorRecoverySampleBuffer:(uint64_t)a3 bufferType:(uint64_t)a4;
- (void)_handleSampleBufferForFocusPixelDisparityInputIfNeeded:(uint64_t)a3;
- (void)_handleSupplementalPointCloudSampleBuffer:(uint64_t)a3;
- (void)_inferenceProcessRedEyeReductionSampleBuffer:(uint64_t)a3 settings:(uint64_t)a4 portType:;
- (void)_liveReconfigureResourceCoordinatorIfNeeded;
- (void)_piecemealEncodeAttachedMediaByKey:(uint64_t)a1 primarySbuf:portType:;
- (void)_processingOrderByPortTypeForSettings:(uint64_t)a1;
- (void)_processorControllerDidFinishProcessingInputForPortType:processorType:captureRequestIdentifier:;
- (void)_releaseNodeResourcesIfNeededBeforeEmittingSampleBuffer:(uint64_t)a1;
- (void)_releaseResourcesWithSettings:(uint64_t)a1;
- (void)_removeNonPropagatedAttachedMediaFromSampleBuffer:(uint64_t)a1;
- (void)_resetProcessingState;
- (void)_resetProcessingStateIfDone;
- (void)_setupDeferredProcessingWithSettings:(uint64_t)a3 portType:;
- (void)_setupProcessingStateForDeepFusionWithSettings:processingPlan:;
- (void)_setupProcessingStateForDeepZoomWithSettings:sequenceNumber:portType:processingPlan:;
- (void)_setupProcessingStateForFlashCaptureWithSettings:processingPlan:;
- (void)_setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings:sequenceNumber:portType:processingPlan:;
- (void)_setupProcessingStateForJasperDisparityIfNeededWithSettings:(uint64_t)a1 processingPlan:;
- (void)_setupProcessingStateForPointCloudDepthIfNeededWithSettings:(uint64_t)a1 processingPlan:;
- (void)_setupProcessingStateForSingleImageCaptureWithSettings:processingPlan:;
- (void)_setupProcessingStateForStereoPhotoDeepZoomTransferWithSettings:(uint64_t)a3 processingPlan:(uint64_t)a4;
- (void)_setupProcessingStateWithSettings:;
- (void)_setupSoftISPOutputRoutingIfNeededWithOutputSampleBufferRouter:processingPlan:;
- (void)_stashAWBMetadataIfNeededForSampleBuffer:(int)a3 processingMode:;
- (void)_stashSensorRawErrorRecoveryFrameIfNeededUsingSampleBuffer:(uint64_t)a1;
- (void)_waitForAndMergeInferencesIfNeededForSampleBuffer:(uint64_t)a1 processorInput:;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4;
- (void)didSelectFormat:(id)a3 forOutput:(id)a4;
- (void)handleNodeError:(id)a3 forInput:(id)a4;
- (void)handleStillImagePrewarmWithSettings:(id)a3 resourceConfig:(id)a4 forInput:(id)a5;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)processingCoordinator:(id)a3 didEncounterError:(int)a4 stillImageSettings:(id)a5 description:(id)a6;
- (void)processingCoordinator:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 description:(id)a5;
- (void)processingCoordinatorComplete:(id)a3;
- (void)processorController:(id)a3 didDetermineReferenceFrame:(opaqueCMSampleBuffer *)a4 processorInput:(id)a5 err:(int)a6;
- (void)processorController:(id)a3 didFinishProcessingBuffer:(__CVBuffer *)a4 metadata:(id)a5 type:(unint64_t)a6 captureFrameFlags:(unint64_t)a7 processorInput:(id)a8 err:(int)a9;
- (void)processorController:(id)a3 didFinishProcessingInference:(id)a4 inferenceAttachmentKey:(id)a5 processorInput:(id)a6 err:(int)a7;
- (void)processorController:(id)a3 didFinishProcessingInferenceAttachedMediaMetadata:(id)a4 processorInput:(id)a5;
- (void)processorController:(id)a3 didFinishProcessingInferenceBuffer:(__CVBuffer *)a4 metadata:(id)a5 inferenceAttachedMediaKey:(id)a6 processorInput:(id)a7 err:(int)a8;
- (void)processorController:(id)a3 didFinishProcessingInput:(id)a4 err:(int)a5;
- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7;
- (void)processorController:(id)a3 didSelectFusionMode:(int)a4 processorInput:(id)a5;
- (void)processorController:(id)a3 didSelectLowLightReferenceFrame:(opaqueCMSampleBuffer *)a4 processorInput:(id)a5;
- (void)processorController:(id)a3 didSelectNewReferenceFrameWithPTS:(id *)a4 transform:(id)a5 processorInput:(id)a6;
- (void)processorController:(id)a3 willAddBuffer:(__CVBuffer *)a4 metadata:(id)a5 bufferType:(unint64_t)a6 processorInput:(id)a7;
- (void)processorController:(id)a3 willAddSampleBuffer:(opaqueCMSampleBuffer *)a4 processorInput:(id)a5;
- (void)processorController:(id)a3 willProcessRedEyeReductionForProcessorInput:(id)a4;
- (void)processorControllerWillProcessInferences:(id)a3;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)setActiveAspectRatio:(int)a3;
- (void)stopAdaptiveBracketingForSettings:(id)a3 withGroup:(int)a4;
@end

@implementation BWPhotonicEngineNode

- (id)_setupProcessorControllerConfigurations
{
  if (result)
  {
    v1 = result;
    if (dword_1EB58E340)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v3 = OUTLINED_FUNCTION_8_5(os_log_and_send_and_compose_flags_and_os_log_type);
      if (OUTLINED_FUNCTION_6(v3))
      {
        OUTLINED_FUNCTION_5_6();
        OUTLINED_FUNCTION_58_1();
      }

      OUTLINED_FUNCTION_2_4();
      result = OUTLINED_FUNCTION_17_8();
    }

    if (!*(v1 + 20))
    {
      v4 = objc_alloc(MEMORY[0x1E695DFD8]);
      v5 = OUTLINED_FUNCTION_40_18();
      [-[BWPhotonicEngineNodeConfiguration sensorConfigurationsByPortType](v5) allKeys];
      *(v1 + 20) = [OUTLINED_FUNCTION_4() initWithArray:?];
      v6 = OUTLINED_FUNCTION_40_18();
      [(BWPhotonicEngineNodeConfiguration *)v6 demosaicedRawPixelFormat];
      v7 = OUTLINED_FUNCTION_40_18();
      [(BWPhotonicEngineNodeConfiguration *)v7 setLinearYUVPixelFormat:v8];
      *(v1 + 28) = objc_alloc_init(BWPhotonicEngineNodeSampleBufferAndInputQueue);
      [OUTLINED_FUNCTION_40_18() setupProcessorControllerConfigurations];
      if ([OUTLINED_FUNCTION_40_18() softISPProcessorControllerConfiguration])
      {
        v9 = OUTLINED_FUNCTION_154_0(objc_alloc_init(MEMORY[0x1E695DF90]), 232);
        v10 = OUTLINED_FUNCTION_154_0(v9, 240);
        v11 = OUTLINED_FUNCTION_154_0(v10, 264);
        v12 = OUTLINED_FUNCTION_154_0(v11, 280);
        *(v1 + 37) = OUTLINED_FUNCTION_154_0(v12, 288);
      }

      if ([OUTLINED_FUNCTION_40_18() nrfProcessorControllerConfiguration])
      {
        *(v1 + 38) = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v13 = OUTLINED_FUNCTION_154_0(objc_alloc_init(MEMORY[0x1E695DF90]), 312);
      *(v1 + 59) = OUTLINED_FUNCTION_154_0(v13, 320);
      if ([OUTLINED_FUNCTION_40_18() deferredProcessorControllerConfiguration])
      {
        *(v1 + 70) = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      if ([OUTLINED_FUNCTION_40_18() deepFusionProcessorControllerConfiguration])
      {
        *(v1 + 43) = objc_alloc_init(MEMORY[0x1E695DF90]);
        v14 = [OUTLINED_FUNCTION_40_18() deepFusionEnhancedResolutionDimensions];
        v15 = v14;
        v16 = HIDWORD(v14);
        v17 = [OUTLINED_FUNCTION_40_18() softISPProcessorControllerConfiguration];
        v20 = (v15 < 1 || v16 < 1) && v17 != 0;
        [objc_msgSend(OUTLINED_FUNCTION_40_18() "deepFusionProcessorControllerConfiguration")];
      }

      if ([OUTLINED_FUNCTION_40_18() learnedNRProcessorControllerConfiguration])
      {
        *(v1 + 41) = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v21 = OUTLINED_FUNCTION_40_18();
      if (([(BWPhotonicEngineNodeConfiguration *)v21 learnedNRMode]& 1) != 0)
      {
        *(v1 + 42) = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      if ([OUTLINED_FUNCTION_40_18() inferenceControllerConfiguration])
      {
        *(v1 + 45) = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      if ([OUTLINED_FUNCTION_40_18() swfrProcessorControllerConfiguration])
      {
        *(v1 + 49) = OUTLINED_FUNCTION_154_0(objc_alloc_init(MEMORY[0x1E695DF90]), 384);
      }

      if ([OUTLINED_FUNCTION_40_18() colorConstancyProcessorControllerConfiguration])
      {
        *(v1 + 50) = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      if ([OUTLINED_FUNCTION_40_18() redEyeProcessorControllerConfiguration])
      {
        *(v1 + 51) = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      if ([OUTLINED_FUNCTION_40_18() intelligentDistortionCorrectionProcessorControllerConfiguration])
      {
        *(v1 + 53) = OUTLINED_FUNCTION_154_0(objc_alloc_init(MEMORY[0x1E695DF90]), 416);
      }

      if ([OUTLINED_FUNCTION_40_18() deepZoomProcessorControllerConfiguration])
      {
        *(v1 + 55) = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      if ([OUTLINED_FUNCTION_40_18() scalerProcessorControllerConfiguration])
      {
        *(v1 + 56) = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      if ([OUTLINED_FUNCTION_40_18() smartStyleRenderingProcessorControllerConfiguration])
      {
        *(v1 + 61) = objc_alloc_init(MEMORY[0x1E695DF90]);
        v22 = OUTLINED_FUNCTION_40_18();
        if (![(BWPhotonicEngineNodeConfiguration *)v22 linearYUVPixelFormat])
        {
          [objc_msgSend(OUTLINED_FUNCTION_40_18() "smartStyleRenderingProcessorControllerConfiguration")];
          v23 = OUTLINED_FUNCTION_40_18();
          [(BWPhotonicEngineNodeConfiguration *)v23 setLinearYUVPixelFormat:v24];
        }
      }

      if ([OUTLINED_FUNCTION_40_18() stereoDisparityProcessorControllerConfiguration])
      {
        *(v1 + 31) = OUTLINED_FUNCTION_154_0(objc_alloc_init(MEMORY[0x1E695DF90]), 480);
      }

      if ([*(v1 + 17) supplementalPointCloudCaptureDevice] && objc_msgSend(OUTLINED_FUNCTION_40_18(), "jasperColorStillsExecutorControllerConfiguration"))
      {
        *(v1 + 65) = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      result = [OUTLINED_FUNCTION_40_18() jasperDisparityProcessorControllerConfiguration];
      if (result)
      {
        result = objc_alloc_init(MEMORY[0x1E695DF90]);
        *(v1 + 66) = result;
      }
    }
  }

  return result;
}

- (int)activeAspectRatio
{
  os_unfair_lock_lock(&self->_activeAspectRatioLock);
  activeAspectRatio = self->_activeAspectRatio;
  os_unfair_lock_unlock(&self->_activeAspectRatioLock);
  return activeAspectRatio;
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

- (BWPhotonicEngineNode)initWithNodeConfiguration:(id)a3 captureDevice:(id)a4
{
  v36.receiver = self;
  v36.super_class = BWPhotonicEngineNode;
  v6 = [(BWNode *)&v36 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  [(BWNode *)v6 setSupportsLiveReconfiguration:1];
  if (!a3)
  {

    return 0;
  }

  v7->_nodeConfiguration = a3;
  v7->_activeAspectRatioLock._os_unfair_lock_opaque = 0;
  v7->_activeAspectRatio = [(BWPhotonicEngineNodeConfiguration *)a3 processingAspectRatio];
  v8 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v7 index:0];
  v9 = objc_alloc_init(BWVideoFormatRequirements);
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [(BWStillImageNodeConfiguration *)v7->_nodeConfiguration depthDataType];
  v34 = a4;
  if (![(BWPhotonicEngineNodeConfiguration *)v7->_nodeConfiguration inputIs10Bit])
  {
    [v10 addObject:&unk_1F22479E0];
    if (v11 == 7)
    {
      goto LABEL_12;
    }

    v12 = &unk_1F22479F8;
    goto LABEL_11;
  }

  [v10 addObject:&unk_1F2247980];
  if (v11 != 7)
  {
    [v10 addObject:&unk_1F2247998];
  }

  if (([(BWPhotonicEngineNodeConfiguration *)a3 semanticStyleRenderingEnabled]& 1) == 0)
  {
    [v10 addObject:&unk_1F22479B0];
    if (v11 != 7)
    {
      v12 = &unk_1F22479C8;
LABEL_11:
      [v10 addObject:v12];
    }
  }

LABEL_12:
  v33 = v11;
  v13 = v11 != 7;
  v14 = [(BWStillImageNodeConfiguration *)v7->_nodeConfiguration maxLossyCompressionLevel];
  v15 = [(BWPhotonicEngineNodeConfiguration *)v7->_nodeConfiguration inputIs10Bit];
  v16 = [(BWPhotonicEngineNodeConfiguration *)v7->_nodeConfiguration inputIs10Bit];
  v17 = 1;
  [v10 addObjectsFromArray:{FigCaptureSupportedCompressedPixelFormatsForSettings(4, v14, v13, 1, 0, v15 ^ 1u, v16, 0)}];
  [(BWVideoFormatRequirements *)v9 setSupportedPixelFormats:v10];
  if ([(BWPhotonicEngineNodeConfiguration *)v7->_nodeConfiguration inputIs10Bit])
  {
    v18 = 64;
  }

  else
  {
    v18 = 16;
  }

  [(BWVideoFormatRequirements *)v9 setBytesPerRowAlignment:v18];
  [(BWVideoFormatRequirements *)v9 setHeightAlignment:16];
  [(BWVideoFormatRequirements *)v9 setWidthAlignment:16];
  [(BWNodeInput *)v8 setFormatRequirements:v9];
  [(BWNodeInput *)v8 setPassthroughMode:0];
  [(BWNodeInput *)v8 setRetainedBufferCount:[(BWPhotonicEngineNodeConfiguration *)v7->_nodeConfiguration retainedBufferCount]];
  [(BWNode *)v7 addInput:v8];
  if ([v34 sensorRawStillImageOutputsEnabled])
  {
    v19 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v7 index:1];
    v20 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v20 setSupportedPixelFormats:&unk_1F224A2A8];
    [(BWVideoFormatRequirements *)v20 setBytesPerRowAlignment:64];
    [(BWVideoFormatRequirements *)v20 setHeightAlignment:16];
    [(BWVideoFormatRequirements *)v20 setWidthAlignment:16];
    [(BWNodeInput *)v19 setFormatRequirements:v20];
    [(BWNodeInput *)v19 setPassthroughMode:0];
    [(BWNodeInput *)v19 setRetainedBufferCount:[(BWPhotonicEngineNodeConfiguration *)v7->_nodeConfiguration retainedBufferCount]];
    [(BWNode *)v7 addInput:v19];
    v7->_sensorRawInput = v19;
    v17 = 2;
  }

  v21 = [a3 depthDataType];
  v22 = [v34 supplementalPointCloudCaptureDevice];
  if (v21 == 7)
  {
    if (v22)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"We should not be generating LiDAR depth and using the ToF camera in the supplemental mode at the same time" userInfo:0]);
    }
  }

  else if (!v22)
  {
    goto LABEL_22;
  }

  v7->_pointCloudInput = [[BWNodeInput alloc] initWithMediaType:1885564004 node:v7 index:v17];
  [(BWNodeInput *)v7->_pointCloudInput setFormatRequirements:objc_alloc_init(BWPointCloudFormatRequirements)];
  [(BWNodeInput *)v7->_pointCloudInput setRetainedBufferCount:1000];
  [(BWNode *)v7 addInput:v7->_pointCloudInput];
  v7->_pointCloudLock._os_unfair_lock_opaque = 0;
  v7->_discardPointClouds = 1;
LABEL_22:
  v23 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v7];
  [(BWNodeOutput *)v23 setOwningNodeRetainedBufferCount:[(BWPhotonicEngineNodeConfiguration *)v7->_nodeConfiguration outputBufferCount]- 1];
  v24 = [(BWStillImageNodeConfiguration *)v7->_nodeConfiguration stereoPhotoOutputDimensions];
  if (v24 >= 1 && SHIDWORD(v24) >= 1)
  {
    [(BWNodeOutput *)v23 setOwningNodeRetainedBufferCount:[(BWNodeOutput *)v23 owningNodeRetainedBufferCount]+ 2];
  }

  [(BWNodeOutput *)v23 setPixelBufferPoolProvidesBackPressure:[(BWPhotonicEngineNodeConfiguration *)v7->_nodeConfiguration outputPoolBackPressureEnabled]];
  [(BWNodeOutput *)v23 setPixelBufferPoolReportSlowBackPressureAllocations:[(BWPhotonicEngineNodeConfiguration *)v7->_nodeConfiguration outputPoolBackPressureEnabled]];
  [(BWNodeOutput *)v23 setPassthroughMode:0];
  if ([(BWPhotonicEngineNodeConfiguration *)v7->_nodeConfiguration outputPixelFormat])
  {
    v25 = objc_alloc_init(BWVideoFormatRequirements);
    v26 = [MEMORY[0x1E695DF70] arrayWithObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", -[BWPhotonicEngineNodeConfiguration outputPixelFormat](v7->_nodeConfiguration))}];
    v27 = [(BWStillImageNodeConfiguration *)v7->_nodeConfiguration maxLossyCompressionLevel];
    v28 = [(BWPhotonicEngineNodeConfiguration *)v7->_nodeConfiguration inputIs10Bit];
    v29 = [(BWPhotonicEngineNodeConfiguration *)v7->_nodeConfiguration inputIs10Bit];
    [v26 addObjectsFromArray:{FigCaptureSupportedCompressedPixelFormatsForSettings(4, v27, v33 != 7, 1, 0, v28 ^ 1u, v29, 0)}];
    [(BWVideoFormatRequirements *)v25 setSupportedPixelFormats:v26];
    if ([(BWPhotonicEngineNodeConfiguration *)v7->_nodeConfiguration outputColorSpaceProperties])
    {
      v35 = [MEMORY[0x1E696AD98] numberWithInt:-[BWPhotonicEngineNodeConfiguration outputColorSpaceProperties](v7->_nodeConfiguration)];
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    }

    else
    {
      v30 = 0;
    }

    [(BWVideoFormatRequirements *)v25 setSupportedColorSpaceProperties:v30];
    [(BWNodeOutput *)v23 setFormatRequirements:v25];
  }

  [(BWNode *)v7 addOutput:v23];
  v31 = v34;
  v7->_device = v31;
  [(BWFigVideoCaptureDevice *)v31 setAdaptiveUnifiedBracketingController:v7];
  [(BWPhotonicEngineNode *)v7 _setupProcessorControllerConfigurations];
  v7->_resourceCoordinator = [[BWPhotonicEngineNodeResourceCoordinator alloc] initWithNodeConfiguration:v7->_nodeConfiguration nodeInput:v7->super._input nodeOutput:v7->super._output];
  return v7;
}

- (void)dealloc
{
  [(BWPhotonicEngineNode *)self _releaseResources];

  self->_resourceCoordinator = 0;
  v3.receiver = self;
  v3.super_class = BWPhotonicEngineNode;
  [(BWNode *)&v3 dealloc];
}

- (void)setActiveAspectRatio:(int)a3
{
  os_unfair_lock_lock(&self->_activeAspectRatioLock);
  self->_activeAspectRatio = a3;

  os_unfair_lock_unlock(&self->_activeAspectRatioLock);
}

- (BOOL)demosaicedRawSupportedForCaptureType:(int)a3
{
  if (a3 > 0xD || ((1 << a3) & 0x3C86) == 0)
  {
    return 0;
  }

  v5 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration nrfProcessorControllerConfiguration];

  return [v5 demosaicedRawEnabled];
}

- (BOOL)rawNightModeSupportedForPortType:(id)a3
{
  v4 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration portTypesWithRawNightModeEnabled];

  return [v4 containsObject:a3];
}

- (BOOL)learnedFusionSupportedForPortType:(id)a3
{
  v4 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration portTypesWithLearnedFusionEnabled];

  return [v4 containsObject:a3];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4
{
  if (self->_pointCloudInput == a4)
  {
    return;
  }

  v154 = v7;
  v155 = v6;
  v156 = v4;
  v157 = v5;
  if (self->_sensorRawInput == a4)
  {
    if (![(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration softISPProcessorControllerConfiguration])
    {
      return;
    }

    v16 = [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](self->_nodeConfiguration "softISPProcessorControllerConfiguration")];
    if (v16 == [a3 pixelFormat])
    {
      return;
    }

    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v153 = 0;
    v152 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](self->_nodeConfiguration "softISPProcessorControllerConfiguration")];
    v112 = BWStringForOSType();
    [a3 pixelFormat];
    v148 = 138412546;
    v149 = v112;
    v150 = 2112;
    v151 = BWStringForOSType();
    v113 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v113, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNode.m", 597, @"LastShownDate:BWPhotonicEngineNode.m:597", @"LastShownBuild:BWPhotonicEngineNode.m:597", 0);
LABEL_129:
    free(v113);
    return;
  }

  v10 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator hasSuccessfullySetupProcessorControllersAndMemoryResources];
  if (!v10)
  {
    goto LABEL_6;
  }

  if (![(BWNodeInput *)self->super._input liveFormat])
  {
    v153 = 0;
    v152 = 0;
    v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v114 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(v148) = 0;
    v113 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(7, v113, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNode.m", 618, @"LastShownDate:BWPhotonicEngineNode.m:618", @"LastShownBuild:BWPhotonicEngineNode.m:618", 1);
    goto LABEL_129;
  }

  if (([(BWFormat *)[(BWNodeInput *)self->super._input liveFormat] isEqual:a3]& 1) == 0)
  {
    v153 = 0;
    v152 = 0;
    v110 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v115 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(v148) = 0;
    v113 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(7, v113, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNode.m", 611, @"LastShownDate:BWPhotonicEngineNode.m:611", @"LastShownBuild:BWPhotonicEngineNode.m:611", 1);
    goto LABEL_129;
  }

LABEL_6:
  v119 = v10;
  v11 = -[BWPhotonicEngineNodeConfiguration requiresResizedOutputDimensionsWithInputDimensions:](self->_nodeConfiguration, "requiresResizedOutputDimensionsWithInputDimensions:", [a3 width] | (objc_msgSend(a3, "height") << 32));
  if (v11)
  {
    [objc_msgSend(-[BWPhotonicEngineNodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration](self->_nodeConfiguration "intelligentDistortionCorrectionProcessorControllerConfiguration")];
  }

  v118 = [(BWNodeOutput *)self->super._output owningNodeRetainedBufferCount];
  dcOutputBufferCount = v118 + 1;
  if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration])
  {
    v13 = v11;
  }

  else
  {
    v13 = 1;
  }

  if (v13 != 1 || (v14 = v118 + 1, [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration constantColorVersion]>= 1))
  {
    v14 = 2 * dcOutputBufferCount;
    self->_dcOutputBufferCount = 2 * dcOutputBufferCount;
  }

  v15 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration smartStyleRenderingProcessorControllerConfiguration];
  if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](self->_nodeConfiguration "nrfProcessorControllerConfiguration")])
  {
    if ([objc_msgSend(-[BWPhotonicEngineNodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration](self->_nodeConfiguration "intelligentDistortionCorrectionProcessorControllerConfiguration")] && -[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](self->_nodeConfiguration, "softISPProcessorControllerConfiguration"))
    {
      dcOutputBufferCount = self->_dcOutputBufferCount;
    }
  }

  else
  {
    dcOutputBufferCount = 0;
  }

  self->_demosaicedRawOutputBufferCount = dcOutputBufferCount;
  v19 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration deepZoomProcessorControllerConfiguration]!= 0;
  if (![(BWStillImageNodeConfiguration *)self->_nodeConfiguration deferredPhotoProcessorEnabled]|| [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration intelligentDistortionCorrectionProcessorControllerConfiguration])
  {
    v20 = 1;
    v124 = 1;
LABEL_25:
    v116 = v14;
    v117 = v20;
    goto LABEL_26;
  }

  if (v13)
  {
    v111 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration gainMapMainImageDownscalingFactor];
    v124 = 0;
    v20 = *&v111 > 0.0;
    goto LABEL_25;
  }

  v124 = 0;
  v116 = v14 >> 1;
  v117 = 1;
LABEL_26:
  v21 = v14 + (v15 != 0);
  obj = self->_demosaicedRawOutputBufferCount;
  v122 = objc_alloc_init(BWVideoFormatRequirements);
  if (FigCapturePixelFormatIsFullRange([a3 pixelFormat]))
  {
    v22 = 875704422;
  }

  else
  {
    v22 = 875704438;
  }

  v147 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v22];
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v147 count:1];
  v24 = FigCapturePlatformSupportsUniversalCompression();
  v120 = v15;
  if (![(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration deepZoomProcessorControllerConfiguration]&& v24)
  {
    v25 = [(BWStillImageNodeConfiguration *)self->_nodeConfiguration maxLossyCompressionLevel];
    if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration deepFusionProcessorControllerConfiguration])
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }

    v23 = FigCapturePixelFormatsByAddingCompressedVariants(v23, v26);
  }

  v27 = v21 + v19;
  if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration outputColorSpaceProperties])
  {
    v146 = [MEMORY[0x1E696AD98] numberWithInt:-[BWPhotonicEngineNodeConfiguration outputColorSpaceProperties](self->_nodeConfiguration)];
    v28 = &v146;
  }

  else
  {
    if (![a3 colorSpaceProperties])
    {
      v29 = 0;
      goto LABEL_40;
    }

    v145 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a3, "colorSpaceProperties")}];
    v28 = &v145;
  }

  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
LABEL_40:
  v30 = v27 - 1;
  [(BWVideoFormatRequirements *)v122 setSupportedColorSpaceProperties:v29];
  v31 = [(BWPhotonicEngineNode *)self activeAspectRatio];
  if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration processingAspectRatio])
  {
    if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration processingAspectRatio]== 6)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31;
    }
  }

  else
  {
    v32 = 0;
  }

  [(BWVideoFormatRequirements *)v122 setSupportedPixelFormats:v23];
  v121 = v31;
  if (v11)
  {
    v33 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration outputDimensions];
  }

  else
  {
    v33 = [a3 dimensions];
    if (v32)
    {
      v34 = BWAspectRatioValueFromAspectRatio(v32);
      v33 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v33, v34);
    }
  }

  [(BWVideoFormatRequirements *)v122 setDimensions:v33];
  [(BWVideoFormatRequirements *)v122 setBytesPerRowAlignment:64];
  [(BWVideoFormatRequirements *)v122 setHeightAlignment:16];
  [(BWVideoFormatRequirements *)v122 setWidthAlignment:16];
  [(BWVideoFormatRequirements *)v122 setPlaneAlignment:64];
  [(BWVideoFormatRequirements *)v122 setSupportedCacheModes:+[BWVideoFormatRequirements cacheModesForOptimizedHWAccess]];
  [(BWNodeOutput *)self->super._output setFormatRequirements:v122];
  [(BWNodeOutput *)self->super._output setOwningNodeRetainedBufferCount:v30];
  [-[BWPhotonicEngineNodeConfiguration softISPProcessorControllerConfiguration](self->_nodeConfiguration "softISPProcessorControllerConfiguration")];
  [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](self->_nodeConfiguration "nrfProcessorControllerConfiguration")];
  [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](self->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
  [-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](self->_nodeConfiguration "deepZoomProcessorControllerConfiguration")];
  v125 = [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)self->super._output primaryMediaConfiguration] pixelBufferPoolProvidesBackPressure];
  if ([-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](self->_nodeConfiguration "nrfProcessorControllerConfiguration")])
  {
    v35 = -[BWPhotonicEngineNodeConfiguration demosaicedRawFormatRequirementsWithDimensions:colorSpaceProperties:](self->_nodeConfiguration, "demosaicedRawFormatRequirementsWithDimensions:colorSpaceProperties:", -[BWVideoFormatRequirements width](v122, "width") | (-[BWVideoFormatRequirements height](v122, "height") << 32), [-[NSArray firstObject](-[BWVideoFormatRequirements supportedColorSpaceProperties](v122 "supportedColorSpaceProperties")]);
    if ([(BWStillImageNodeConfiguration *)self->_nodeConfiguration deferredPhotoProcessorEnabled])
    {
      v36 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration ultraHighResolutionProcessingEnabled];
    }

    else
    {
      v36 = 0;
    }

    v38 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v38 setFormatRequirements:v35];
    [(BWNodeOutputMediaConfiguration *)v38 setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)v38 setProvidesPixelBufferPool:v36 ^ 1u];
    if ((v36 & 1) == 0)
    {
      [(BWNodeOutputMediaConfiguration *)v38 setOwningNodeRetainedBufferCount:(obj - 1)];
      [(BWNodeOutputMediaConfiguration *)v38 setPixelBufferPoolProvidesBackPressure:v125];
      [(BWNodeOutputMediaConfiguration *)v38 setPixelBufferPoolReportSlowBackPressureAllocations:v125];
    }

    [(BWNodeOutput *)self->super._output setMediaConfiguration:v38 forAttachedMediaKey:0x1F21AAE10];
  }

  v39 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration providedInferenceAttachedMediaModesByAttachedMediaKey];
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  obja = v39;
  v126 = [(NSDictionary *)v39 countByEnumeratingWithState:&v141 objects:v140 count:16];
  if (v126)
  {
    v123 = *v142;
    do
    {
      for (i = 0; i != v126; ++i)
      {
        if (*v142 != v123)
        {
          objc_enumerationMutation(obja);
        }

        v41 = *(*(&v141 + 1) + 8 * i);
        if ([BWMattingV2InferenceConfiguration isMattingOutputAttachedMediaKey:v41])
        {
          v42 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration inferenceMainImageDownscalingFactor];
          if (*&v42 == 0.0)
          {
            v43 = 0;
          }

          else
          {
            v43 = objc_alloc_init(BWVideoFormatRequirements);
            v44 = [(BWVideoFormatRequirements *)v122 width];
            v45 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration inferenceMainImageDownscalingFactor];
            [(BWVideoFormatRequirements *)v43 setWidth:FigCaptureRoundFloatToMultipleOf(2, v44 / *&v45)];
            v46 = [(BWVideoFormatRequirements *)v122 height];
            v47 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration inferenceMainImageDownscalingFactor];
            [(BWVideoFormatRequirements *)v43 setHeight:FigCaptureRoundFloatToMultipleOf(2, v46 / *&v47)];
            [(BWVideoFormatRequirements *)v43 setSupportedPixelFormats:&unk_1F224A2C0];
            [(BWVideoFormatRequirements *)v43 setBytesPerRowAlignment:64];
            [(BWVideoFormatRequirements *)v43 setPlaneAlignment:64];
            [(BWVideoFormatRequirements *)v43 setWidthAlignment:16];
            [(BWVideoFormatRequirements *)v43 setHeightAlignment:16];
            [(BWVideoFormatRequirements *)v43 setMemoryPoolUseAllowed:0];
          }
        }

        else
        {
          v43 = objc_alloc_init(BWVideoFormatRequirements);
          if (FigCaptureAspectRatioForDimensions([(BWVideoFormatRequirements *)v122 dimensions]) >= 1.0)
          {
            v48 = 0x18000000200;
          }

          else
          {
            v48 = 0x20000000180;
          }

          [(BWVideoFormatRequirements *)v43 setDimensions:v48];
          [(BWVideoFormatRequirements *)v43 setSupportedPixelFormats:&unk_1F224A2D8];
          [(BWVideoFormatRequirements *)v43 setBytesPerRowAlignment:64];
        }

        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v129 = v41;
        v49 = [(NSDictionary *)obja objectForKeyedSubscript:v41];
        v50 = [v49 countByEnumeratingWithState:&v136 objects:v135 count:16];
        if (v50)
        {
          v51 = v50;
          LODWORD(v52) = 0;
          v53 = *v137;
          do
          {
            for (j = 0; j != v51; ++j)
            {
              if (*v137 != v53)
              {
                objc_enumerationMutation(v49);
              }

              v55 = [*(*(&v136 + 1) + 8 * j) intValue];
              if (v55 == 3 || v55 == 2)
              {
                v56 = [(BWNodeOutput *)self->super._output owningNodeRetainedBufferCount];
              }

              else if (v55 == 1)
              {
                v56 = self->_demosaicedRawOutputBufferCount - 1;
              }

              else
              {
                v56 = 0;
              }

              if (v52 <= v56)
              {
                v52 = v56;
              }

              else
              {
                v52 = v52;
              }
            }

            v51 = [v49 countByEnumeratingWithState:&v136 objects:v135 count:16];
          }

          while (v51);
        }

        else
        {
          v52 = 0;
        }

        v57 = v125 | [(BWStillImageNodeConfiguration *)self->_nodeConfiguration deferredCaptureSupportEnabled];
        v58 = objc_alloc_init(BWNodeOutputMediaConfiguration);
        [(BWNodeOutputMediaConfiguration *)v58 setFormatRequirements:v43];
        [(BWNodeOutputMediaConfiguration *)v58 setPassthroughMode:0];
        [(BWNodeOutputMediaConfiguration *)v58 setProvidesPixelBufferPool:v124];
        [(BWNodeOutputMediaConfiguration *)v58 setOwningNodeRetainedBufferCount:v52];
        [(BWNodeOutputMediaConfiguration *)v58 setPixelBufferPoolProvidesBackPressure:v57 & 1];
        [(BWNodeOutputMediaConfiguration *)v58 setPixelBufferPoolReportSlowBackPressureAllocations:v57 & 1];
        [(BWNodeOutput *)self->super._output setMediaConfiguration:v58 forAttachedMediaKey:v129];
      }

      v126 = [(NSDictionary *)obja countByEnumeratingWithState:&v141 objects:v140 count:16];
    }

    while (v126);
  }

  v59 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration gainMapMainImageDownscalingFactor];
  if (*&v59 != 0.0)
  {
    v60 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v61 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v61 setSupportedPixelFormats:&unk_1F224A2F0];
    v62 = [(BWVideoFormatRequirements *)v122 width];
    v63 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration gainMapMainImageDownscalingFactor];
    [(BWVideoFormatRequirements *)v61 setWidth:(v62 / *&v63)];
    v64 = [(BWVideoFormatRequirements *)v122 height];
    v65 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration gainMapMainImageDownscalingFactor];
    [(BWVideoFormatRequirements *)v61 setHeight:(v64 / *&v65)];
    [(BWVideoFormatRequirements *)v61 setWidthAlignment:16];
    [(BWVideoFormatRequirements *)v61 setHeightAlignment:16];
    [(BWNodeOutputMediaConfiguration *)v60 setFormatRequirements:v61];
    [(BWNodeOutputMediaConfiguration *)v60 setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)v60 setProvidesPixelBufferPool:v117];
    [(BWNodeOutputMediaConfiguration *)v60 setOwningNodeRetainedBufferCount:v116 - 1];
    [(BWNodeOutputMediaConfiguration *)v60 setPixelBufferPoolProvidesBackPressure:v125];
    [(BWNodeOutputMediaConfiguration *)v60 setPixelBufferPoolReportSlowBackPressureAllocations:v125];
    [(BWNodeOutput *)self->super._output setMediaConfiguration:v60 forAttachedMediaKey:0x1F217BF50];
  }

  if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration processingAspectRatio])
  {
    v66 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration processingAspectRatio]== 6;
  }

  else
  {
    v66 = 1;
  }

  if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration inferenceControllerConfiguration]&& v119 && !v66)
  {
    v67 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator waitAndSafelyGetProcessorControllerForType:3];
    v68 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator inferenceControllerQueue];
    v133[0] = MEMORY[0x1E69E9820];
    v133[1] = 3221225472;
    v133[2] = __49__BWPhotonicEngineNode_didSelectFormat_forInput___block_invoke;
    v133[3] = &unk_1E7991CF0;
    v133[4] = v67;
    v134 = v121;
    ubn_dispatch_sync(v68, v133);
  }

  if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration constantColorVersion]>= 1)
  {
    v69 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v70 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v70 setSupportedPixelFormats:&unk_1F224A308];
    [(BWVideoFormatRequirements *)v70 setWidth:[(BWStillImageNodeConfiguration *)self->_nodeConfiguration constantColorConfidenceMapDimensions]];
    [(BWVideoFormatRequirements *)v70 setHeight:[(BWStillImageNodeConfiguration *)self->_nodeConfiguration constantColorConfidenceMapDimensions]>> 32];
    [(BWNodeOutputMediaConfiguration *)v69 setFormatRequirements:v70];
    [(BWNodeOutputMediaConfiguration *)v69 setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)v69 setProvidesPixelBufferPool:1];
    [(BWNodeOutputMediaConfiguration *)v69 setOwningNodeRetainedBufferCount:v118];
    [(BWNodeOutputMediaConfiguration *)v69 setPixelBufferPoolProvidesBackPressure:v125];
    [(BWNodeOutputMediaConfiguration *)v69 setPixelBufferPoolReportSlowBackPressureAllocations:v125];
    [(BWNodeOutput *)self->super._output setMediaConfiguration:v69 forAttachedMediaKey:0x1F21AB170];
  }

  if ([(BWStillImageNodeConfiguration *)self->_nodeConfiguration depthDataType]== 8 || [(BWStillImageNodeConfiguration *)self->_nodeConfiguration depthDataType]== 7)
  {
    v71 = 0;
  }

  else if ([(BWStillImageNodeConfiguration *)self->_nodeConfiguration depthDataType]== 3)
  {
    v71 = ![(BWStillImageNodeConfiguration *)self->_nodeConfiguration deferredPhotoProcessorEnabled];
  }

  else
  {
    v71 = 1;
  }

  v72 = [(BWStillImageNodeConfiguration *)self->_nodeConfiguration depthDataOutputDimensions];
  if (v72.var0 >= 1 && v72.var1 >= 1 && (v71 & 1) == 0)
  {
    v73 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v74 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v74 setWidth:[(BWStillImageNodeConfiguration *)self->_nodeConfiguration depthDataOutputDimensions]];
    [(BWVideoFormatRequirements *)v74 setHeight:[(BWStillImageNodeConfiguration *)self->_nodeConfiguration depthDataOutputDimensions]>> 32];
    [(BWVideoFormatRequirements *)v74 setSupportedPixelFormats:&unk_1F224A320];
    [(BWNodeOutputMediaConfiguration *)v73 setFormatRequirements:v74];
    [(BWNodeOutputMediaConfiguration *)v73 setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)v73 setProvidesPixelBufferPool:[(BWStillImageNodeConfiguration *)self->_nodeConfiguration deferredPhotoProcessorEnabled]^ 1];
    [(BWNodeOutputMediaConfiguration *)v73 setOwningNodeRetainedBufferCount:[(BWNodeOutput *)self->super._output owningNodeRetainedBufferCount]];
    [(BWNodeOutput *)self->super._output setMediaConfiguration:v73 forAttachedMediaKey:@"Depth"];
  }

  if ([(BWStillImageNodeConfiguration *)self->_nodeConfiguration depthDataType]== 9)
  {
    v75 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v76 = +[BWVideoFormatRequirements formatRequirements];
    [v76 setWidth:{-[BWVideoFormatRequirements width](v122, "width")}];
    [v76 setHeight:{-[BWVideoFormatRequirements height](v122, "height")}];
    [v76 setSupportedPixelFormats:&unk_1F224A338];
    [(BWNodeOutputMediaConfiguration *)v75 setFormatRequirements:v76];
    [(BWNodeOutputMediaConfiguration *)v75 setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)v75 setProvidesPixelBufferPool:0];
    [(BWNodeOutput *)self->super._output setMediaConfiguration:v75 forAttachedMediaKey:0x1F21AAB10];
    v77 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters maxFocusPixelHorizontalPixelBufferDimensions];
    v78 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v79 = +[BWVideoFormatRequirements formatRequirements];
    v80 = v77;
    [v79 setWidth:v77];
    v77 >>= 32;
    [v79 setHeight:v77];
    [v79 setSupportedPixelFormats:&unk_1F224A350];
    [(BWNodeOutputMediaConfiguration *)v78 setFormatRequirements:v79];
    [(BWNodeOutputMediaConfiguration *)v78 setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)v78 setProvidesPixelBufferPool:0];
    [(BWNodeOutput *)self->super._output setMediaConfiguration:v78 forAttachedMediaKey:0x1F21AAB70];
    v81 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v82 = +[BWVideoFormatRequirements formatRequirements];
    [v82 setWidth:v80];
    [v82 setHeight:v77];
    [v82 setSupportedPixelFormats:&unk_1F224A368];
    [(BWNodeOutputMediaConfiguration *)v81 setFormatRequirements:v82];
    [(BWNodeOutputMediaConfiguration *)v81 setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)v81 setProvidesPixelBufferPool:0];
    [(BWNodeOutput *)self->super._output setMediaConfiguration:v81 forAttachedMediaKey:0x1F21AAB90];
  }

  if (v120)
  {
    v83 = BWAspectRatioValueFromAspectRatio(v121);
    if (v83 >= 1.0 || v83 == 0.0)
    {
      v85 = 1;
    }

    else
    {
      v85 = 4;
    }

    [MEMORY[0x1E6991718] intermediateStyleRendererThumbnailSizeForUseCase:v85];
    v87 = v86;
    v89 = v88;
    v90 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v91 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v91 setWidth:v87];
    [(BWVideoFormatRequirements *)v91 setHeight:v89];
    [(BWVideoFormatRequirements *)v91 setSupportedPixelFormats:&unk_1F224A380];
    [(BWNodeOutputMediaConfiguration *)v90 setFormatRequirements:v91];
    [(BWNodeOutputMediaConfiguration *)v90 setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)v90 setProvidesPixelBufferPool:0];
    [(BWNodeOutput *)self->super._output setMediaConfiguration:v90 forAttachedMediaKey:0x1F21AAF70];
    if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration unstyledBufferEmitted])
    {
      v92 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      [(BWNodeOutputMediaConfiguration *)v92 setFormatRequirements:v122];
      [(BWNodeOutputMediaConfiguration *)v92 setPassthroughMode:0];
      [(BWNodeOutputMediaConfiguration *)v92 setProvidesPixelBufferPool:0];
      [(BWNodeOutput *)self->super._output setMediaConfiguration:v92 forAttachedMediaKey:0x1F21AAF90];
    }

    if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration smartStyleReversibilityEnabled])
    {
      [MEMORY[0x1E6991718] intermediateStyleRendererThumbnailSizeForUseCase:v85];
      v94 = v93;
      v96 = v95;
      v97 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      v98 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v98 setWidth:v94];
      [(BWVideoFormatRequirements *)v98 setHeight:v96];
      [(BWVideoFormatRequirements *)v98 setSupportedPixelFormats:&unk_1F224A398];
      [(BWNodeOutputMediaConfiguration *)v97 setFormatRequirements:v98];
      [(BWNodeOutputMediaConfiguration *)v97 setPassthroughMode:0];
      [(BWNodeOutputMediaConfiguration *)v97 setProvidesPixelBufferPool:0];
      [(BWNodeOutput *)self->super._output setMediaConfiguration:v97 forAttachedMediaKey:0x1F21AAFB0];
      v99 = [BWSmartStyleRenderingProcessorController pixelBufferAttributesWithCapacityForLearntCoefficients:[(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration smartStyleRenderingVersion] aspectRatio:v121];
      v100 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      v101 = objc_alloc_init(BWVideoFormatRequirements);
      v102 = *MEMORY[0x1E6966208];
      -[BWVideoFormatRequirements setWidth:](v101, "setWidth:", [objc_msgSend(v99 objectForKeyedSubscript:{*MEMORY[0x1E6966208]), "intValue"}]);
      v103 = *MEMORY[0x1E69660B8];
      -[BWVideoFormatRequirements setHeight:](v101, "setHeight:", [objc_msgSend(v99 objectForKeyedSubscript:{*MEMORY[0x1E69660B8]), "intValue"}]);
      v104 = *MEMORY[0x1E6966130];
      v132 = [v99 objectForKeyedSubscript:*MEMORY[0x1E6966130]];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v101, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v132 count:1]);
      [(BWNodeOutputMediaConfiguration *)v100 setFormatRequirements:v101];
      [(BWNodeOutputMediaConfiguration *)v100 setPassthroughMode:0];
      [(BWNodeOutputMediaConfiguration *)v100 setProvidesPixelBufferPool:0];
      [(BWNodeOutput *)self->super._output setMediaConfiguration:v100 forAttachedMediaKey:0x1F21AAFF0];
      v105 = [BWSmartStyleRenderingProcessorController pixelBufferAttributesForSmallLightMap:[(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration smartStyleRenderingVersion] aspectRatio:v121];
      v106 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      v107 = objc_alloc_init(BWVideoFormatRequirements);
      -[BWVideoFormatRequirements setWidth:](v107, "setWidth:", [objc_msgSend(v105 objectForKeyedSubscript:{v102), "intValue"}]);
      -[BWVideoFormatRequirements setHeight:](v107, "setHeight:", [objc_msgSend(v105 objectForKeyedSubscript:{v103), "intValue"}]);
      v131 = [v105 objectForKeyedSubscript:v104];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v107, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v131 count:1]);
      [(BWNodeOutputMediaConfiguration *)v106 setFormatRequirements:v107];
      [(BWNodeOutputMediaConfiguration *)v106 setPassthroughMode:0];
      [(BWNodeOutputMediaConfiguration *)v106 setProvidesPixelBufferPool:0];
      [(BWNodeOutput *)self->super._output setMediaConfiguration:v106 forAttachedMediaKey:0x1F21AB010];
      v108 = objc_alloc_init(BWNodeOutputMediaConfiguration);
      v109 = objc_alloc_init(BWVideoFormatRequirements);
      -[BWVideoFormatRequirements setWidth:](v109, "setWidth:", [objc_msgSend(v105 objectForKeyedSubscript:{v102), "intValue"}]);
      -[BWVideoFormatRequirements setHeight:](v109, "setHeight:", [objc_msgSend(v105 objectForKeyedSubscript:{v103), "intValue"}]);
      v130 = [v105 objectForKeyedSubscript:v104];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v109, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1]);
      [(BWNodeOutputMediaConfiguration *)v108 setFormatRequirements:v109];
      [(BWNodeOutputMediaConfiguration *)v108 setPassthroughMode:0];
      [(BWNodeOutputMediaConfiguration *)v108 setProvidesPixelBufferPool:0];
      [(BWNodeOutput *)self->super._output setMediaConfiguration:v108 forAttachedMediaKey:0x1F21AB030];
    }
  }
}

uint64_t __49__BWPhotonicEngineNode_didSelectFormat_forInput___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = BWAspectRatioValueFromAspectRatio(*(a1 + 40));

  return [v1 prepareForReconfigurationWithInputAspectRatio:v2];
}

- (void)didSelectFormat:(id)a3 forOutput:(id)a4
{
  [-[BWPhotonicEngineNodeConfiguration nrfProcessorControllerConfiguration](self->_nodeConfiguration nrfProcessorControllerConfiguration];
  if ([-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](self->_nodeConfiguration "deepZoomProcessorControllerConfiguration")] != 3)
  {
    [-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](self->_nodeConfiguration "deepZoomProcessorControllerConfiguration")];
  }

  v6 = [a3 dimensions];
  v7 = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](self->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
  if (v6 > v7 || SHIDWORD(v6) > SHIDWORD(v7))
  {
    LODWORD(v9) = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](self->_nodeConfiguration "deepFusionProcessorControllerConfiguration")];
    v10 = [a3 dimensions];
    if (v9 <= v10)
    {
      v9 = v10;
    }

    else
    {
      v9 = v9;
    }

    v11 = [-[BWPhotonicEngineNodeConfiguration deepFusionProcessorControllerConfiguration](self->_nodeConfiguration "deepFusionProcessorControllerConfiguration")] >> 32;
    v12 = [a3 dimensions];
    if (v11 <= SHIDWORD(v12))
    {
      v13 = HIDWORD(v12);
    }

    else
    {
      v13 = v11;
    }

    v14 = v9 | (v13 << 32);
    v15 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration deepFusionProcessorControllerConfiguration];

    [v15 setMaxOutputDimensions:v14];
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  if (dword_1EB58E340)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6.receiver = self;
  v6.super_class = BWPhotonicEngineNode;
  [(BWNode *)&v6 prepareForCurrentConfigurationToBecomeLive];
  v4 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__BWPhotonicEngineNode_prepareForCurrentConfigurationToBecomeLive__block_invoke;
  v5[3] = &unk_1E798F870;
  v5[4] = self;
  ubn_dispatch_sync(v4, v5);
}

void __66__BWPhotonicEngineNode_prepareForCurrentConfigurationToBecomeLive__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 208) hasSuccessfullySetupProcessorControllersAndMemoryResources];
  v3 = *(a1 + 32);
  if (v2)
  {

    [(BWPhotonicEngineNode *)v3 _liveReconfigureResourceCoordinatorIfNeeded];
  }

  else
  {

    [(BWPhotonicEngineNode *)v3 _setupResourceCoordinator];
  }
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  if (dword_1EB58E340)
  {
    v26 = 0;
    v25 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(BWNode *)self inputs:a3];
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (self->_pointCloudInput == a5 && ![*(*(&v21 + 1) + 8 * i) liveFormat])
        {
          v14 = 0;
          goto LABEL_14;
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_14:
  v15 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator emitQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __80__BWPhotonicEngineNode_configurationWithID_updatedFormat_didBecomeLiveForInput___block_invoke;
  v18[3] = &unk_1E7991948;
  v19 = v14;
  v18[4] = self;
  v18[5] = a3;
  ubn_dispatch_async(v15, v18);
}

uint64_t __80__BWPhotonicEngineNode_configurationWithID_updatedFormat_didBecomeLiveForInput___block_invoke(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    v9 = v1;
    v10 = v2;
    v3 = result;
    result = [*(*(result + 32) + 16) liveFormat];
    if (!result)
    {
      if (dword_1EB58E340)
      {
        v8 = 0;
        v7 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return [*(*(v3 + 32) + 16) makeConfiguredFormatLive];
    }
  }

  return result;
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  if (dword_1EB58E340)
  {
    v23 = 0;
    v22 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(BWNode *)self input:self->super._input hasReachedState:0, v16, v17])
  {
    sensorRawInput = self->_sensorRawInput;
    if ((!sensorRawInput || [(BWNode *)self input:sensorRawInput hasReachedState:0]) && self->_pointCloudInput != a4 && !self->_resourcesReleased)
    {
      if (!a3)
      {

        self->_device = 0;
      }

      if ([(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator deferredProcessorControllerQueue])
      {
        ubn_dispatch_sync([(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator deferredProcessorControllerQueue], &__block_literal_global_137);
      }

      v9 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __66__BWPhotonicEngineNode_didReachEndOfDataForConfigurationID_input___block_invoke_2;
      v21[3] = &unk_1E798F870;
      v21[4] = self;
      ubn_dispatch_sync(v9, v21);
      v10 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __66__BWPhotonicEngineNode_didReachEndOfDataForConfigurationID_input___block_invoke_5;
      v20[3] = &unk_1E798F870;
      v20[4] = self;
      ubn_dispatch_sync(v10, v20);
    }
  }

  if ([(BWNode *)self allInputsHaveReachedState:0])
  {
    if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration processingAspectRatio])
    {
      v11 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration processingAspectRatio]== 6;
    }

    else
    {
      v11 = 1;
    }

    v12 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration inferenceControllerConfiguration];
    if (a3 && v12 && !v11)
    {
      v13 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator waitAndSafelyGetProcessorControllerForType:3];
      v14 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator inferenceControllerQueue];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __66__BWPhotonicEngineNode_didReachEndOfDataForConfigurationID_input___block_invoke_6;
      v19[3] = &unk_1E798F870;
      v19[4] = v13;
      ubn_dispatch_sync(v14, v19);
    }

    else if (!a3)
    {
      [(BWPhotonicEngineNode *)self _releaseResources];
    }

    v15 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator emitQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __66__BWPhotonicEngineNode_didReachEndOfDataForConfigurationID_input___block_invoke_7;
    v18[3] = &unk_1E798F898;
    v18[4] = self;
    v18[5] = a3;
    ubn_dispatch_async(v15, v18);
  }
}

void __66__BWPhotonicEngineNode_didReachEndOfDataForConfigurationID_input___block_invoke_2(uint64_t a1)
{
  if ([*(*(a1 + 32) + 208) inferenceControllerQueue])
  {
    ubn_dispatch_sync([*(*(a1 + 32) + 208) inferenceControllerQueue], &__block_literal_global_112);
  }

  if ([*(*(a1 + 32) + 208) stereoDisparityProcessorControllerQueue])
  {
    v2 = [*(*(a1 + 32) + 208) stereoDisparityProcessorControllerQueue];

    ubn_dispatch_sync(v2, &__block_literal_global_114_0);
  }
}

uint64_t __66__BWPhotonicEngineNode_didReachEndOfDataForConfigurationID_input___block_invoke_7(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) liveFormat];
  if (result)
  {
    if (dword_1EB58E340)
    {
      v7 = 0;
      v6 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return [*(*(a1 + 32) + 16) markEndOfLiveOutputForConfigurationID:{*(a1 + 40), v4, v5}];
  }

  return result;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  if (self->_resourcesReleased)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v14 = 0;
    v13 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = 0;
    v10 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v10, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNode.m", 1254, @"LastShownDate:BWPhotonicEngineNode.m:1254", @"LastShownBuild:BWPhotonicEngineNode.m:1254", 0);
    free(v10);
LABEL_9:
    [BWPhotonicEngineNode renderSampleBuffer:forInput:];
    return;
  }

  if (self->_pointCloudInput != a4)
  {
    v5 = [[BWPhotonicEngineNodeSampleBufferAndInput alloc] initWithSampleBuffer:a3 nodeInput:a4];
    if (v5)
    {
      v6 = v5;
      [(BWPhotonicEngineNodeSampleBufferAndInputQueue *)self->_sampleBufferAndInputQueue enqueue:v5];

      v7 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __52__BWPhotonicEngineNode_renderSampleBuffer_forInput___block_invoke;
      v11[3] = &unk_1E798F870;
      v11[4] = self;
      ubn_dispatch_async(v7, v11);
      return;
    }

    goto LABEL_9;
  }

  [BWPhotonicEngineNode _handlePointCloudSampleBuffer:];
}

uint64_t __50__BWPhotonicEngineNode__handleSampleBuffer_input___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) photoIdentifier];

  return [v1 setContainer:v2 photoIdentifier:v3];
}

- (void)handleNodeError:(id)a3 forInput:(id)a4
{
  [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue];
  if (!_FigIsNotCurrentDispatchQueue())
  {
    [BWPhotonicEngineNode handleNodeError:forInput:];
  }

  if (self->_pointCloudInput != a4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 1;
    if (self->_resourcesReleased || (v7 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue], v10[0] = MEMORY[0x1E69E9820], v10[1] = 3221225472, v10[2] = __49__BWPhotonicEngineNode_handleNodeError_forInput___block_invoke, v10[3] = &unk_1E79906C0, v10[4] = a3, v10[5] = self, v10[6] = &v11, ubn_dispatch_sync(v7, v10), (v12[3] & 1) != 0))
    {
      v8 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator emitQueue];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __49__BWPhotonicEngineNode_handleNodeError_forInput___block_invoke_2;
      v9[3] = &unk_1E798F898;
      v9[4] = self;
      v9[5] = a3;
      ubn_dispatch_async(v8, v9);
    }

    _Block_object_dispose(&v11, 8);
  }
}

void __49__BWPhotonicEngineNode_handleNodeError_forInput___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) errorCode];
  if (v2 == -16806)
  {
    *(*(*(a1 + 48) + 8) + 24) = [objc_msgSend(objc_msgSend(*(a1 + 32) "stillImageSettings")] ^ 1;
    v23 = *(a1 + 40);
    if (*(v23 + 272) == 1)
    {
      [(BWPhotonicEngineNode *)v23 _resetProcessingState:v3];
    }
  }

  else if (v2 == -16800 || v2 == -16802)
  {
    v11 = [*(*(a1 + 40) + 520) count];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v12 = *(*(a1 + 40) + 520);
    v13 = [v12 countByEnumeratingWithState:&v45 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v46;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v46 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [objc_msgSend(*(*(a1 + 40) + 520) objectForKeyedSubscript:{*(*(&v45 + 1) + 8 * i)), "setSkipProcessing:", 1}];
        }

        v14 = [v12 countByEnumeratingWithState:&v45 objects:v44 count:16];
      }

      while (v14);
    }

    v17 = [*(*(a1 + 40) + 528) count];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v18 = *(*(a1 + 40) + 528);
    v19 = [v18 countByEnumeratingWithState:&v40 objects:&v24 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v41;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [objc_msgSend(*(*(a1 + 40) + 528) objectForKeyedSubscript:{*(*(&v40 + 1) + 8 * j)), "setSkipProcessing:", 1}];
        }

        v20 = [v18 countByEnumeratingWithState:&v40 objects:&v24 count:16];
      }

      while (v20);
    }

    *(*(*(a1 + 48) + 8) + 24) = [objc_msgSend(*(*(a1 + 40) + 208) controllerForType:{6), "finishProcessingCurrentInputNow"}] ^ 1;
    if (v11 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = [objc_msgSend(*(*(a1 + 40) + 208) controllerForType:{9), "finishProcessingCurrentInputNow"}] ^ 1;
    }

    if (v17 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = [objc_msgSend(*(*(a1 + 40) + 208) controllerForType:{13), "finishProcessingCurrentInputNow"}] ^ 1;
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [(BWPhotonicEngineNode *)*(a1 + 40) _resetProcessingState:v3];
  }
}

- (void)handleStillImagePrewarmWithSettings:(id)a3 resourceConfig:(id)a4 forInput:(id)a5
{
  if (self->_resourcesReleased)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v11 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v11, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNode.m", 1824, @"LastShownDate:BWPhotonicEngineNode.m:1824", @"LastShownBuild:BWPhotonicEngineNode.m:1824", 0);
    free(v11);
  }

  else
  {
    if ([(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator stereoDisparityProcessorControllerQueue:a3])
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      v7 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __84__BWPhotonicEngineNode_handleStillImagePrewarmWithSettings_resourceConfig_forInput___block_invoke;
      v13[3] = &unk_1E798FAF8;
      v13[4] = self;
      v13[5] = &v14;
      ubn_dispatch_sync(v7, v13);
      if (*(v15 + 24) == 1)
      {
        ubn_dispatch_sync([(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator stereoDisparityProcessorControllerQueue], &__block_literal_global_266);
      }

      _Block_object_dispose(&v14, 8);
    }

    if ([(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator inferenceControllerGroup])
    {
      dispatch_group_wait([(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator inferenceControllerGroup], 0xFFFFFFFFFFFFFFFFLL);
      ubn_dispatch_sync([(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue], &__block_literal_global_268_0);
    }

    v8 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __84__BWPhotonicEngineNode_handleStillImagePrewarmWithSettings_resourceConfig_forInput___block_invoke_4;
    v12[3] = &unk_1E798F898;
    v12[4] = self;
    v12[5] = a3;
    ubn_dispatch_sync(v8, v12);
  }
}

uint64_t __84__BWPhotonicEngineNode_handleStillImagePrewarmWithSettings_resourceConfig_forInput___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 200) "captureSettings")];
  *(*(*(a1 + 40) + 8) + 24) = (result & 0x800) != 0;
  return result;
}

void __84__BWPhotonicEngineNode_handleStillImagePrewarmWithSettings_resourceConfig_forInput___block_invoke_4(uint64_t a1)
{
  if (([*(*(a1 + 32) + 176) isEqualToString:{objc_msgSend(objc_msgSend(*(a1 + 40), "requestedSettings"), "captureRequestIdentifier")}] & 1) == 0)
  {
    v2 = [objc_msgSend(*(a1 + 40) "requestedSettings")];
    if (v2)
    {
      v3 = *(*(a1 + 32) + 192);
      if (v3)
      {
        if (([v3 isEqualToString:{objc_msgSend(objc_msgSend(*(a1 + 40), "requestedSettings"), "captureRequestIdentifier")}] & 1) == 0)
        {
          FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
          v53 = 0;
          v52 = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v17 = [*(a1 + 40) settingsID];
          v18 = *(*(a1 + 32) + 184);
          *v41 = 134349312;
          *&v41[4] = v17;
          *&v41[12] = 2050;
          *&v41[14] = v18;
          v19 = _os_log_send_and_compose_impl();
          FigCapturePleaseFileRadar(FrameworkRadarComponent, v19, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNode.m", 1875, @"LastShownDate:BWPhotonicEngineNode.m:1875", @"LastShownBuild:BWPhotonicEngineNode.m:1875", 0);
          free(v19);
          [(BWPhotonicEngineNode *)*(a1 + 32) _resetProcessingState:v20];
        }
      }
    }

    v4 = *(a1 + 32);
    if (*(v4 + 192) && v2 & 1 | ((*(v4 + 272) & 1) == 0))
    {
      v5 = 0;
    }

    else
    {
      if (([objc_msgSend(*(a1 + 40) "captureSettings")] & 0x200) != 0)
      {
        os_unfair_lock_lock((*(a1 + 32) + 504));
        *(*(a1 + 32) + 508) = 0;
        os_unfair_lock_unlock((*(a1 + 32) + 504));
      }

      if (v2)
      {
        v7 = [(BWPhotonicEngineNode *)*(a1 + 32) _setupProcessingStateIfNeededWithBeginMomentSettings:?];
      }

      else
      {
        [BWPhotonicEngineNode _setupProcessingStateWithSettings:];
      }

      v5 = v7;
      if (v7 == -16808)
      {
        [(BWPhotonicEngineNode *)*(a1 + 32) _resetProcessingState:v8];
        v5 = -16808;
      }
    }

    if ((v2 & 1) == 0)
    {
      v6 = [*(*(a1 + 32) + 208) emitQueue];
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __84__BWPhotonicEngineNode_handleStillImagePrewarmWithSettings_resourceConfig_forInput___block_invoke_275;
      v34 = &unk_1E7997358;
      LODWORD(v36) = v5;
      v35 = *(a1 + 32);
      ubn_dispatch_async(v6, &v31);
    }
  }
}

void __84__BWPhotonicEngineNode_handleStillImagePrewarmWithSettings_resourceConfig_forInput___block_invoke_275(uint64_t a1)
{
  if (*(a1 + 48) == -16808)
  {
    v4 = [BWNodeError newError:4294950488 sourceNode:*(a1 + 32) stillImageSettings:*(a1 + 40) metadata:0];
    [*(*(a1 + 32) + 16) emitNodeError:v4];
  }

  else
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 16);

    [v3 emitStillImagePrewarmMessageWithSettings:v2 resourceConfig:0];
  }
}

- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5 attachedMediaKey:(id)a6 pixelFormat:(unsigned int)a7 dimensions:(id)a8
{
  v9 = *&a7;
  v10 = a6;
  if (dword_1EB58E340)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = a6;
  }

  if (a5 == 28)
  {
    v16 = [BWOnDemandPixelBufferAllocator onDemandAllocatorWithDimensions:a8 pixelFormat:v9 name:BWStillImageBufferTypeToShortString(28) memoryPool:[(BWNodeOutput *)self->super._output memoryPool]];
  }

  else
  {
    v16 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator pixelBufferProviderForProcessorController:a3 processorInput:a4 type:a5 dimensions:a8 pixelFormat:v9 attachedMediaKey:v10];
  }

  return [(BWPhotonicEngineNode *)self _newOutputPixelBufferForProcessorController:a3 processorInput:a4 type:a5 pixelBufferProvider:v16];
}

- ($2825F4736939C4A6D3AD43837233062D)processorController:(id)a3 outputPixelBufferDimensionsForProcessorInput:(id)a4 type:(unint64_t)a5 attachedMediaKey:(id)a6 pixelFormat:(unsigned int)a7 dimensions:(id)a8
{
  v8 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator pixelBufferProviderForProcessorController:a3 processorInput:a4 type:a5 dimensions:a8 pixelFormat:*&a7 attachedMediaKey:a6];

  return [v8 dimensions];
}

- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7
{
  v7 = *&a7;
  if (!a4 && !a7)
  {
    v121 = 0;
    v120 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    sampleBufferOut[0].value = 0xFFFFCE1404020100;
    v7 = 4294954516;
    v12 = _os_log_send_and_compose_impl();
    v81 = 0;
    FigCapturePleaseFileRadar(7, v12, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNode.m", 2106, @"LastShownDate:BWPhotonicEngineNode.m:2106", @"LastShownBuild:BWPhotonicEngineNode.m:2106", 0);
    free(v12);
  }

  v92 = v7;
  BWPixelBufferDimensionsFromSampleBuffer(a4);
  v88 = BWStillImageCaptureFrameFlagsForSampleBuffer(a4);
  if (a4)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a4);
    CVPixelBufferGetPixelFormatType(ImageBuffer);
  }

  v93 = a6;
  v94 = self;
  if (dword_1EB58E340)
  {
    v121 = 0;
    v120 = OS_LOG_TYPE_DEFAULT;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (([objc_msgSend(objc_msgSend(a6 settings] & 1) == 0)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v121 = 0;
    v120 = OS_LOG_TYPE_DEFAULT;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    currentCaptureRequestIdentifier = self->_currentCaptureRequestIdentifier;
    LODWORD(sampleBufferOut[0].value) = 138412546;
    *(&sampleBufferOut[0].value + 4) = currentCaptureRequestIdentifier;
    LOWORD(sampleBufferOut[0].flags) = 2112;
    *(&sampleBufferOut[0].flags + 2) = [objc_msgSend(a6 "settings")];
    v17 = _os_log_send_and_compose_impl();
    v82 = 0;
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v17, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNode.m", 2116, @"LastShownDate:BWPhotonicEngineNode.m:2116", @"LastShownBuild:BWPhotonicEngineNode.m:2116", 0);
    free(v17);
  }

  if (!v7 && -[BWStillImageNodeConfiguration deferredPhotoProcessorEnabled](self->_nodeConfiguration, "deferredPhotoProcessorEnabled") && ([a3 type] == 2 || objc_msgSend(a3, "type") == 6))
  {
    BWPhotonicEngineUtilitiesSetDeferredPhotoProcessedImageFlags(a4);
  }

  v18 = [a3 type];
  if (v18 > 7)
  {
    if (v18 == 8)
    {
      [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator stereoDisparityProcessorControllerQueue];
      if (!_FigIsCurrentDispatchQueue())
      {
        [BWPhotonicEngineNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:];
      }

      v20 = [objc_msgSend(a6 "captureSettings")];
      if (a5 == 20 && v20)
      {
        AttachedMedia = BWSampleBufferGetAttachedMedia(a4, @"Depth");
        v22 = AttachedMedia;
        if (AttachedMedia)
        {
          v23 = CMSampleBufferGetImageBuffer(AttachedMedia);
        }

        else
        {
          v23 = 0;
        }

        v30 = CMGetAttachment(v22, *off_1E798A3C8, 0);
        v31 = CMGetAttachment(a4, *off_1E798D2E8, 0);
        v87 = CMGetAttachment(a4, *off_1E798D2B8, 0);
        v84 = [a6 portType];
        v89 = [objc_msgSend(a6 "settings")];
        [objc_msgSend(a6 "settings")];
        if (v7)
        {
          v32 = 1;
        }

        else
        {
          v32 = v23 == 0;
        }

        v33 = !v32;
        v34 = v94;
        if (dword_1EB58E340)
        {
          v121 = 0;
          v120 = OS_LOG_TYPE_DEFAULT;
          v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v34 = v94;
        }

        if (v23)
        {
          CFRetain(v23);
        }

        if ((BWCIFilterArrayContainsPortraitFilters([objc_msgSend(v93 settings]) & 1) == 0)
        {
          BWSampleBufferRemoveAttachedMedia(a4, @"Depth");
        }

        v36 = [(BWPhotonicEngineNodeResourceCoordinator *)v34->_resourceCoordinator workerQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __100__BWPhotonicEngineNode_processorController_didFinishProcessingSampleBuffer_type_processorInput_err___block_invoke_325;
        block[3] = &unk_1E7997228;
        v104 = v33;
        block[4] = v84;
        block[5] = v34;
        block[6] = v31;
        block[7] = v87;
        block[9] = v23;
        block[8] = v30;
        block[10] = v89;
        dispatch_async(v36, block);
        a6 = v93;
      }
    }

    else if (v18 == 12)
    {
      if (([objc_msgSend(a6 "captureSettings")] == 12 || objc_msgSend(objc_msgSend(a6, "captureSettings"), "captureType") == 13) && (v88 & 0x10) != 0 && -[BWStillImageNodeConfiguration depthDataType](self->_nodeConfiguration, "depthDataType") == 9)
      {
        v26 = -[NSMutableDictionary objectForKeyedSubscript:](self->_deepFusionProcessorInputByPortType, "objectForKeyedSubscript:", [a6 portType]);
        v27 = [objc_msgSend(v26 "evZeroReferenceFrameAttachments")];
        if (v27)
        {
          v28 = v27;
          v29 = [objc_msgSend(v27 objectForKeyedSubscript:{0x1F2180F50), "mutableCopy"}];
          if (!v29)
          {
            v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          [v29 setObject:BWSampleBufferGetAttachedMedia(a4 forKeyedSubscript:{0x1F21AAB10), 0x1F21AAB10}];
          [v29 setObject:BWSampleBufferGetAttachedMedia(a4 forKeyedSubscript:{0x1F21AAB70), 0x1F21AAB70}];
          [v29 setObject:BWSampleBufferGetAttachedMedia(a4 forKeyedSubscript:{0x1F21AAB90), 0x1F21AAB90}];
          [v28 setObject:v29 forKeyedSubscript:0x1F2180F50];

          [v26 setEvZeroReferenceFrameAttachments:v28];
          CMSampleBufferGetPresentationTimeStamp(&v111, a4);
          sampleBufferOut[0] = v111;
          [v26 setEvZeroReferenceFramePTS:sampleBufferOut];
        }
      }

      [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue];
      if (!_FigIsCurrentDispatchQueue())
      {
        [BWPhotonicEngineNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:];
      }
    }

    else if (v18 == 16 && [(BWStillImageNodeConfiguration *)self->_nodeConfiguration deferredPhotoProcessorEnabled])
    {
      [a6 portType];
      [BWPhotonicEngineNode _attemptPiecemealEncodingOfAuxImagesForSmartStylesCaptureWithSampleBuffer:a4 portType:?];
    }
  }

  else
  {
    switch(v18)
    {
      case 2:
        [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue];
        if (_FigIsCurrentDispatchQueue())
        {
          if (v7)
          {
            break;
          }
        }

        else
        {
          [BWPhotonicEngineNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:];
          if (v7)
          {
            break;
          }
        }

        if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration deepFusionSupportEnabled]&& ![(BWStillImageNodeConfiguration *)self->_nodeConfiguration deferredPhotoProcessorEnabled]&& a5 != 15 && a5 != 36)
        {
          [BWPhotonicEngineNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:];
        }

        break;
      case 5:
        [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator deferredProcessorControllerQueue];
        if (_FigIsCurrentDispatchQueue())
        {
          if (v7)
          {
            break;
          }
        }

        else
        {
          [BWPhotonicEngineNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:];
          if (v7)
          {
            break;
          }
        }

        PortType = BWSampleBufferGetPortType(a4);
        v25 = [PortType isEqualToString:{objc_msgSend(objc_msgSend(a6, "captureSettings"), "masterPortType")}];
        if (([objc_msgSend(a6 "captureStreamSettings")] & 0x4000000000) != 0 && (objc_msgSend(objc_msgSend(a6, "captureSettings"), "learnedNRStereoPhotoFrameFlag") & v88) != 0)
        {
          sampleBufferOut[0].value = 0;
          if (v25)
          {
            BWCMSampleBufferCreateCopyIncludingMetadata(a4, sampleBufferOut);
            [CMGetAttachment(sampleBufferOut[0].value *off_1E798A3C8];
          }

          else
          {
            if (a4)
            {
              v37 = CFRetain(a4);
            }

            else
            {
              v37 = 0;
            }

            sampleBufferOut[0].value = v37;
          }

          stereoPhotoSensorRawFrameByPortType = v94->_stereoPhotoSensorRawFrameByPortType;
          if (!stereoPhotoSensorRawFrameByPortType)
          {
            stereoPhotoSensorRawFrameByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
            v94->_stereoPhotoSensorRawFrameByPortType = stereoPhotoSensorRawFrameByPortType;
          }

          [(NSMutableDictionary *)stereoPhotoSensorRawFrameByPortType setObject:sampleBufferOut[0].value forKeyedSubscript:PortType];
          if (sampleBufferOut[0].value)
          {
            CFRelease(sampleBufferOut[0].value);
          }
        }

        if (v25)
        {
          if (a4)
          {
            CFRetain(a4);
          }

          v56 = [(BWPhotonicEngineNodeResourceCoordinator *)v94->_resourceCoordinator workerQueue];
          v112[0] = MEMORY[0x1E69E9820];
          v112[1] = 3221225472;
          v112[2] = __100__BWPhotonicEngineNode_processorController_didFinishProcessingSampleBuffer_type_processorInput_err___block_invoke;
          v112[3] = &unk_1E7990178;
          v112[4] = v94;
          v112[5] = a4;
          ubn_dispatch_async(v56, v112);
        }

        break;
      case 6:
        [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue];
        if (!_FigIsCurrentDispatchQueue())
        {
          [BWPhotonicEngineNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:];
        }

        if ([objc_msgSend(a6 "captureSettings")] == 13 && objc_msgSend(objc_msgSend(a6, "captureSettings"), "deliverDeferredPhotoProxyImage") && (a5 == 53 || a5 == 51))
        {
          [(BWDeferredCaptureControllerInput *)self->_deferredCaptureControllerInput setLearnedFusionProxyGenerationUsedEVMinus:a5 == 51];
        }

        if (!v7 && a5 <= 0x35 && ((1 << a5) & 0x28000020000080) != 0)
        {
          v86 = [objc_msgSend(a6 "captureSettings")];
          if (-[BWPhotonicEngineNodeConfiguration deepZoomVersion](self->_nodeConfiguration) >= 1 && ([objc_msgSend(a6 "captureStreamSettings")] & 0x200000000) == 0)
          {
            v19 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration deepZoomMode];
            if (([objc_msgSend(a6 "captureStreamSettings")] & 0x4000000000) != 0)
            {
              v19 = 5;
            }

            else if ([objc_msgSend(a6 "captureSettings")] == 13 || !+[BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForSampleBuffer:type:sensorConfiguration:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:](BWDeepZoomProcessorControllerConfiguration, "doDeepZoomStandardOrLiteForSampleBuffer:type:sensorConfiguration:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:", a4, 1, objc_msgSend(-[BWPhotonicEngineNodeConfiguration sensorConfigurationsByPortType](self->_nodeConfiguration), "objectForKeyedSubscript:", objc_msgSend(a6, "portType")), 0, 0))
            {
              goto LABEL_87;
            }

            [(BWDeferredPipelineParameters *)[(BWDeferredCaptureControllerInput *)self->_deferredCaptureControllerInput pipelineParameters] setDeepZoomVersion:[(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration deepZoomVersion]];
            [(BWDeferredPipelineParameters *)[(BWDeferredCaptureControllerInput *)self->_deferredCaptureControllerInput pipelineParameters] setDeepZoomMode:v19];
          }

LABEL_87:
          if (([objc_msgSend(a6 "captureSettings")] & 0x8000000000) != 0)
          {
            v38 = CMGetAttachment(a4, *off_1E798A3C8, 0);
            v39 = [MEMORY[0x1E695DF90] dictionary];
            BWCopyWhiteBalanceMetadata(v38, v39);
            -[BWDeferredCaptureControllerInput addDictionary:tag:](self->_deferredCaptureControllerInput, "addDictionary:tag:", v39, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", BWDeferredIntermediateTagWhiteBalanceMetadataByPortTypePrefix, objc_msgSend(a6, "portType")]);
          }

          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v40 = [CMGetAttachment(a4 @"PhotoManifest"];
          v41 = [v40 countByEnumeratingWithState:&v107 objects:v106 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v108;
            do
            {
              for (i = 0; i != v42; ++i)
              {
                if (*v108 != v43)
                {
                  objc_enumerationMutation(v40);
                }

                v45 = *(*(&v107 + 1) + 8 * i);
                CMSampleBufferGetPresentationTimeStamp(&v105, a4);
                sampleBufferOut[0] = v105;
                [v45 setPresentationTimeStamp:sampleBufferOut];
                [v45 setTime:{objc_msgSend(MEMORY[0x1E695DF00], "now")}];
                [v45 setTimeZone:{objc_msgSend(MEMORY[0x1E695DFE8], "systemTimeZone")}];
                [(BWDeferredCaptureControllerInput *)v94->_deferredCaptureControllerInput addPhotoDescriptor:v45];
              }

              v42 = [v40 countByEnumeratingWithState:&v107 objects:v106 count:16];
            }

            while (v42);
          }

          a6 = v93;
          v46 = v94;
          if ([objc_msgSend(v93 "processingSettings")])
          {
            v47 = BWSampleBufferGetAttachedMedia(a4, 0x1F21AAE10);
            v48 = CMGetAttachment(v47, @"RawDNGDictionary", 0);
            v49 = [v93 settings];
            if (v48)
            {
              v50 = BWCreateDNGDictionaryWithUpdatedDimensionsIfNeeded(v48, [v49 deferredPhotoProxyWidth] | (objc_msgSend(v49, "deferredPhotoProxyHeight") << 32), objc_msgSend(v49, "deferredPhotoFinalWidth") | (objc_msgSend(v49, "deferredPhotoFinalHeight") << 32));
              if (v50)
              {
                v48 = v50;
              }

              a6 = v93;
              v46 = v94;
              -[BWDeferredCaptureControllerInput addDictionary:tag:](v94->_deferredCaptureControllerInput, "addDictionary:tag:", v48, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", BWDeferredIntermediateTagDNGDictionaryPrefix, objc_msgSend(v93, "portType")]);
            }

            else if (![v49 outputFormat])
            {
              [(BWDeferredCaptureControllerInput *)v94->_deferredCaptureControllerInput encounteredProcessingError:0];
              v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(a4, @"StillImageProcessingFlags", 0), "unsignedIntValue") ^ 0x1000}];
              CMSetAttachment(a4, @"StillImageProcessingFlags", v51, 1u);
            }
          }

          v52 = [(BWStillImageNodeConfiguration *)v46->_nodeConfiguration depthDataType];
          if ((v52 - 9) >= 2)
          {
            if (v52 != 3)
            {
              goto LABEL_107;
            }

            v53 = BWSampleBufferGetAttachedMedia(a4, @"Depth");
            if (!v53)
            {
              [(BWDeferredCaptureControllerInput *)v94->_deferredCaptureControllerInput depthDataGenerationFailed];
LABEL_107:
              if ((v86 & 0x4000000000) == 0)
              {
                break;
              }

              goto LABEL_108;
            }

            v74 = v53;
            CMSampleBufferGetImageBuffer(v53);
            CMGetAttachment(v74, *off_1E798A3C8, 0);
            [a6 portType];
            [BWPhotonicEngineNode _deferredCaptureAddBuffer:bufferType:captureFrameFlags:metadata:rawThumbnailsBuffer:rawThumbnailsMetadata:portType:];
            v75 = CMGetAttachment(v74, *off_1E798A328, 0);
            v76 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v75];
            [v76 setObject:CMGetAttachment(v74 forKeyedSubscript:{@"DepthPixelBufferType", 0), @"DepthPixelBufferType"}];
            if ([v75 count])
            {
              a6 = v93;
              -[BWDeferredCaptureControllerInput addDictionary:tag:](v94->_deferredCaptureControllerInput, "addDictionary:tag:", v76, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", BWDeferredIntermediateTagDepthData, objc_msgSend(v93, "portType")]);
            }

            -[BWDeferredCaptureControllerInput addDictionary:tag:](v94->_deferredCaptureControllerInput, "addDictionary:tag:", [objc_msgSend(-[BWPhotonicEngineNodeConfiguration sensorConfigurationsByPortType](v94->_nodeConfiguration) objectForKeyedSubscript:{*off_1E798A0E8), "cameraInfo"}], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@-%@", BWDeferredIntermediateTagCameraInfoByPortTypePrefix, *off_1E798A0E8));
            if ((BWCIFilterArrayContainsPortraitFilters([objc_msgSend(a6 "settings")]) & 1) == 0)
            {
              BWSampleBufferRemoveAttachedMedia(a4, @"Depth");
            }
          }

LABEL_108:
          v54 = [MEMORY[0x1E695DF90] dictionary];
          [v54 setObject:CMGetAttachment(a4 forKeyedSubscript:{@"OriginalCameraIntrinsicMatrix", 0), @"OriginalCameraIntrinsicMatrix"}];
          [v54 setObject:CMGetAttachment(a4 forKeyedSubscript:{@"OriginalCameraIntrinsicMatrixReferenceDimensions", 0), @"OriginalCameraIntrinsicMatrixReferenceDimensions"}];
          if ([v54 count])
          {
            a6 = v93;
            -[BWDeferredCaptureControllerInput addDictionary:tag:](v94->_deferredCaptureControllerInput, "addDictionary:tag:", v54, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", BWDeferredIntermediateTagSampleBufferOriginalCameraIntrinsicsPrefix, objc_msgSend(v93, "portType")]);
          }
        }

        break;
    }
  }

  v57 = [a6 outputSampleBufferRouterForBufferType:a5];
  if (![v57 outputSampleBufferRouter])
  {
    v77 = MEMORY[0x1E696AEC0];
    v78 = BWStillImageProcessorTypeToShortString([a3 type]);
    v73 = [v77 stringWithFormat:@"No output router for output sample buffer of %@ (buffer type: %@, err: %d)", v78, BWStillImageBufferTypeToShortString(a5), v92];
    goto LABEL_148;
  }

  v58 = objc_autoreleasePoolPush();
  v59 = [v57 outputSampleBufferRouter];
  (*(v59 + 16))(v59, a4, a5, a6, v92);
  objc_autoreleasePoolPop(v58);
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v60 = [v57 bypassedProcessorsTypes];
  v61 = [v60 countByEnumeratingWithState:&v99 objects:v98 count:16];
  v62 = v94;
  if (!v61)
  {
    return;
  }

  v63 = v61;
  v64 = *v100;
  do
  {
    for (j = 0; j != v63; ++j)
    {
      if (*v100 != v64)
      {
        objc_enumerationMutation(v60);
      }

      v66 = [*(*(&v99 + 1) + 8 * j) intValue];
      if (dword_1EB58E340)
      {
        v121 = 0;
        v120 = OS_LOG_TYPE_DEFAULT;
        v67 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v68 = v121;
        if (os_log_type_enabled(v67, v120))
        {
          v69 = v68;
        }

        else
        {
          v69 = v68 & 0xFFFFFFFE;
        }

        if (v69)
        {
          v70 = BWStillImageProcessorTypeToShortString(v66);
          v113 = 136315651;
          v114 = "[BWPhotonicEngineNode processorController:didFinishProcessingSampleBuffer:type:processorInput:err:]";
          v115 = 2114;
          v116 = v70;
          v117 = 2113;
          v118 = v93;
          LODWORD(v82) = 32;
          v80 = &v113;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v62 = v94;
      }

      if (v66 > 0x13)
      {
        goto LABEL_139;
      }

      if (v66 == 10)
      {
        v71 = [(BWPhotonicEngineNodeResourceCoordinator *)v62->_resourceCoordinator workerQueue];
        v96[0] = MEMORY[0x1E69E9820];
        v96[1] = 3221225472;
        v96[2] = __100__BWPhotonicEngineNode_processorController_didFinishProcessingSampleBuffer_type_processorInput_err___block_invoke_2;
        v96[3] = &unk_1E798F870;
        v96[4] = v62;
        v72 = v96;
        goto LABEL_143;
      }

      if (v66 != 16)
      {
        if (((1 << v66) & 0xEFB00) != 0)
        {
          goto LABEL_147;
        }

LABEL_139:
        if (v66 == 7)
        {
          v71 = [(BWPhotonicEngineNodeResourceCoordinator *)v62->_resourceCoordinator workerQueue];
          v97[0] = MEMORY[0x1E69E9820];
          v97[1] = 3221225472;
          v97[2] = __100__BWPhotonicEngineNode_processorController_didFinishProcessingSampleBuffer_type_processorInput_err___block_invoke_329;
          v97[3] = &unk_1E798F870;
          v97[4] = v62;
          v72 = v97;
          goto LABEL_143;
        }

        if ((v66 - 1) >= 6)
        {
          continue;
        }

LABEL_147:
        v73 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Processor bypassing support has not been implemented for %@", BWStillImageProcessorTypeToShortString(v66), v82, v83];
LABEL_148:
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v73 userInfo:0]);
      }

      v71 = [(BWPhotonicEngineNodeResourceCoordinator *)v62->_resourceCoordinator workerQueue];
      v95[0] = MEMORY[0x1E69E9820];
      v95[1] = 3221225472;
      v95[2] = __100__BWPhotonicEngineNode_processorController_didFinishProcessingSampleBuffer_type_processorInput_err___block_invoke_3;
      v95[3] = &unk_1E798F870;
      v95[4] = v62;
      v72 = v95;
LABEL_143:
      ubn_dispatch_async(v71, v72);
    }

    v63 = [v60 countByEnumeratingWithState:&v99 objects:v98 count:16];
  }

  while (v63);
}

void __100__BWPhotonicEngineNode_processorController_didFinishProcessingSampleBuffer_type_processorInput_err___block_invoke_325(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (![*(a1 + 32) isEqualToString:{objc_msgSend(*(*(a1 + 40) + 536), "portType")}])
    {
      goto LABEL_8;
    }

    v2 = *(a1 + 48);
    if (v2)
    {
      [*(*(a1 + 40) + 536) addDictionary:v2 tag:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@-%@", BWDeferredIntermediateTagStereoPhotoDepthMetadata, *(a1 + 32))}];
    }

    [*(*(a1 + 40) + 536) addDictionary:*(a1 + 56) tag:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@-%@", BWDeferredIntermediateTagDepthMetadata, *(a1 + 32))}];
    [*(*(a1 + 40) + 536) addBuffer:*(a1 + 72) bufferType:2001 captureFrameFlags:0 metadata:*(a1 + 64) rawThumbnailsBuffer:0 rawThumbnailsMetadata:0];
    if (dword_1EB58E340)
    {
LABEL_8:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    [*(*(a1 + 40) + 536) depthDataGenerationFailed];
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t __100__BWPhotonicEngineNode_processorController_didFinishProcessingSampleBuffer_type_processorInput_err___block_invoke_329(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 208) controllerForType:7];

  return [v1 cancelProcessing];
}

void *__100__BWPhotonicEngineNode_processorController_didFinishProcessingSampleBuffer_type_processorInput_err___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 208) waitAndSafelyGetProcessorControllerForType:10];
  if (result)
  {

    return [result cancelProcessing];
  }

  return result;
}

uint64_t __100__BWPhotonicEngineNode_processorController_didFinishProcessingSampleBuffer_type_processorInput_err___block_invoke_3(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 208) controllerForType:16];

  return [v1 cancelProcessing];
}

void __54__BWPhotonicEngineNode__emitSampleBuffer_description___block_invoke(uint64_t a1)
{
  v2 = CMGetAttachment(*(a1 + 48), @"StillSettings", 0);
  if (v2)
  {
    v3 = v2;
    if ([objc_msgSend(v2 "requestedSettings")])
    {
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      [v3 settingsID];
      v11 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v11, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNode.m", 2606, @"LastShownDate:BWPhotonicEngineNode.m:2606", @"LastShownBuild:BWPhotonicEngineNode.m:2606", 0);
      free(v11);
      v12 = [BWNodeError newError:4294954516 sourceNode:*(a1 + 40) stillImageSettings:v3 metadata:CMGetAttachment(*(a1 + 48), *off_1E798A3C8, 0)];
      [*(*(a1 + 40) + 16) emitNodeError:v12];
    }

    else
    {
      if (dword_1EB58E340)
      {
        v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [BWPhotonicEngineNode _releaseNodeResourcesIfNeededBeforeEmittingSampleBuffer:?];
      [*(*(a1 + 40) + 16) emitSampleBuffer:*(a1 + 48)];
    }
  }

  else
  {
    v6 = FigCaptureGetFrameworkRadarComponent();
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    BWStillImageSampleBufferToShortDisplayString(*(a1 + 48));
    v10 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v6, v10, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNode.m", 2603, @"LastShownDate:BWPhotonicEngineNode.m:2603", @"LastShownBuild:BWPhotonicEngineNode.m:2603", 0);
    free(v10);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }
}

void __75__BWPhotonicEngineNode__emitError_stillImageSettings_metadata_description___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) emitNodeError:*(a1 + 40)];
  v2 = *(a1 + 40);
}

- (void)processorController:(id)a3 willAddSampleBuffer:(opaqueCMSampleBuffer *)a4 processorInput:(id)a5
{
  if (a3 && a4 && a5)
  {
    v9 = CMGetAttachment(a4, *off_1E798A3C8, 0);
    v10 = [a3 type];
    if (v10 == 12)
    {
      if (-[BWPhotonicEngineNodeConfiguration deepZoomVersion](self->_nodeConfiguration) >= 1 && ([objc_msgSend(a5 "captureStreamSettings")] & 0x200000000) != 0)
      {
        v12 = *(MEMORY[0x1E695F050] + 16);
        v16.origin = *MEMORY[0x1E695F050];
        v16.size = v12;
        if (+[BWDeepZoomProcessorControllerConfiguration doDeepZoomTransferForSampleBuffer:sensorConfiguration:intermediateZoomSrcRectOut:](BWDeepZoomProcessorControllerConfiguration, "doDeepZoomTransferForSampleBuffer:sensorConfiguration:intermediateZoomSrcRectOut:", a4, [-[BWPhotonicEngineNodeConfiguration sensorConfigurationsByPortType](self->_nodeConfiguration) objectForKeyedSubscript:{objc_msgSend(a5, "portType")}], &v16))
        {
          if ([objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B588), "intValue"}] == 1 && !CGRectIsNull(v16))
          {
            [objc_msgSend(objc_msgSend(a5 "captureSettings")];
            if (v13 >= 1.4118)
            {
              [objc_msgSend(objc_msgSend(a5 "captureSettings")];
              if (v14 < 2.0)
              {
                if ([-[BWPhotonicEngineNodeConfiguration deepZoomProcessorControllerConfiguration](self->_nodeConfiguration "deepZoomProcessorControllerConfiguration")] != 4 && -[FigCaptureCameraParameters deepZoomTransferWithZoomedImageEnabledForPortType:sensorIDString:](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "deepZoomTransferWithZoomedImageEnabledForPortType:sensorIDString:", objc_msgSend(a5, "portType"), +[FigCaptureCameraParameters sensorIDStringFromMetadata:](FigCaptureCameraParameters, "sensorIDStringFromMetadata:", v9)))
                {
                  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Deep Zoom Transfer wrongly configured userInfo:{processing mode should be 'FuseHighResolutionWithZoomedImage'", 0}]);
                }

                FigCFDictionarySetCGRect();
              }
            }
          }
        }
      }
    }

    else if (v10 == 6)
    {
      if (-[BWPhotonicEngineNodeConfiguration deepZoomVersion](self->_nodeConfiguration) >= 1 && [objc_msgSend(a5 "captureStreamSettings")] == 12 && (objc_msgSend(objc_msgSend(a5, "captureStreamSettings"), "captureFlags") & 0x4200000000) == 0)
      {
        v11 = *(MEMORY[0x1E695F050] + 16);
        v16.origin = *MEMORY[0x1E695F050];
        v16.size = v11;
        v15.origin = v16.origin;
        v15.size = v11;
        if (+[BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForSampleBuffer:type:sensorConfiguration:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:](BWDeepZoomProcessorControllerConfiguration, "doDeepZoomStandardOrLiteForSampleBuffer:type:sensorConfiguration:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:", a4, 1, [-[BWPhotonicEngineNodeConfiguration sensorConfigurationsByPortType](self->_nodeConfiguration) objectForKeyedSubscript:{objc_msgSend(a5, "portType")}], &v16, &v15))
        {
          if (!CGRectIsNull(v16) && !CGRectIsNull(v15))
          {
            FigCFDictionarySetCGRect();
            FigCFDictionarySetCGRect();
          }
        }
      }

      if (-[BWPhotonicEngineNodeConfiguration processingAspectRatio](self->_nodeConfiguration) && -[BWPhotonicEngineNodeConfiguration processingAspectRatio](self->_nodeConfiguration) != 6 && ([objc_msgSend(a5 "captureSettings")] & 4) == 0)
      {
        BWPixelBufferDimensionsFromSampleBuffer(a4);
        [(BWVideoFormat *)[(BWNodeOutput *)self->super._output videoFormat] dimensions];
      }
    }
  }
}

- (void)processorController:(id)a3 didSelectNewReferenceFrameWithPTS:(id *)a4 transform:(id)a5 processorInput:(id)a6
{
  if ([a6 isMaster])
  {
    v10 = [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration referenceFrameSelectionDelegate];
    v11 = [a6 stillImageSettings];
    v12 = *&a4->var0;
    var3 = a4->var3;
    [v10 node:self didSelectNewReferenceFrameWithPTS:&v12 transform:a5 forSettings:v11];
  }
}

uint64_t __110__BWPhotonicEngineNode__handleQueuedSampleBufferForDisparityWithSettingsIfNeeded_resolvedFusionMode_portType___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40) != 1 && ([objc_msgSend(*(a1 + 32) "captureSettings")] & 0x1000) != 0)
  {
    v5 = 0;
    v4 = *(a1 + 40) == 2;
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  v6 = [a2 sampleBuffer];
  v7 = CMGetAttachment(v6, @"StillImageSettings", 0);
  v8 = BWStillImageCaptureFrameFlagsForSampleBuffer(v6);
  LODWORD(v6) = [BWSampleBufferGetPortType(v6) isEqualToString:{objc_msgSend(objc_msgSend(*(a1 + 32), "captureSettings"), "masterPortType")}];
  return [objc_msgSend(objc_msgSend(*(a1 + 32) "requestedSettings")] & ~v6 & (v5 & ((~v8 & 0x12) == 0) | (v4 && (v8 & 4) != 0));
}

- (void)processorController:(id)a3 didSelectFusionMode:(int)a4 processorInput:(id)a5
{
  v6 = *&a4;
  if ([a5 isMaster])
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_stillImageFusionModeByCaptureRequestIdentifier, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v6], self->_currentCaptureRequestIdentifier);
    -[BWPhotonicEngineNode _handleQueuedSampleBufferForDisparityWithSettingsIfNeeded:resolvedFusionMode:portType:](self, [a5 stillImageSettings], v6, objc_msgSend(a5, "portType"));
    [a5 stillImageSettings];
    [a5 portType];
    [BWPhotonicEngineNode _attemptDisparityReferenceFrameResolutionForSettings:? portType:?];
    [a5 stillImageSettings];
    [BWPhotonicEngineNode _deferredCaptureAddSecondaryStereoPhotoCaptureSampleBufferIfReadyForSettings:?];
    if ([a3 type] == 6)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = [(NSMutableDictionary *)self->_nrfProcessorInputsByPortType allValues];
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v15 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v16 + 1) + 8 * i);
            [objc_msgSend(v14 "firstObject")];
            -[BWPhotonicEngineNode _checkIfProcessingCompletedForNRFProcessorInput:](self, [v14 firstObject]);
          }

          v11 = [v9 countByEnumeratingWithState:&v16 objects:v15 count:16];
        }

        while (v11);
      }
    }
  }
}

- (void)processorControllerWillProcessInferences:(id)a3
{
  if ([a3 type] == 8 && -[BWPhotonicEngineNodeResourceCoordinator inferenceControllerGroup](self->_resourceCoordinator, "inferenceControllerGroup"))
  {
    v4 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator inferenceControllerGroup];

    dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (id)processorController:(id)a3 newInferencesForProcessorInput:(id)a4 inferenceInputBufferType:(unint64_t)a5
{
  [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator inferenceControllerQueue:a3];
  if (!_FigIsNotCurrentDispatchQueue())
  {
    [BWPhotonicEngineNode processorController:newInferencesForProcessorInput:inferenceInputBufferType:];
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = BWStillImageProcessorTypeToShortString([a3 type]);
  [v8 stringWithFormat:@"%@ processor controller getting inferences of type '%@'", v9, BWStillImageBufferTypeToShortString(a5)];
  v10 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator syncGetInferencesForInferenceInputBufferType:a5];

  return v10;
}

- (void)processorController:(id)a3 didDetermineReferenceFrame:(opaqueCMSampleBuffer *)a4 processorInput:(id)a5 err:(int)a6
{
  [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator deferredProcessorControllerQueue:a3];
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWPhotonicEngineNode processorController:didDetermineReferenceFrame:processorInput:err:];
  }

  AttachedMedia = BWSampleBufferGetAttachedMedia(a4, 0x1F217BF50);
  if (AttachedMedia)
  {
    v10 = AttachedMedia;
    if (BWPhotoEncoderSupportsPiecemealEnocding(self->_currentStillImageSettings))
    {
      -[BWPhotonicEngineNode _attemptPiecemealEncodingForGainMapSbuf:primarySbuf:portType:](self, v10, a4, [a5 portType]);
    }
  }

  memset(&v15, 0, sizeof(v15));
  CMSampleBufferGetPresentationTimeStamp(&v15, a4);
  v11 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], a4, 1u);
  v12 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__BWPhotonicEngineNode_processorController_didDetermineReferenceFrame_processorInput_err___block_invoke;
  v13[3] = &unk_1E79974B8;
  v13[4] = self;
  v13[5] = a5;
  v13[6] = v11;
  v14 = v15;
  ubn_dispatch_async(v12, v13);
}

void __90__BWPhotonicEngineNode_processorController_didDetermineReferenceFrame_processorInput_err___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 344) objectForKeyedSubscript:{objc_msgSend(*(a1 + 40), "portType")}];
  [v2 setEvZeroReferenceFrameAttachments:*(a1 + 48)];
  v3 = *(a1 + 56);
  v4 = *(a1 + 72);
  [v2 setEvZeroReferenceFramePTS:&v3];
}

- (void)processorController:(id)a3 didFinishProcessingInferenceBuffer:(__CVBuffer *)a4 metadata:(id)a5 inferenceAttachedMediaKey:(id)a6 processorInput:(id)a7 err:(int)a8
{
  [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator deferredProcessorControllerQueue];
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWPhotonicEngineNode processorController:didFinishProcessingInferenceBuffer:metadata:inferenceAttachedMediaKey:processorInput:err:];
  }

  if (dword_1EB58E340)
  {
    v16 = 0;
    v15 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator asyncSetInferenceBuffer:a4 metadata:a5 inferenceAttachedMediaKey:a6, v13, v14];
}

- (void)processorController:(id)a3 didFinishProcessingInference:(id)a4 inferenceAttachmentKey:(id)a5 processorInput:(id)a6 err:(int)a7
{
  [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator deferredProcessorControllerQueue];
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWPhotonicEngineNode processorController:didFinishProcessingInference:inferenceAttachmentKey:processorInput:err:];
  }

  if (dword_1EB58E340)
  {
    v14 = 0;
    v13 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator asyncSetInference:a4 inferenceAttachmentKey:a5, v11, v12];
}

- (void)processorController:(id)a3 didFinishProcessingInferenceAttachedMediaMetadata:(id)a4 processorInput:(id)a5
{
  [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator deferredProcessorControllerQueue];
  if (!_FigIsCurrentDispatchQueue())
  {
    [BWPhotonicEngineNode processorController:didFinishProcessingInferenceAttachedMediaMetadata:processorInput:];
  }

  [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator asyncSetInferenceAttachedMediaMetadata:a4];
  v8 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator inferenceControllerQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109__BWPhotonicEngineNode_processorController_didFinishProcessingInferenceAttachedMediaMetadata_processorInput___block_invoke;
  v9[3] = &unk_1E798FD58;
  v9[4] = a5;
  v9[5] = self;
  v9[6] = a4;
  ubn_dispatch_async(v8, v9);
}

void __109__BWPhotonicEngineNode_processorController_didFinishProcessingInferenceAttachedMediaMetadata_processorInput___block_invoke(uint64_t a1)
{
  if ([objc_msgSend(*(a1 + 32) "captureSettings")] == 12)
  {
    v2 = [*(*(a1 + 40) + 344) objectForKeyedSubscript:{objc_msgSend(*(a1 + 32), "portType")}];
    v3 = [*(*(a1 + 40) + 208) workerQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __109__BWPhotonicEngineNode_processorController_didFinishProcessingInferenceAttachedMediaMetadata_processorInput___block_invoke_2;
    v5[3] = &unk_1E798F898;
    v4 = *(a1 + 48);
    v5[4] = v2;
    v5[5] = v4;
    ubn_dispatch_async(v3, v5);
  }
}

uint64_t __109__BWPhotonicEngineNode_processorController_didFinishProcessingInferenceAttachedMediaMetadata_processorInput___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) allKeys];
  v3 = *(a1 + 32);

  return [v3 setProvidedInferenceAttachedMedia:v2];
}

- (void)processorController:(id)a3 didFinishProcessingBuffer:(__CVBuffer *)a4 metadata:(id)a5 type:(unint64_t)a6 captureFrameFlags:(unint64_t)a7 processorInput:(id)a8 err:(int)a9
{
  if (dword_1EB58E340)
  {
    v61 = 0;
    v60 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a9)
  {
    [BWPhotonicEngineNode processorController:didFinishProcessingBuffer:metadata:type:captureFrameFlags:processorInput:err:];
    return;
  }

  if (([objc_msgSend(objc_msgSend(a8 "settings")] & 1) == 0)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v61 = 0;
    v60 = OS_LOG_TYPE_DEFAULT;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v16 = v61;
    if (os_log_type_enabled(v15, v60))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (v17)
    {
      currentCaptureRequestIdentifier = self->_currentCaptureRequestIdentifier;
      v19 = [objc_msgSend(a8 "settings")];
      v53 = 136315650;
      v54 = "[BWPhotonicEngineNode processorController:didFinishProcessingBuffer:metadata:type:captureFrameFlags:processorInput:err:]";
      v55 = 2112;
      v56 = currentCaptureRequestIdentifier;
      v57 = 2112;
      v58 = v19;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v20 = self->_currentCaptureRequestIdentifier;
    v21 = [objc_msgSend(a8 "settings")];
    LODWORD(v59[0].value) = 138412546;
    *(&v59[0].value + 4) = v20;
    LOWORD(v59[0].flags) = 2112;
    *(&v59[0].flags + 2) = v21;
    v22 = _os_log_send_and_compose_impl();
    v47 = 0;
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v22, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNode.m", 3291, @"LastShownDate:BWPhotonicEngineNode.m:3291", @"LastShownBuild:BWPhotonicEngineNode.m:3291", 0);
    free(v22);
  }

  if (a6 != 19 && [objc_msgSend(a8 "captureSettings")] != 12 && objc_msgSend(objc_msgSend(a8, "captureSettings"), "captureType") != 13 && (objc_msgSend(objc_msgSend(a8, "captureSettings"), "captureFlags") & 0x80) == 0)
  {
    v42 = FigCaptureGetFrameworkRadarComponent();
    v61 = 0;
    v60 = OS_LOG_TYPE_DEFAULT;
    v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v44 = v61;
    if (os_log_type_enabled(v43, v60))
    {
      v45 = v44;
    }

    else
    {
      v45 = v44 & 0xFFFFFFFE;
    }

    if (v45)
    {
      v53 = 136315650;
      v54 = "[BWPhotonicEngineNode processorController:didFinishProcessingBuffer:metadata:type:captureFrameFlags:processorInput:err:]";
      v55 = 2112;
      v56 = @" Learned Fusion,";
      v57 = 2112;
      v58 = a8;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LODWORD(v59[0].value) = 138412546;
    *(&v59[0].value + 4) = @" Learned Fusion,";
    LOWORD(v59[0].flags) = 2112;
    *(&v59[0].flags + 2) = a8;
    v29 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v42, v29, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNode.m", 3306, @"LastShownDate:BWPhotonicEngineNode.m:3306", @"LastShownBuild:BWPhotonicEngineNode.m:3306", 0);
    goto LABEL_23;
  }

  v23 = [a3 type];
  if (v23 > 0x13)
  {
    return;
  }

  if (((1 << v23) & 0xFFF9E) != 0)
  {
    v61 = 0;
    v60 = OS_LOG_TYPE_DEFAULT;
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v25 = v61;
    if (os_log_type_enabled(v24, v60))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 0xFFFFFFFE;
    }

    if (v26)
    {
      v27 = BWStillImageProcessorTypeToShortString([a3 type]);
      v53 = 136315394;
      v54 = "[BWPhotonicEngineNode processorController:didFinishProcessingBuffer:metadata:type:captureFrameFlags:processorInput:err:]";
      v55 = 2112;
      v56 = v27;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v28 = BWStillImageProcessorTypeToShortString([a3 type]);
    LODWORD(v59[0].value) = 138412290;
    *(&v59[0].value + 4) = v28;
    v29 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(7, v29, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNode.m", 3441, @"LastShownDate:BWPhotonicEngineNode.m:3441", @"LastShownBuild:BWPhotonicEngineNode.m:3441", 0);
LABEL_23:
    free(v29);
    return;
  }

  if (v23 == 5)
  {
    [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator deferredProcessorControllerQueue];
    if (!_FigIsCurrentDispatchQueue())
    {
      [BWPhotonicEngineNode processorController:didFinishProcessingBuffer:metadata:type:captureFrameFlags:processorInput:err:];
    }

    if ([objc_msgSend(a8 "captureSettings")] != 12 && objc_msgSend(objc_msgSend(a8, "captureSettings"), "captureType") != 13)
    {
      v38 = FigCaptureGetFrameworkRadarComponent();
      v61 = 0;
      v60 = OS_LOG_TYPE_DEFAULT;
      v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v40 = v61;
      if (os_log_type_enabled(v39, v60))
      {
        v41 = v40;
      }

      else
      {
        v41 = v40 & 0xFFFFFFFE;
      }

      if (v41)
      {
        v53 = 136315394;
        v54 = "[BWPhotonicEngineNode processorController:didFinishProcessingBuffer:metadata:type:captureFrameFlags:processorInput:err:]";
        v55 = 2112;
        v56 = a8;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      LODWORD(v59[0].value) = 138412290;
      *(&v59[0].value + 4) = a8;
      v29 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v38, v29, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNode.m", 3417, @"LastShownDate:BWPhotonicEngineNode.m:3417", @"LastShownBuild:BWPhotonicEngineNode.m:3417", 0);
      goto LABEL_23;
    }

    if (a4)
    {
      CFRetain(a4);
    }

    v35 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __121__BWPhotonicEngineNode_processorController_didFinishProcessingBuffer_metadata_type_captureFrameFlags_processorInput_err___block_invoke;
    v51[3] = &unk_1E79974B8;
    v51[4] = self;
    v51[5] = a8;
    v51[6] = a5;
    v51[7] = a4;
    v51[8] = a6;
    v51[9] = a7;
    ubn_dispatch_async(v35, v51);
  }

  else if (v23 == 6)
  {
    [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue];
    if (!_FigIsCurrentDispatchQueue())
    {
      [BWPhotonicEngineNode processorController:didFinishProcessingBuffer:metadata:type:captureFrameFlags:processorInput:err:];
    }

    v30 = [a8 referenceFrame];
    v31 = [a8 errorRecoveryFrame];
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }

    if (a6 == 19 && ![a5 count])
    {
      if ([(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration isSmartStyleRenderingCapture:self->_currentStillImageSettings]&& v32)
      {
        v59[0].value = 0;
        if (BWSampleBufferCreateAttachedMediaFromPixelBuffer(v32, 0x1F217BF50, a4, &self->_gainMapFormatDescription, 0, 0, 1, v59))
        {
          [BWPhotonicEngineNode processorController:didFinishProcessingBuffer:metadata:type:captureFrameFlags:processorInput:err:];
        }

        else
        {
          -[BWPhotonicEngineNode _attemptPiecemealEncodingForGainMapSbuf:primarySbuf:portType:](self, v59[0].value, v32, [a8 portType]);
        }

        if (v59[0].value)
        {
          CFRelease(v59[0].value);
        }
      }
    }

    else if ([objc_msgSend(a8 "captureSettings")])
    {
      if (a6 == 8)
      {
        if (([objc_msgSend(a8 "captureSettings")] & 4) != 0)
        {
          v34 = &BWDeferredIntermediateTagSyntheticReferenceFrameMetadataByPortTypePrefix;
          v33 = a5;
        }

        else
        {
          v33 = CMGetAttachment(v30, *off_1E798A3C8, 0);
          v34 = &BWDeferredIntermediateTagReferenceFrameMetadataByPortTypePrefix;
        }

        -[BWDeferredCaptureControllerInput addDictionary:tag:](self->_deferredCaptureControllerInput, "addDictionary:tag:", v33, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", *v34, objc_msgSend(a8, "portType")]);
      }

      if (a4 && (a6 != 19 || ([objc_msgSend(a8 "captureStreamSettings")] & 0x100000000) == 0))
      {
        [a8 portType];
        [BWPhotonicEngineNode _deferredCaptureAddBuffer:bufferType:captureFrameFlags:metadata:rawThumbnailsBuffer:rawThumbnailsMetadata:portType:];
      }
    }

    else if ([objc_msgSend(a8 "captureSettings")] == 12 || objc_msgSend(objc_msgSend(a8, "captureSettings"), "captureType") == 13)
    {
      v36 = -[NSMutableDictionary objectForKeyedSubscript:](self->_deepFusionProcessorInputByPortType, "objectForKeyedSubscript:", [a8 portType]);
      if (a6 == 8)
      {
        v37 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], v30, 1u);
        [v36 setEvZeroReferenceFrameAttachments:v37];
        CMSampleBufferGetPresentationTimeStamp(&v52, v30);
        v59[0] = v52;
        [v36 setEvZeroReferenceFramePTS:v59];
      }

      [v36 addBuffer:a4 metadata:a5 bufferType:a6 captureFrameFlags:a7];
    }
  }
}

void __121__BWPhotonicEngineNode_processorController_didFinishProcessingBuffer_metadata_type_captureFrameFlags_processorInput_err___block_invoke(uint64_t a1)
{
  [objc_msgSend(*(*(a1 + 32) + 344) objectForKeyedSubscript:{objc_msgSend(*(a1 + 40), "portType")), "addBuffer:metadata:bufferType:captureFrameFlags:", *(a1 + 56), *(a1 + 48), *(a1 + 64), *(a1 + 72)}];
  v2 = *(a1 + 56);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (void)processorController:(id)a3 willProcessRedEyeReductionForProcessorInput:(id)a4
{
  if (-[BWPhotonicEngineNodeConfiguration isSWFRFlashCapture:](self->_nodeConfiguration, "isSWFRFlashCapture:", [a4 stillImageSettings]))
  {
    v6 = -[NSMutableDictionary objectForKeyedSubscript:](self->_swfrRawRedEyeReductionAuxImageByPortType, "objectForKeyedSubscript:", [a4 portType]);
    if (!v6 || (v7 = v6, v8 = -[BWSoftISPProcessorControllerInput initWithSettings:portType:resolutionFlavor:]([BWSoftISPProcessorControllerInput alloc], "initWithSettings:portType:resolutionFlavor:", [a4 stillImageSettings], objc_msgSend(a4, "portType"), -[BWPhotonicEngineNodeConfiguration resolvedProcessingResolutionFlavorForInput:](self->_nodeConfiguration, "resolvedProcessingResolutionFlavorForInput:", a4)), v9 = -[BWPhotonicEngineNode _ubRERRouter](self), -[BWStillImageProcessorControllerInput addOutputSampleBufferRouter:forBufferTypes:name:](v8, "addOutputSampleBufferRouter:forBufferTypes:name:", v9, -[BWPhotonicEngineNode _bufferTypesForCaptureSettings:](self, objc_msgSend(objc_msgSend(a4, "stillImageSettings"), "captureSettings")), @"RER Aux SoftISP --> RER"), objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_softISPRemainingInputsByPortType, "objectForKeyedSubscript:", objc_msgSend(a4, "portType")), "addObject:", v8), -[BWPhotonicEngineNode _enqueueSoftISPInput:](self), LODWORD(v9) = v10, v8, v9))
    {
      [BWPhotonicEngineNode processorController:? willProcessRedEyeReductionForProcessorInput:?];
    }

    else
    {
      [(BWSoftISPProcessorControllerInput *)v8 addFrame:v7 processingMode:2];
      swfrRawRedEyeReductionAuxImageByPortType = self->_swfrRawRedEyeReductionAuxImageByPortType;
      v12 = [a4 portType];

      [(NSMutableDictionary *)swfrRawRedEyeReductionAuxImageByPortType setObject:0 forKeyedSubscript:v12];
    }
  }
}

- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)a3 frameStatistics:(id)a4 stationary:(BOOL)a5 sphereOffsetEnabled:(BOOL)a6 detectedObjects:(id)a7
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__46;
  v24 = __Block_byref_object_dispose__46;
  v25 = 0;
  v13 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __135__BWPhotonicEngineNode_adaptiveBracketingParametersForDigitalFlashMode_frameStatistics_stationary_sphereOffsetEnabled_detectedObjects___block_invoke;
  v16[3] = &unk_1E79992A0;
  v17 = a3;
  v16[4] = self;
  v16[5] = a4;
  v18 = a5;
  v19 = a6;
  v16[6] = a7;
  v16[7] = &v20;
  ubn_dispatch_sync(v13, v16);
  v14 = v21[5];
  _Block_object_dispose(&v20, 8);
  return v14;
}

- (void)stopAdaptiveBracketingForSettings:(id)a3 withGroup:(int)a4
{
  v6 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__BWPhotonicEngineNode_stopAdaptiveBracketingForSettings_withGroup___block_invoke;
  v7[3] = &unk_1E7991CF0;
  v7[4] = self;
  v8 = a4;
  ubn_dispatch_async(v6, v7);
}

uint64_t __68__BWPhotonicEngineNode_stopAdaptiveBracketingForSettings_withGroup___block_invoke(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(*(a1 + 32) + 304) allValues];
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [objc_msgSend(*(*(&v8 + 1) + 8 * v6++) "firstObject")];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (id)adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:(id)a3 wait:(BOOL)a4
{
  v4 = a4;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (v4 && ![(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator hasSuccessfullySetupProcessorControllersAndMemoryResources])
  {
    v8 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __100__BWPhotonicEngineNode_adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType_wait___block_invoke;
    v13[3] = &unk_1E798F870;
    v13[4] = self;
    ubn_dispatch_sync(v8, v13);
  }

  v9 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:a3];
  v10 = FigGetUpTimeNanoseconds();
  if (!v4 && v10 - UpTimeNanoseconds >= 100000001)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v9;
}

void __73__BWPhotonicEngineNode__handleClientBracketFrameEmissionForSampleBuffer___block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = [*(*(a1 + 32) + 208) stereoDisparityProcessorControllerQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__BWPhotonicEngineNode__handleClientBracketFrameEmissionForSampleBuffer___block_invoke_2;
  v5[3] = &unk_1E798FE50;
  v6 = *(a1 + 32);
  v7 = cf;
  ubn_dispatch_async(v4, v5);
}

void __73__BWPhotonicEngineNode__handleClientBracketFrameEmissionForSampleBuffer___block_invoke_2(void *a1)
{
  [objc_msgSend(*(a1[4] + 480) objectForKeyedSubscript:{a1[5]), "addSampleBuffer:", a1[6]}];
  v2 = a1[6];
  if (v2)
  {

    CFRelease(v2);
  }
}

void __73__BWPhotonicEngineNode__handleClientBracketFrameEmissionForSampleBuffer___block_invoke_415(uint64_t a1)
{
  [*(a1 + 32) addSampleBuffer:*(a1 + 40)];
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __85__BWPhotonicEngineNode__emitOrEnqueueDisparityReferenceFrameIfNeededForSampleBuffer___block_invoke(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v7 = [*(*(a1 + 32) + 208) stereoDisparityProcessorControllerQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__BWPhotonicEngineNode__emitOrEnqueueDisparityReferenceFrameIfNeededForSampleBuffer___block_invoke_2;
  v9[3] = &unk_1E798FE50;
  v8 = *(a1 + 32);
  v9[4] = a4;
  v9[5] = v8;
  v9[6] = cf;
  ubn_dispatch_async(v7, v9);
}

void __85__BWPhotonicEngineNode__emitOrEnqueueDisparityReferenceFrameIfNeededForSampleBuffer___block_invoke_2(uint64_t a1)
{
  if (dword_1EB58E340)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [*(*(a1 + 40) + 456) addSampleBuffer:{*(a1 + 48), v4, v5}];
  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }
}

void __117__BWPhotonicEngineNode__processRawErrorRecoveryFrameWithNRFProcessorInput_processErrorRecoveryProxy_failureMetadata___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void (*a13)(uint64_t a1), void *a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int16 a37, char a38, char a39, int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  [*(*(a1 + 32) + 208) workerQueue];
  if (!_FigIsCurrentDispatchQueue())
  {
    __117__BWPhotonicEngineNode__processRawErrorRecoveryFrameWithNRFProcessorInput_processErrorRecoveryProxy_failureMetadata___block_invoke_cold_1();
  }

  v56 = [*(*(a1 + 32) + 208) controllerForType:6];
  if (a5)
  {
    goto LABEL_9;
  }

  [*(a1 + 40) setProcessedRawErrorRecoveryFrame:a2 proxy:*(a1 + 56)];
  v58 = *(a1 + 32);
  v57 = *(a1 + 40);
  v59 = *(a1 + 56);
  if ((v59 ^ 1))
  {
    v60 = 0;
    v61 = *(a1 + 40);
    v62 = *(a1 + 32);
  }

  else
  {
    v60 = [*(v58 + 152) isSemanticRenderingCapture:{objc_msgSend(*(a1 + 40), "stillImageSettings")}];
    v62 = *(a1 + 32);
    v61 = *(a1 + 40);
  }

  v63 = [*(v62 + 152) isInferenceInputImageRequiredForSettings:objc_msgSend(v61 portType:{"stillImageSettings"), objc_msgSend(*(a1 + 40), "portType")}];
  v64 = [*(*(a1 + 32) + 152) isSmartStyleRenderingCapture:{objc_msgSend(*(a1 + 40), "stillImageSettings")}];
  BYTE3(v74) = [*(*(a1 + 32) + 152) areInferencesRequiredByProcessorControllersForSettings:{objc_msgSend(*(a1 + 40), "stillImageSettings")}];
  BYTE2(v74) = v64;
  BYTE1(v74) = v63;
  LOBYTE(v74) = v60;
  LOBYTE(v73) = 0;
  v65 = [v56 enqueueInputForProcessing:v57 delegate:v58 processErrorRecoveryFrame:v59 ^ 1 processErrorRecoveryProxy:v59 processOriginalImage:0 processToneMapping:0 processInferenceInputImage:v73 clientBracketSequenceNumber:v74 processSemanticRendering:? provideInferenceInputImageForProcessing:? processSmartStyleRenderingInput:? inferencesAvailable:?];
  if (v65)
  {
    a5 = v65;
LABEL_9:
    [*(a1 + 32) processorController:v56 didFinishProcessingInput:*(a1 + 40) err:a5];
    v66 = *(a1 + 32);
    v67 = [*(a1 + 40) stillImageSettings];
    v68 = *(a1 + 48);
    v69 = [*(a1 + 40) description];

    [(BWPhotonicEngineNode *)v66 _emitError:a5 stillImageSettings:v67 metadata:v68 description:v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53];
  }
}

- (uint64_t)_setupProcessingStateForInferenceWithSettings:(uint64_t)a3 portType:(unint64_t)a4 inferenceInputBufferType:
{
  if (!a1)
  {
    return 0;
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v8 = [a1[26] controllerForType:3];
  if (v8)
  {
    v9 = [a1[19] shouldProvideInferenceAttachedMediaWithSettings:a2];
    if (([a1[19] areInferencesRequiredByProcessorControllersForSettings:a2] | v9))
    {
      if (a4 <= 0x27 && ((1 << a4) & 0x9000008000) != 0)
      {
        v10 = [a1[45] objectForKeyedSubscript:a3];
        v11 = [a1[26] inferenceControllerQueue];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __104__BWPhotonicEngineNode__setupProcessingStateForInferenceWithSettings_portType_inferenceInputBufferType___block_invoke;
        v40[3] = &unk_1E798F870;
        v40[4] = v8;
        ubn_dispatch_sync(v11, v40);
        if ([v10 inferenceImage])
        {
          v12 = BWSampleBufferCopyDictionaryOfAttachedMedia([v10 inferenceImage]);
          v30 = v8;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v13 = [v12 countByEnumeratingWithState:&v36 objects:v35 count:16];
          if (v13)
          {
            v14 = *v37;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v37 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                ImageBuffer = CMSampleBufferGetImageBuffer([v12 objectForKeyedSubscript:*(*(&v36 + 1) + 8 * i)]);
                if (ImageBuffer)
                {
                  IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
                  v18 = IOSurface;
                  if (IOSurface)
                  {
                    IOSurfaceLock(IOSurface, 5u, 0);
                    IOSurfaceUnlock(v18, 5u, 0);
                  }
                }
              }

              v13 = [v12 countByEnumeratingWithState:&v36 objects:v35 count:16];
            }

            while (v13);
          }

          v8 = v30;
          BWSampleBufferRemoveAllAttachedMedia([v10 inferenceImage]);
        }

        [a1[26] syncReleaseInferencesForInferenceInputBufferType:a4];
        v19 = [[BWInferenceEngineControllerInput alloc] initWithSettings:a2 portType:a3 inferenceInputBufferType:a4];
        [a1[19] configureInferenceEngineControllerInput:v19];
        v20 = [a1[19] isSWFRFlashCapture:a2];
        v21 = [a1[19] isRedEyeReductionFlashCapture:a2];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __104__BWPhotonicEngineNode__setupProcessingStateForInferenceWithSettings_portType_inferenceInputBufferType___block_invoke_2;
        v32[3] = &unk_1E799DFA0;
        v32[4] = a1;
        v32[5] = a3;
        v33 = v21;
        v34 = v20;
        [(BWStillImageProcessorControllerInput *)v19 addOutputSampleBufferRouter:v32 forBufferTypes:&unk_1F224A5A8 name:@"Inference --> Stash"];
        v22 = [a1[26] inferenceControllerQueue];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __104__BWPhotonicEngineNode__setupProcessingStateForInferenceWithSettings_portType_inferenceInputBufferType___block_invoke_715;
        v31[3] = &unk_1E79992F0;
        v31[4] = v8;
        v31[5] = v19;
        v31[6] = a1;
        v31[7] = &v45;
        ubn_dispatch_sync(v22, v31);
        if (!*(v46 + 6))
        {
          [a1[45] setObject:v19 forKeyedSubscript:a3];
        }

        goto LABEL_22;
      }

      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      v44 = 0;
      v43 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v41 = 138412290;
      v42 = BWStillImageBufferTypeToShortString(a4);
      v25 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v25, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNode.m", 7131, @"LastShownDate:BWPhotonicEngineNode.m:7131", @"LastShownBuild:BWPhotonicEngineNode.m:7131", 0);
    }

    else
    {
      v28 = FigCaptureGetFrameworkRadarComponent();
      v44 = 0;
      v43 = 0;
      v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      LOWORD(v41) = 0;
      v25 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v28, v25, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotonicEngineNode.m", 7129, @"LastShownDate:BWPhotonicEngineNode.m:7129", @"LastShownBuild:BWPhotonicEngineNode.m:7129", 0);
    }

    free(v25);
    v19 = 0;
  }

  else
  {
    v19 = 0;
    *(v46 + 6) = -73215;
  }

LABEL_22:

  v26 = *(v46 + 6);
  _Block_object_dispose(&v45, 8);
  return v26;
}

void __87__BWPhotonicEngineNode__inferenceProcessRedEyeReductionSampleBuffer_settings_portType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addInferenceImage:*(a1 + 40) propagationImage:*(a1 + 48)];
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __70__BWPhotonicEngineNode__setupDeferredProcessingWithSettings_portType___block_invoke(uint64_t a1, CMAttachmentBearerRef target, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void (*a13)(uint64_t a1), void *a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int16 a37, char a38, char a39, int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (a5)
  {
    v58 = CMGetAttachment(target, *off_1E798A3C8, 0);
    v59 = *(a1 + 32);
    v60 = [a4 stillImageSettings];
    v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"type '%@' requested for '%@'", BWStillImageBufferTypeToShortString(a3), a4];

    [(BWPhotonicEngineNode *)v59 _emitError:a5 stillImageSettings:v60 metadata:v58 description:v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53];
  }
}

void __97__BWPhotonicEngineNode__setupSoftISPProcessingStateIfNeededWithSettings_portType_processingPlan___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  [*(*(a1 + 32) + 208) workerQueue];
  if (!_FigIsCurrentDispatchQueue())
  {
    __97__BWPhotonicEngineNode__setupSoftISPProcessingStateIfNeededWithSettings_portType_processingPlan___block_invoke_cold_1();
  }

  if (dword_1EB58E340)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = [[BWSoftISPResult alloc] initWithInput:a4 outputSampleBuffer:a2 error:a5];
  -[BWPhotonicEngineNode _stashAWBMetadataIfNeededForSampleBuffer:processingMode:](*(a1 + 32), a2, [a4 processingMode]);
  [objc_msgSend(*(*(a1 + 32) + 280) objectForKeyedSubscript:{objc_msgSend(a4, "portType")), "addObject:", v10}];
}

- (uint64_t)_setupProcessingStateForDisparityIfNeededWithSettings:(uint64_t)a3 sequenceNumber:(void *)a4 processingPlan:
{
  v5 = a1;
  if (a1)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    [*(a1 + 208) workerQueue];
    if (!_FigIsCurrentDispatchQueue())
    {
      v15 = v4;
      LODWORD(v14) = 0;
      FigDebugAssert3();
    }

    if (([(BWPhotonicEngineNode *)v5 _generateDisparityForSettings:a2]& 1) != 0)
    {
      v9 = [*(v5 + 208) controllerForType:8];
      if (v9)
      {
        v10 = -[BWStereoDisparityProcessorInput initWithSettings:portType:]([BWStereoDisparityProcessorInput alloc], "initWithSettings:portType:", a2, [objc_msgSend(a2 "captureSettings")]);
        ++*(v5 + 464);
        v11 = [*(v5 + 208) stereoDisparityProcessorControllerQueue];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __65__BWPhotonicEngineNode__standardNROutputRouterWithExpectedQueue___block_invoke;
        v21[3] = &unk_1E7999390;
        v21[4] = v11;
        v21[5] = v5;
        -[BWStillImageProcessorControllerInput addOutputSampleBufferRouter:forBufferTypes:name:](v10, "addOutputSampleBufferRouter:forBufferTypes:name:", [v21 copy], &unk_1F224A5C0, @"StereoDisparity ReferenceFrame --> Emit");
        [a4 addInput:v10 sequenceNumber:a3 portType:objc_msgSend(objc_msgSend(a2 bufferType:{"captureSettings"), "masterPortType"), 20}];
        if ([objc_msgSend(a2 "captureSettings")] == 7)
        {
          [*(v5 + 480) setObject:v10 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", a3)}];
        }

        else
        {
          *(v5 + 456) = v10;
        }

        v12 = [*(v5 + 208) stereoDisparityProcessorControllerQueue];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __108__BWPhotonicEngineNode__setupProcessingStateForDisparityIfNeededWithSettings_sequenceNumber_processingPlan___block_invoke;
        v16[3] = &unk_1E79992F0;
        v16[4] = v9;
        v16[5] = v10;
        v16[6] = v5;
        v16[7] = &v17;
        ubn_dispatch_sync(v12, v16);
      }

      else
      {
        *(v18 + 6) = -73215;
      }
    }

    v5 = *(v18 + 6);
    _Block_object_dispose(&v17, 8);
  }

  return v5;
}

void __94__BWPhotonicEngineNode__setupProcessingStateForSingleImageCaptureWithSettings_processingPlan___block_invoke_575(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void (*a13)(uint64_t a1), void *a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int16 a37, char a38, char a39, int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  [*(*(a1 + 32) + 208) workerQueue];
  if (!_FigIsCurrentDispatchQueue())
  {
    __94__BWPhotonicEngineNode__setupProcessingStateForSingleImageCaptureWithSettings_processingPlan___block_invoke_575_cold_1();
  }

  v58 = [objc_msgSend(*(*(a1 + 32) + 304) objectForKeyedSubscript:{objc_msgSend(a4, "portType")), "firstObject"}];
  if (!a2)
  {
    if (!a5)
    {
      return;
    }

    goto LABEL_10;
  }

  if (a5)
  {
    v60 = [*(*(a1 + 32) + 208) controllerForType:6];
    [v60 cancelProcessing];
    LODWORD(v69) = 0;
    LOBYTE(v68) = 0;
    v59 = [v60 enqueueInputForProcessing:v58 delegate:*(a1 + 32) processErrorRecoveryFrame:1 processErrorRecoveryProxy:0 processOriginalImage:0 processToneMapping:0 processInferenceInputImage:v68 clientBracketSequenceNumber:v69 processSemanticRendering:? provideInferenceInputImageForProcessing:? processSmartStyleRenderingInput:? inferencesAvailable:?];
  }

  else
  {
    v59 = 0;
  }

  [v58 addFrame:a2];
  [(BWPhotonicEngineNode *)*(a1 + 32) _checkIfProcessingCompletedForNRFProcessorInput:v58];
  if (v59)
  {
LABEL_10:
    v61 = CMGetAttachment(a2, *off_1E798A3C8, 0);
    [v58 portType];
    [objc_msgSend(a4 "settings")];
    [BWPhotonicEngineNode _processorControllerDidFinishProcessingInputForPortType:processorType:captureRequestIdentifier:];
    v62 = *(a1 + 32);
    v63 = [a4 stillImageSettings];
    v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"type '%@' requested for '%@'", BWStillImageBufferTypeToShortString(a3), a4];

    [(BWPhotonicEngineNode *)v62 _emitError:a5 stillImageSettings:v63 metadata:v61 description:v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53];
  }
}

void __88__BWPhotonicEngineNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke_583(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void (*a13)(uint64_t a1), void *a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int16 a37, char a38, char a39, int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  [*(*(a1 + 32) + 208) workerQueue];
  if (!_FigIsCurrentDispatchQueue())
  {
    __88__BWPhotonicEngineNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke_583_cold_1();
  }

  v58 = [objc_msgSend(*(*(a1 + 32) + 304) objectForKeyedSubscript:{objc_msgSend(a4, "portType")), "firstObject"}];
  if (!a2)
  {
    if (!a5)
    {
      return;
    }

    goto LABEL_10;
  }

  if (a5)
  {
    v60 = [*(*(a1 + 32) + 208) controllerForType:6];
    [v60 cancelProcessing];
    LODWORD(v69) = 0;
    LOBYTE(v68) = 0;
    v59 = [v60 enqueueInputForProcessing:v58 delegate:*(a1 + 32) processErrorRecoveryFrame:1 processErrorRecoveryProxy:0 processOriginalImage:0 processToneMapping:0 processInferenceInputImage:v68 clientBracketSequenceNumber:v69 processSemanticRendering:? provideInferenceInputImageForProcessing:? processSmartStyleRenderingInput:? inferencesAvailable:?];
  }

  else
  {
    v59 = 0;
  }

  [v58 addFrame:a2];
  [(BWPhotonicEngineNode *)*(a1 + 32) _checkIfProcessingCompletedForNRFProcessorInput:v58];
  if (v59)
  {
LABEL_10:
    v61 = CMGetAttachment(a2, *off_1E798A3C8, 0);
    [v58 portType];
    [objc_msgSend(a4 "settings")];
    [BWPhotonicEngineNode _processorControllerDidFinishProcessingInputForPortType:processorType:captureRequestIdentifier:];
    v62 = *(a1 + 32);
    v63 = [a4 stillImageSettings];
    v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"type '%@' requested for '%@'", BWStillImageBufferTypeToShortString(a3), a4];

    [(BWPhotonicEngineNode *)v62 _emitError:a5 stillImageSettings:v63 metadata:v61 description:v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53];
  }
}

void __97__BWPhotonicEngineNode__setupProcessingStateForColorConstancyCaptureWithSettings_processingPlan___block_invoke_626(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, int a5)
{
  [*(*(a1 + 32) + 208) workerQueue];
  if (!_FigIsCurrentDispatchQueue())
  {
    __97__BWPhotonicEngineNode__setupProcessingStateForColorConstancyCaptureWithSettings_processingPlan___block_invoke_626_cold_1();
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a2)
  {
LABEL_3:
    CFRetain(a2);
  }

LABEL_4:
  v10 = [*(*(a1 + 32) + 208) workerQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __97__BWPhotonicEngineNode__setupProcessingStateForColorConstancyCaptureWithSettings_processingPlan___block_invoke_2;
  v12[3] = &unk_1E799DF78;
  v13 = a5;
  v12[6] = a3;
  v12[7] = a2;
  v11 = *(a1 + 32);
  v12[4] = a4;
  v12[5] = v11;
  ubn_dispatch_async(v10, v12);
}

void __97__BWPhotonicEngineNode__setupProcessingStateForColorConstancyCaptureWithSettings_processingPlan___block_invoke_2(uint64_t a1)
{
  if (dword_1EB58E340)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = (a1 + 56);
  if (!*(a1 + 56) || *(a1 + 64))
  {
    __97__BWPhotonicEngineNode__setupProcessingStateForColorConstancyCaptureWithSettings_processingPlan___block_invoke_2_cold_2(a1, a1 + 56);
  }

  else
  {
    __97__BWPhotonicEngineNode__setupProcessingStateForColorConstancyCaptureWithSettings_processingPlan___block_invoke_2_cold_1();
  }

  if (*v3)
  {
    CFRelease(*v3);
  }
}

void __104__BWPhotonicEngineNode__setupProcessingStateForInferenceWithSettings_portType_inferenceInputBufferType___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  [*(*(a1 + 32) + 208) inferenceControllerQueue];
  if (_FigIsCurrentDispatchQueue())
  {
    if (!a5)
    {
      goto LABEL_3;
    }

LABEL_14:
    v20 = 0;
    v19 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = 0;
    goto LABEL_12;
  }

  __104__BWPhotonicEngineNode__setupProcessingStateForInferenceWithSettings_portType_inferenceInputBufferType___block_invoke_2_cold_1();
  if (a5)
  {
    goto LABEL_14;
  }

LABEL_3:
  v9 = [*(*(a1 + 32) + 152) harvestStillImageInferencesFromSampleBuffer:a2 stillImageSettings:objc_msgSend(a4 enabledInferenceMasks:{"stillImageSettings"), objc_msgSend(a4, "enabledInferenceMasks")}];
  [*(*(a1 + 32) + 208) unsafeSetInferences:v9 forInferenceInputBufferType:{objc_msgSend(a4, "inferenceInputBufferType")}];
  if ([a4 inferenceInputBufferType] == 15 && objc_msgSend(*(*(a1 + 32) + 152), "deepFusionProcessorControllerConfiguration"))
  {
    v10 = [*(*(a1 + 32) + 208) workerQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __104__BWPhotonicEngineNode__setupProcessingStateForInferenceWithSettings_portType_inferenceInputBufferType___block_invoke_705;
    v17[3] = &unk_1E798F898;
    v18 = *(a1 + 32);
    ubn_dispatch_async(v10, v17);
  }

  if (*(a1 + 48) == 1 && (*(a1 + 49) & 1) == 0)
  {
    v11 = [a4 propagationImage];
    if (v11)
    {
      v12 = CFRetain(v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = [*(*(a1 + 32) + 208) workerQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __104__BWPhotonicEngineNode__setupProcessingStateForInferenceWithSettings_portType_inferenceInputBufferType___block_invoke_2_706;
    v16[3] = &unk_1E798FE50;
    v14 = *(a1 + 32);
    v16[5] = a4;
    v16[6] = v12;
    v16[4] = v14;
    ubn_dispatch_async(v13, v16);
  }

LABEL_12:
}

uint64_t __104__BWPhotonicEngineNode__setupProcessingStateForInferenceWithSettings_portType_inferenceInputBufferType___block_invoke_705(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 344) objectForKeyedSubscript:*(a1 + 40)];

  return [v1 allInferencesDelivered];
}

uint64_t __104__BWPhotonicEngineNode__setupProcessingStateForInferenceWithSettings_portType_inferenceInputBufferType___block_invoke_715(uint64_t a1)
{
  result = [*(a1 + 32) enqueueInputForProcessing:*(a1 + 40) delegate:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

uint64_t __108__BWPhotonicEngineNode__setupProcessingStateForDisparityIfNeededWithSettings_sequenceNumber_processingPlan___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) enqueueInputForProcessing:*(a1 + 40) delegate:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

uint64_t __99__BWPhotonicEngineNode__setupProcessingStateForJasperDisparityIfNeededWithSettings_processingPlan___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  [*(*(a1 + 32) + 208) workerQueue];
  if (_FigIsCurrentDispatchQueue())
  {
    if (a2)
    {
LABEL_3:
      v8 = [*(*(a1 + 32) + 528) objectForKeyedSubscript:{objc_msgSend(a4, "portType")}];

      return [v8 setColorBuffer:a2 type:a3];
    }
  }

  else
  {
    __99__BWPhotonicEngineNode__setupProcessingStateForJasperDisparityIfNeededWithSettings_processingPlan___block_invoke_cold_1();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v10 = *(a1 + 40);

  return [v10 cancelProcessing];
}

uint64_t __99__BWPhotonicEngineNode__setupProcessingStateForPointCloudDepthIfNeededWithSettings_processingPlan___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  [*(*(a1 + 32) + 208) workerQueue];
  if (_FigIsCurrentDispatchQueue())
  {
    if (a2)
    {
LABEL_3:
      v8 = [*(*(a1 + 32) + 520) objectForKeyedSubscript:{objc_msgSend(a4, "portType")}];

      return [v8 setColorBuffer:a2 type:a3];
    }
  }

  else
  {
    __99__BWPhotonicEngineNode__setupProcessingStateForPointCloudDepthIfNeededWithSettings_processingPlan___block_invoke_cold_1();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v10 = *(a1 + 40);

  return [v10 cancelProcessing];
}

void __44__BWPhotonicEngineNode__nrfOutputSbufRouter__block_invoke(uint64_t a1, const void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = (a1 + 32);
  [*(*(a1 + 32) + 208) workerQueue];
  if (!_FigIsCurrentDispatchQueue())
  {
    __44__BWPhotonicEngineNode__nrfOutputSbufRouter__block_invoke_cold_1();
  }

  if (dword_1EB58E340)
  {
    v62 = 0;
    v61 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a5)
  {
    __44__BWPhotonicEngineNode__nrfOutputSbufRouter__block_invoke_cold_2();
    goto LABEL_20;
  }

  if (a3 != 7 && a3 != 51)
  {
    v11 = [objc_msgSend(a4 "captureSettings")];
    if (a3 != 53 || (v11 & 1) == 0)
    {
      v12 = [objc_msgSend(a4 captureSettings];
      if (a3 != 14 || !v12)
      {
        if ([a4 isMaster])
        {
          if (a3 > 34)
          {
            if (a3 == 38)
            {
              goto LABEL_34;
            }

            if (a3 != 35)
            {
LABEL_33:
              [BWPhotonicEngineNode _waitForAndMergeInferencesIfNeededForSampleBuffer:? processorInput:?];
              goto LABEL_34;
            }
          }

          else if (a3 != 3 && a3 != 6)
          {
            goto LABEL_33;
          }

          v21 = [*(*v9 + 312) objectForKeyedSubscript:{objc_msgSend(a4, "portType")}];
          if (v21)
          {
            [CMGetAttachment(a2 *off_1E798A3C8];
          }

          [*(*v9 + 320) setObject:&unk_1F2247B00 forKeyedSubscript:*(*v9 + 192)];
          v22 = *v9;
          [a4 stillImageSettings];
          [a4 portType];
          [BWPhotonicEngineNode _attemptDisparityReferenceFrameResolutionForSettings:v22 portType:?];
          v23 = *v9;
          [a4 stillImageSettings];
          [BWPhotonicEngineNode _deferredCaptureAddSecondaryStereoPhotoCaptureSampleBufferIfReadyForSettings:v23];
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v24 = [*(*v9 + 304) allValues];
          v25 = [v24 countByEnumeratingWithState:&v48 objects:v34 count:16];
          if (!v25)
          {
            goto LABEL_33;
          }

          v26 = v25;
          v27 = *v49;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v49 != v27)
              {
                objc_enumerationMutation(v24);
              }

              -[BWPhotonicEngineNode _checkIfProcessingCompletedForNRFProcessorInput:](*v9, [*(*(&v48 + 1) + 8 * i) firstObject]);
            }

            v26 = [v24 countByEnumeratingWithState:&v48 objects:v34 count:16];
          }

          while (v26);
        }

        if (a3 != 38)
        {
          goto LABEL_33;
        }

LABEL_34:
        v29 = *v9;
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"buffer of type '%@' requested for '%@'", BWStillImageBufferTypeToShortString(a3), a4];
        [(BWPhotonicEngineNode *)v29 _emitSampleBuffer:a2 description:v30];
        return;
      }
    }
  }

  if ((__44__BWPhotonicEngineNode__nrfOutputSbufRouter__block_invoke_cold_3(v9, a2, a3, v60) & 1) == 0)
  {
    a5 = LODWORD(v60[0]);
LABEL_20:
    v13 = CMGetAttachment(a2, *off_1E798A3C8, 0);
    v14 = *v9;
    v15 = [a4 stillImageSettings];
    v16 = MEMORY[0x1E696AEC0];
    v32 = BWStillImageBufferTypeToShortString(a3);
    v17 = [v16 stringWithFormat:@"type '%@' requested for '%@'"];
    [(BWPhotonicEngineNode *)v14 _emitError:a5 stillImageSettings:v15 metadata:v13 description:v17, v18, v19, v20, v32, a4, v34[0], v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, *(&v48 + 1), v49, *(&v49 + 1), v50, *(&v50 + 1), v51, *(&v51 + 1), v52, v53, v54, v55, v56, v57, v58, v59, v60[0], v60[1], v60[2], v60[3], v60[4], v60[5], v60[6], v60[7], v60[8], v60[9], v60[10], v60[11], v60[12]];
  }
}

void __47__BWPhotonicEngineNode__ubInferenceInputRouter__block_invoke(uint64_t a1, const void *a2, unint64_t a3, void *a4)
{
  v7 = (a1 + 32);
  [*(*(a1 + 32) + 208) workerQueue];
  if (!_FigIsCurrentDispatchQueue())
  {
    __47__BWPhotonicEngineNode__ubInferenceInputRouter__block_invoke_cold_1();
  }

  v8 = [a4 portType];
  if (-[BWPhotonicEngineNode _setupProcessingStateForInferenceWithSettings:portType:inferenceInputBufferType:](*v7, [a4 stillImageSettings], v8, a3) || (v9 = objc_msgSend((*v7)[45], "objectForKeyedSubscript:", v8)) == 0)
  {
    __47__BWPhotonicEngineNode__ubInferenceInputRouter__block_invoke_cold_2(a4, v7, v8);
  }

  else
  {
    v10 = v9;
    [(*v7)[19] prepareSampleBufferForInferenceProcessing:a2 inferenceInput:v9 stillImageSettings:objc_msgSend(a4 inferenceInputBufferType:{"stillImageSettings"), a3}];
    if (a2)
    {
      CFRetain(a2);
    }

    v11 = [(*v7)[26] inferenceControllerGroup];
    v12 = [(*v7)[26] inferenceControllerQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__BWPhotonicEngineNode__ubInferenceInputRouter__block_invoke_2;
    v13[3] = &unk_1E7990178;
    v13[4] = v10;
    v13[5] = a2;
    ubn_dispatch_group_async(v11, v12, v13);
  }
}

void __47__BWPhotonicEngineNode__ubInferenceInputRouter__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) addInferenceImage:*(a1 + 40)];
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t __36__BWPhotonicEngineNode__ubRERRouter__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  [*(*(a1 + 32) + 208) workerQueue];
  if (!_FigIsCurrentDispatchQueue())
  {
    __36__BWPhotonicEngineNode__ubRERRouter__block_invoke_cold_1();
  }

  v7 = [*(*(a1 + 32) + 408) objectForKeyedSubscript:{objc_msgSend(a4, "portType")}];
  if ([v7 faceObservations])
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_msgSend(*(*(a1 + 32) + 208) "syncInferences")];
  }

  if (dword_1EB58E340)
  {
    v14 = 0;
    v13 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [v7 addFrame:a2 faceObservations:{v8, v11, v12}];
}

- (void)processingCoordinator:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 description:(id)a5
{
  if (self->_processingCoordinator == a3)
  {
    CMGetAttachment(a4, @"StillSettings", 0);
    if (dword_1EB58E340)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(BWPhotonicEngineNode *)self _emitSampleBuffer:a4 description:a5];
  }

  else
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)processingCoordinator:(id)a3 didEncounterError:(int)a4 stillImageSettings:(id)a5 description:(id)a6
{
  v9 = *&a4;
  if (self->_processingCoordinator == a3)
  {
    if (dword_1EB58E340)
    {
      HIDWORD(v33) = 0;
      BYTE3(v33) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(BWPhotonicEngineNode *)self _emitError:v9 stillImageSettings:a5 metadata:0 description:a6, a6, v6, v7, v15, v16, v17, block, v19, v20, v21, v22, v23, v24, v25, v26, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14], v27[15], v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44];
    v13 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue];
    block = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __95__BWPhotonicEngineNode_processingCoordinator_didEncounterError_stillImageSettings_description___block_invoke;
    v21 = &unk_1E798F870;
    v22 = self;
    dispatch_async(v13, &block);
  }

  else
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)processingCoordinatorComplete:(id)a3
{
  if (self->_processingCoordinator == a3)
  {
    if (dword_1EB58E340)
    {
      v11 = 0;
      v10 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue:v7];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__BWPhotonicEngineNode_processingCoordinatorComplete___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = self;
    dispatch_async(v5, block);
  }

  else
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void __54__BWPhotonicEngineNode_processingCoordinatorComplete___block_invoke(uint64_t a1)
{
  if (dword_1EB58E340)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(*(a1 + 32) + 608) = 0;
}

- (uint64_t)_releaseResources
{
  if (result)
  {
    v1 = result;
    OUTLINED_FUNCTION_146_2(result);
    result = _FigIsNotCurrentDispatchQueue();
    if (!result)
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      result = FigDebugAssert3();
    }

    if ((*(v1 + 128) & 1) == 0)
    {
      if (dword_1EB58E340)
      {
        OUTLINED_FUNCTION_18_27();
        OUTLINED_FUNCTION_160_0();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v3 = OUTLINED_FUNCTION_29_4(os_log_and_send_and_compose_flags_and_os_log_type);
        if (OUTLINED_FUNCTION_6(v3))
        {
          v16 = 136315138;
          v17 = "[BWPhotonicEngineNode _releaseResources]";
          OUTLINED_FUNCTION_43_0();
          OUTLINED_FUNCTION_58_1();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_17_8();
      }

      if ([OUTLINED_FUNCTION_218() workerQueue])
      {
        [OUTLINED_FUNCTION_218() workerQueue];
        OUTLINED_FUNCTION_8_7();
        v12 = 3221225472;
        v13 = __41__BWPhotonicEngineNode__releaseResources__block_invoke;
        v14 = &unk_1E798F870;
        v15 = v1;
        ubn_dispatch_sync(v4, v11);
      }

      *(v1 + 160) = 0;
      *(v1 + 232) = 0;

      *(v1 + 240) = 0;
      *(v1 + 248) = 0;

      *(v1 + 264) = 0;
      *(v1 + 280) = 0;

      *(v1 + 288) = 0;
      *(v1 + 296) = 0;

      *(v1 + 304) = 0;
      *(v1 + 536) = 0;

      *(v1 + 552) = 0;
      *(v1 + 568) = 0;
      v5 = *(v1 + 576);
      if (v5)
      {
        CFRelease(v5);
        *(v1 + 576) = 0;
      }

      *(v1 + 312) = 0;
      *(v1 + 320) = 0;

      *(v1 + 472) = 0;
      *(v1 + 152) = 0;

      *(v1 + 136) = 0;
      *(v1 + 344) = 0;

      *(v1 + 360) = 0;
      *(v1 + 328) = 0;

      *(v1 + 336) = 0;
      v6 = *(v1 + 368);
      if (v6)
      {
        CFRelease(v6);
        *(v1 + 368) = 0;
      }

      v7 = *(v1 + 376);
      if (v7)
      {
        CFRelease(v7);
        *(v1 + 376) = 0;
      }

      *(v1 + 384) = 0;
      *(v1 + 392) = 0;

      *(v1 + 400) = 0;
      *(v1 + 416) = 0;

      *(v1 + 424) = 0;
      *(v1 + 440) = 0;

      *(v1 + 448) = 0;
      *(v1 + 488) = 0;

      *(v1 + 456) = 0;
      *(v1 + 480) = 0;

      *(v1 + 520) = 0;
      *(v1 + 528) = 0;

      *(v1 + 408) = 0;
      *(v1 + 560) = 0;
      v8 = *(v1 + 544);
      if (v8)
      {
        CFRelease(v8);
        *(v1 + 544) = 0;
      }

      *(v1 + 496) = 0;
      *(v1 + 168) = 0;

      *(v1 + 224) = 0;
      v9 = *(v1 + 592);
      if (v9)
      {
        CFRelease(v9);
        *(v1 + 592) = 0;
      }

      v10 = *(v1 + 600);
      if (v10)
      {
        CFRelease(v10);
        *(v1 + 600) = 0;
      }

      result = [OUTLINED_FUNCTION_218() releaseResources];
      *(v1 + 128) = 1;
    }
  }

  return result;
}

- (BOOL)processingOnBeginMomentSupportedForCaptureSettings:(id)a3
{
  if (([a3 captureFlags] & 4) != 0 && self->_sensorRawInput)
  {
    [a3 captureType];
    [BWPhotonicEngineNode _infoForCaptureType:? isSupportedCaptureTypeOut:? isFusionCaptureTypeOut:?];
  }

  return 0;
}

- (uint64_t)_infoForCaptureType:(uint64_t)result isSupportedCaptureTypeOut:isFusionCaptureTypeOut:
{
  if (result)
  {
    OUTLINED_FUNCTION_113();
    v4 = v3;
    result = 0;
    v5 = 0;
    switch(v6)
    {
      case 1:
      case 2:
      case 6:
      case 7:
        v5 = 0;
        result = 1;
        goto LABEL_4;
      case 10:
        result = [(BWPhotonicEngineNodeConfiguration *)*(v4 + 152) unifiedBracketingFusionSupportEnabled];
        goto LABEL_13;
      case 11:
        result = [(BWPhotonicEngineNodeConfiguration *)*(v4 + 152) digitalFlashSupportEnabled];
        goto LABEL_13;
      case 12:
        result = [(BWPhotonicEngineNodeConfiguration *)*(v4 + 152) deepFusionSupportEnabled];
        goto LABEL_13;
      case 13:
        result = [-[BWPhotonicEngineNodeConfiguration portTypesWithLearnedFusionEnabled](*(v4 + 152)) count] != 0;
LABEL_13:
        v5 = 1;
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      default:
LABEL_4:
        if (v2)
        {
LABEL_5:
          *v2 = result;
        }

LABEL_6:
        if (v1)
        {
          *v1 = v5;
        }

        break;
    }
  }

  return result;
}

- (void)_liveReconfigureResourceCoordinatorIfNeeded
{
  if (a1 && [*(a1 + 208) liveReconfigureIfNeeded])
  {
    v12 = 0;
    v11[139] = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v2 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_5_2(v2))
    {
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_7_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_5_53();
    v3 = OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_10();
    FigCapturePleaseFileRadar(v4, v5, v6, v7, v8, 8576, v9, v10, v11);
    free(v3);
  }
}

- (uint64_t)_setupResourceCoordinator
{
  if (result)
  {
    v1 = result;
    result = [*(result + 208) hasSuccessfullySetupProcessorControllersAndMemoryResources];
    if ((result & 1) == 0)
    {
      [v1[26] workerQueue];
      if (!_FigIsCurrentDispatchQueue())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      [v1[62] retainedBufferCount];
      v2 = OUTLINED_FUNCTION_135_5();
      [(BWPhotonicEngineNodeConfiguration *)v2 setPointCloudInputRetainedBufferCount:v3];
      if ([OUTLINED_FUNCTION_135_5() scalerProcessorControllerConfiguration])
      {
        [objc_msgSend(OUTLINED_FUNCTION_135_5() "scalerProcessorControllerConfiguration")];
      }

      result = [v1[26] setupProcessorControllersAndMemoryResources];
      if (result)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v5 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        if (OUTLINED_FUNCTION_5_2(v5))
        {
          OUTLINED_FUNCTION_5_6();
          OUTLINED_FUNCTION_7_4();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_1_4();
        return OUTLINED_FUNCTION_16_1();
      }
    }
  }

  return result;
}

- (void)_resetProcessingState
{
  if (a1)
  {
    OUTLINED_FUNCTION_58_2();
    v36 = v35;
    [OUTLINED_FUNCTION_155_0(v35) workerQueue];
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if ([OUTLINED_FUNCTION_208_0() useSharedExternalMemoryResourceForProcessorControllers] && *(v36 + 192) && dword_1EB58E340)
    {
      OUTLINED_FUNCTION_112();
      OUTLINED_FUNCTION_101_5();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, a34);
      OUTLINED_FUNCTION_115_0();
      if (v39)
      {
        a35 = v38;
      }

      if (a35)
      {
        v41 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_208_0() "sharedExternalMemoryResource")];
        BWPrettyStringFromBytes(v41);
        v42 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_208_0() "sharedExternalMemoryResource")];
        BWPrettyStringFromBytes(v42);
        OUTLINED_FUNCTION_23_8();
        OUTLINED_FUNCTION_13_47();
        OUTLINED_FUNCTION_58_1();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0();
    }

    [OUTLINED_FUNCTION_208_0() cancelAllProcessing];
    [*(v36 + 344) removeAllObjects];

    *(v36 + 352) = 0;
    [*(v36 + 360) removeAllObjects];
    [*(v36 + 416) removeAllObjects];
    [*(v36 + 424) removeAllObjects];
    [*(v36 + 440) removeAllObjects];
    [*(v36 + 448) removeAllObjects];
    [*(v36 + 488) removeAllObjects];
    [*(v36 + 384) removeAllObjects];
    [*(v36 + 392) removeAllObjects];
    [*(v36 + 400) removeAllObjects];
    [*(v36 + 408) removeAllObjects];

    *(v36 + 456) = 0;
    [*(v36 + 480) removeAllObjects];
    *(v36 + 464) = 0;
    [*(v36 + 520) removeAllObjects];
    [*(v36 + 528) removeAllObjects];
    [*(v36 + 232) removeAllObjects];
    [*(v36 + 240) removeAllObjects];
    [*(v36 + 248) removeAllObjects];

    *(v36 + 256) = 0;
    [*(v36 + 264) removeAllObjects];
    [*(v36 + 280) removeAllObjects];
    [*(v36 + 288) removeAllObjects];
    [*(v36 + 296) removeAllObjects];
    [*(v36 + 328) removeAllObjects];
    [*(v36 + 336) removeAllObjects];
    v43 = *(v36 + 544);
    if (v43)
    {
      CFRelease(v43);
      *(v36 + 544) = 0;
    }

    *(v36 + 536) = 0;
    [*(v36 + 552) removeAllObjects];
    [*(v36 + 568) removeAllObjects];
    v44 = *(v36 + 576);
    if (v44)
    {
      CFRelease(v44);
      *(v36 + 576) = 0;
    }

    [*(v36 + 304) removeAllObjects];
    [*(v36 + 312) removeAllObjects];
    [*(v36 + 320) removeAllObjects];
    [*(v36 + 472) removeAllObjects];
    if (*(v36 + 192))
    {

      *(v36 + 176) = *(v36 + 192);
    }

    *(v36 + 184) = 0;

    *(v36 + 192) = 0;
    *(v36 + 200) = 0;
    *(v36 + 272) = 0;
    OUTLINED_FUNCTION_56();
  }
}

- (uint64_t)_handleSampleBuffer:(uint64_t)a3 input:
{
  v94 = a3;
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_54();
  [*(v7 + 208) workerQueue];
  IsCurrentDispatchQueue = _FigIsCurrentDispatchQueue();
  if (IsCurrentDispatchQueue)
  {
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_64:
    FigCaptureGetFrameworkRadarComponent();
    OUTLINED_FUNCTION_16_45();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v73 = OUTLINED_FUNCTION_90_4(os_log_and_send_and_compose_flags_and_os_log_type);
    if (OUTLINED_FUNCTION_5_24(v73))
    {
      *v103 = 136315138;
      *&v103[4] = "[BWPhotonicEngineNode _handleSampleBuffer:input:]";
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_209();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_27_13();
    }

    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_91_10();
    v82 = OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_17_26();
    OUTLINED_FUNCTION_10();
    v90 = 1417;
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  IsCurrentDispatchQueue = FigDebugAssert3();
  if (!v4)
  {
    goto LABEL_64;
  }

LABEL_4:
  v9 = OUTLINED_FUNCTION_7_24(IsCurrentDispatchQueue, @"StillSettings");
  if (!v9)
  {
    FigCaptureGetFrameworkRadarComponent();
    OUTLINED_FUNCTION_16_45();
    v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v75 = OUTLINED_FUNCTION_90_4(v74);
    if (OUTLINED_FUNCTION_5_24(v75))
    {
      *v103 = 136315138;
      *&v103[4] = "[BWPhotonicEngineNode _handleSampleBuffer:input:]";
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_209();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_27_13();
    }

    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_91_10();
    v82 = OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_17_26();
    OUTLINED_FUNCTION_10();
    v90 = 1420;
    goto LABEL_80;
  }

  v10 = v9;
  updated = [objc_msgSend(v9 "requestedSettings")];
  v93 = v6;
  if (updated)
  {
    if ((*(v3 + 272) & 1) == 0)
    {
      [objc_msgSend(*(v3 + 200) "requestedSettings")];
      [objc_msgSend(OUTLINED_FUNCTION_25_0() "requestedSettings")];
      updated = [OUTLINED_FUNCTION_7() isEqualToString:?];
      if (updated)
      {
        updated = BWStillImageCoordinatorUpdateBeginMomentAttachmentsForSampleBuffer(v4, *(v3 + 200));
        v10 = *(v3 + 200);
      }
    }
  }

  if (dword_1EB58E340)
  {
    OUTLINED_FUNCTION_16_45();
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_125_5(v12);
    OUTLINED_FUNCTION_37_1();
    if (v5)
    {
      v13 = BWStillImageSampleBufferToDisplayString(v4);
      OUTLINED_FUNCTION_161();
      if (v14)
      {
        v15 = @"RAW";
      }

      else
      {
        v15 = @"YUV";
      }

      *v103 = 136315906;
      *&v103[4] = "[BWPhotonicEngineNode _handleSampleBuffer:input:]";
      *&v103[12] = 2114;
      *&v103[14] = v13;
      *&v103[22] = 2114;
      v104 = v15;
      *v105 = 2050;
      *&v105[2] = [v10 settingsID];
      LODWORD(v92) = 42;
      OUTLINED_FUNCTION_209();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_193();
    }

    OUTLINED_FUNCTION_2_4();
    updated = OUTLINED_FUNCTION_371();
  }

  v16 = OUTLINED_FUNCTION_7_24(updated, *off_1E798A3C8);
  if (!v16)
  {
    FigCaptureGetFrameworkRadarComponent();
    OUTLINED_FUNCTION_16_45();
    v76 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v77 = OUTLINED_FUNCTION_90_4(v76);
    if (OUTLINED_FUNCTION_5_24(v77))
    {
      *v103 = 136315138;
      *&v103[4] = "[BWPhotonicEngineNode _handleSampleBuffer:input:]";
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_209();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_27_13();
    }

    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_91_10();
    v82 = OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_17_26();
    OUTLINED_FUNCTION_10();
    v90 = 1444;
LABEL_80:
    FigCapturePleaseFileRadar(v83, v84, v85, v86, v87, v90, v88, v89, v91);
    free(v82);
    v41 = 4294954516;
    goto LABEL_43;
  }

  v17 = v16;
  v18 = [v16 objectForKeyedSubscript:*off_1E798B540];
  v19 = OUTLINED_FUNCTION_70();
  if ([(BWPhotonicEngineNode *)v19 _shouldPassthroughWithStillImageSettings:v20])
  {
    if (FigCaptureSushiRawDNGDictionaryCreatedInGraph() && FigCapturePixelFormatIsBayerRaw([objc_msgSend(v10 "requestedSettings")]))
    {
      [objc_msgSend(v17 objectForKeyedSubscript:{*off_1E798A698), "intValue"}];
      [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_135_5() "intelligentDistortionCorrectionProcessorControllerConfiguration")];
      [objc_msgSend(v10 "requestedSettings")];
      [objc_msgSend(v10 "requestedSettings")];
      v78 = OUTLINED_FUNCTION_3_19();
      [BWPhotonicEngineNode _propagateSushiRawDNGDictionaryWithOutputSampleBuffer:v78 requestedDimensions:? aspectRatio:? gdcRequested:?];
    }

    v79 = OUTLINED_FUNCTION_3_19();
    [(BWPhotonicEngineNode *)v79 _emitSampleBuffer:v80 description:v81];
    goto LABEL_27;
  }

  v105[31] = 0;
  [objc_msgSend(v10 "captureSettings")];
  v21 = OUTLINED_FUNCTION_4_3();
  [BWPhotonicEngineNode _infoForCaptureType:v21 isSupportedCaptureTypeOut:? isFusionCaptureTypeOut:?];
  if (([OUTLINED_FUNCTION_135_5() deferredPhotoProcessorEnabled] & 1) == 0 && v105[31] == 1)
  {
    LODWORD(v17) = &dword_1EB58E000;
    [objc_msgSend(v10 "requestedSettings")];
    if ([OUTLINED_FUNCTION_7() isEqualToString:?])
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_70();
  [BWPhotonicEngineNode _setupProcessingStateWithSettings:];
  if (v29)
  {
LABEL_42:
    v41 = v29;
    goto LABEL_43;
  }

  v30 = *(v3 + 608);
  if (v30)
  {
    if (dword_1EB58E340)
    {
      HIDWORD(v122) = 0;
      BYTE3(v122) = 0;
      v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_30_14();
      if (v17)
      {
        v44 = NSStringFromProtocol(&unk_1F22B4AF0);
        v45 = BWStillImageSampleBufferToShortDisplayString(v4);
        OUTLINED_FUNCTION_161();
        if (v14)
        {
          v46 = @"RAW";
        }

        else
        {
          v46 = @"YUV";
        }

        v47 = [v10 settingsID];
        v48 = *(v3 + 608);
        *v103 = 136316418;
        *&v103[4] = "[BWPhotonicEngineNode _handleSampleBuffer:input:]";
        *&v103[12] = 2114;
        *&v103[14] = v44;
        *&v103[22] = 2114;
        v104 = v45;
        *v105 = 2114;
        *&v105[2] = v46;
        *&v105[10] = 2050;
        *&v105[12] = v47;
        *&v105[20] = 2114;
        *&v105[22] = v48;
        LODWORD(v92) = 62;
        OUTLINED_FUNCTION_209();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_128();
      v30 = *(v3 + 608);
    }

    v29 = [v30 enqueueSampleBuffer:v4];
    goto LABEL_42;
  }

  v31 = OUTLINED_FUNCTION_192_0(560);
  v32 = OUTLINED_FUNCTION_192_0(408);
  v33 = OUTLINED_FUNCTION_192_0(328);
  v34 = [OUTLINED_FUNCTION_192_0(304) firstObject];
  HIBYTE(v102) = 0;
  OUTLINED_FUNCTION_135_5();
  OUTLINED_FUNCTION_223_0();
  v36 = [v35 isScalerRequiredForSettings:? portType:? preNoiseReductionScalerOut:?];
  if (v36 && HIBYTE(v102) == 1)
  {
    v36 = [OUTLINED_FUNCTION_192_0(448) firstObject];
    v37 = v36;
    if (v31)
    {
LABEL_26:
      v38 = OUTLINED_FUNCTION_7_24(v36, @"DeferredProcessingContainer");
      v39 = [objc_msgSend(OUTLINED_FUNCTION_7_24(v38 @"PhotoManifest")];
      [*(v3 + 208) deferredProcessorControllerQueue];
      OUTLINED_FUNCTION_20_30();
      v96 = 3221225472;
      v97 = __50__BWPhotonicEngineNode__handleSampleBuffer_input___block_invoke;
      v98 = &unk_1E798FD58;
      v99 = v31;
      v100 = v38;
      v101 = v39;
      ubn_dispatch_async(v40, &v95);
      goto LABEL_27;
    }
  }

  else
  {
    v37 = 0;
    if (v31)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_161();
  if (v14)
  {
    v43 = OUTLINED_FUNCTION_3_19();
    v41 = [BWPhotonicEngineNode _handleSensorRawSampleBuffer:v43];
    if (v41)
    {
      OUTLINED_FUNCTION_1_8();
      LODWORD(v91) = v41;
      FigDebugAssert3();
    }

    goto LABEL_43;
  }

  if (v32)
  {
    if ([BWRedEyeReductionControllerInput requiresInferencesFromFrame:v4])
    {
      OUTLINED_FUNCTION_3_19();
      OUTLINED_FUNCTION_223_0();
      [(BWPhotonicEngineNode *)v55 _inferenceProcessRedEyeReductionSampleBuffer:v56 settings:v57 portType:v58];
    }

    else
    {
      v59 = [(BWPhotonicEngineNode *)v3 _ubRERRouter];
      v59[2](v59, v4, 1, v32, 0);
    }

    goto LABEL_27;
  }

  if (v33)
  {
    [v33 setInputFrame:v4];
    goto LABEL_27;
  }

  if (v37)
  {
    [v37 setProcessingMode:2];
    [v37 addFrame:v4 bufferType:1];
    goto LABEL_27;
  }

  if (v34)
  {
    [v34 addFrame:v4];
    if (([objc_msgSend(v10 "captureSettings")] & 4) == 0)
    {
      if ([objc_msgSend(v10 "captureSettings")] == 7)
      {
        v60 = OUTLINED_FUNCTION_3_19();
        [BWPhotonicEngineNode _handleClientBracketFrameEmissionForSampleBuffer:v60];
        [v34 stillImageSettings];
        [v34 portType];
        v61 = OUTLINED_FUNCTION_3_19();
        if (!-[BWPhotonicEngineNode _processingNeededForSettings:portType:](v61, v62, v63) && [v34 receivedAllFrames])
        {
          [v34 portType];
          [objc_msgSend(v34 "settings")];
          OUTLINED_FUNCTION_3_19();
          [BWPhotonicEngineNode _processorControllerDidFinishProcessingInputForPortType:processorType:captureRequestIdentifier:];
        }
      }

      else
      {
        v64 = OUTLINED_FUNCTION_3_19();
        [(BWPhotonicEngineNode *)v64 _emitOrEnqueueDisparityReferenceFrameIfNeededForSampleBuffer:v65, v66, v67, v68, v69, v70, v71, v91, v92, v6, SHIDWORD(v6), v94, SWORD2(v94), v95, v96, v97, v98, v99, v100, v101, v102, *v103, *&v103[8], *&v103[16], v104, *v105, *&v105[8], *&v105[16], *&v105[24], v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125];
      }
    }

    goto LABEL_27;
  }

  v50 = OUTLINED_FUNCTION_70();
  if (![(BWPhotonicEngineNode *)v50 _processingNeededForSettings:v51 portType:v18])
  {
LABEL_27:
    v41 = 0;
LABEL_43:
    [(BWPhotonicEngineNode *)v3 _resetProcessingStateIfDone:v22];
    return v41;
  }

  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_223_0();
  v41 = [BWPhotonicEngineNode _singleImageProcessSampleBuffer:v52 settings:v53 portType:v54];
  if (v41)
  {
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3();
  }

  return v41;
}

- (void)_emitError:(uint64_t)a3 stillImageSettings:(uint64_t)a4 metadata:(uint64_t)a5 description:(uint64_t)a6
{
  if (a1)
  {
    OUTLINED_FUNCTION_227_0();
    a52 = v54;
    a53 = v56;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    if (dword_1EB58E340)
    {
      v63 = v55;
      a40 = 0;
      a39 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_125_5(os_log_and_send_and_compose_flags_and_os_log_type);
      OUTLINED_FUNCTION_37_1();
      if (v53)
      {
        v65 = [v58 settingsID];
        LODWORD(a17) = 136315907;
        *(&a17 + 4) = "[BWPhotonicEngineNode _emitError:stillImageSettings:metadata:description:]";
        WORD6(a17) = 1026;
        *(&a17 + 14) = v60;
        WORD1(a18) = 2113;
        *(&a18 + 4) = v63;
        WORD6(a18) = 2050;
        *(&a18 + 14) = v65;
        OUTLINED_FUNCTION_77_0();
        OUTLINED_FUNCTION_13();
        OUTLINED_FUNCTION_193();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_371();
    }

    OUTLINED_FUNCTION_117_6();
    v67 = [v66 newError:? sourceNode:? stillImageSettings:? metadata:?];
    [*(v62 + 208) emitQueue];
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_175_0();
    a13 = __75__BWPhotonicEngineNode__emitError_stillImageSettings_metadata_description___block_invoke;
    a14 = &unk_1E798F898;
    a15 = v62;
    a16 = v67;
    ubn_dispatch_async(v68, &a11);
    OUTLINED_FUNCTION_226();
  }
}

- (uint64_t)_handleLidarDepthPointCloudSampleBuffer:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    [OUTLINED_FUNCTION_35_21(v4) workerQueue];
    if (!_FigIsNotCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_2_9();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v5 = [*(v2 + *(v3 + 1032)) controllerForType:13];

    return [v5 addPointCloudToTimeMachine:v1];
  }

  return result;
}

- (void)_handleSupplementalPointCloudSampleBuffer:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_91();
    a48 = v51;
    a49 = v52;
    OUTLINED_FUNCTION_80();
    [*(v53 + 208) workerQueue];
    if (!_FigIsNotCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_2_9();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    os_unfair_lock_lock((v50 + 504));
    v54 = *(v50 + 508);
    os_unfair_lock_unlock((v50 + 504));
    v55 = *(v50 + 512) + 1;
    *(v50 + 512) = v55;
    if (!(v55 % 0xA))
    {
      if (dword_1EB58E340)
      {
        OUTLINED_FUNCTION_112();
        OUTLINED_FUNCTION_101_5();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v57 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, a37);
        if (OUTLINED_FUNCTION_5_24(v57))
        {
          v58 = *(v50 + 512);
          LODWORD(a17) = 136315394;
          *(&a17 + 4) = "[BWPhotonicEngineNode _handleSupplementalPointCloudSampleBuffer:]";
          WORD6(a17) = 2050;
          *(&a17 + 14) = v58;
          OUTLINED_FUNCTION_77_0();
          OUTLINED_FUNCTION_13();
          OUTLINED_FUNCTION_27_13();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_13_0();
        v55 = *(v50 + 512);
      }

      if (v55 == -1)
      {
        *(v50 + 512) = 0;
      }
    }

    if ((v54 & 1) == 0)
    {
      if (v49)
      {
        CFRetain(v49);
      }

      [*(v50 + 208) workerQueue];
      OUTLINED_FUNCTION_33_1();
      OUTLINED_FUNCTION_175_0();
      a13 = __66__BWPhotonicEngineNode__handleSupplementalPointCloudSampleBuffer___block_invoke;
      a14 = &unk_1E7990178;
      a15 = v50;
      a16 = v49;
      ubn_dispatch_async(v59, &a11);
    }

    OUTLINED_FUNCTION_90_3();
  }
}

- (void)_resetProcessingStateIfDone
{
  if (a1)
  {
    [*(a1 + 208) workerQueue];
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (*(a1 + 192) && (*(a1 + 272) & 1) == 0 && ![*(a1 + 232) count] && !objc_msgSend(*(a1 + 240), "count") && !objc_msgSend(*(a1 + 280), "count") && !objc_msgSend(*(a1 + 288), "count") && !*(a1 + 536) && !objc_msgSend(*(a1 + 328), "count") && !objc_msgSend(*(a1 + 304), "count") && !objc_msgSend(*(a1 + 344), "count") && !objc_msgSend(*(a1 + 360), "count") && !objc_msgSend(*(a1 + 424), "count") && !objc_msgSend(*(a1 + 440), "count") && !objc_msgSend(*(a1 + 448), "count") && !objc_msgSend(*(a1 + 488), "count") && !objc_msgSend(*(a1 + 384), "count") && !objc_msgSend(*(a1 + 400), "count") && !objc_msgSend(*(a1 + 408), "count") && !objc_msgSend(*(a1 + 560), "count") && *(a1 + 464) <= 0 && !objc_msgSend(*(a1 + 480), "count") && !objc_msgSend(*(a1 + 520), "count") && !objc_msgSend(*(a1 + 528), "count") && !*(a1 + 608))
    {

      [(BWPhotonicEngineNode *)a1 _resetProcessingState:v36];
    }
  }
}

- (BOOL)_shouldPassthroughWithStillImageSettings:(_BOOL8)result
{
  if (result)
  {
    v3 = [objc_msgSend(a2 "captureSettings")];
    v4 = [objc_msgSend(a2 "requestedSettings")];
    v5 = [objc_msgSend(a2 "requestedSettings")];
    v6 = [objc_msgSend(a2 "requestedSettings")];
    v8 = ([objc_msgSend(a2 "captureSettings")] & 0x800) == 0 && v6 == 0;
    if (v5)
    {
      v8 = 0;
    }

    if (v4)
    {
      v8 = 0;
    }

    return v3 && v8;
  }

  return result;
}

- (void)_setupProcessingStateWithSettings:
{
  OUTLINED_FUNCTION_84();
  v64 = v2;
  if (v0)
  {
    v3 = v1;
    v4 = v0;
    OUTLINED_FUNCTION_146_2(v0);
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_8_65();
      LODWORD(v59) = 0;
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v65 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    if ([OUTLINED_FUNCTION_145_2() hasSuccessfullySetupProcessorControllersAndMemoryResources])
    {
      if (v3)
      {
        v5 = [v3 requestedSettings];
        v6 = [v3 captureSettings];
        v7 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
        [v5 captureRequestIdentifier];
        v8 = [OUTLINED_FUNCTION_17() isEqualToString:?];
        v16 = v8;
        if (v8 && (*(v4 + 272) != 1 || ([v5 isBeginMomentCaptureSettings] & 1) != 0))
        {
LABEL_33:
          v41 = v65;
LABEL_34:
          [v41 drain];
          goto LABEL_35;
        }

        if (dword_1EB58E340)
        {
          v17 = v6;
          OUTLINED_FUNCTION_11_58();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_229(os_log_and_send_and_compose_flags_and_os_log_type);
          OUTLINED_FUNCTION_97_0();
          if (v20)
          {
            v21 = v19;
          }

          else
          {
            v21 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
          }

          if (v21)
          {
            LODWORD(FrameworkRadarComponent) = *(v4 + 272);
            LODWORD(v69) = [v5 isBeginMomentCaptureSettings];
            v22 = [v17 settingsID];
            if (*(v4 + 184) && (*(v4 + 272) & 1) == 0)
            {
              v59 = *(v4 + 184);
              v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@", resetting state for captureID:%lld"];
            }

            else
            {
              v23 = &stru_1F216A3D0;
            }

            v87 = 136316162;
            v88 = "[BWPhotonicEngineNode _setupProcessingStateWithSettings:]";
            v89 = 1026;
            *v90 = FrameworkRadarComponent;
            *&v90[4] = 1026;
            *&v90[6] = v69;
            *v91 = 2050;
            *&v91[2] = v22;
            *v92 = 2114;
            *&v92[2] = v23;
            OUTLINED_FUNCTION_48_16();
            OUTLINED_FUNCTION_11_0();
            OUTLINED_FUNCTION_141();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_128();
          v6 = v17;
          LODWORD(v7) = -346521600;
        }

        v66 = v6;
        if (*(v4 + 272) == 1)
        {
          if (v16)
          {
LABEL_30:
            if (([v6 captureFlags] & 0x200) != 0)
            {
              os_unfair_lock_lock((v4 + 504));
              *(v4 + 508) = 0;
              os_unfair_lock_unlock((v4 + 504));
            }

            v86 = 0;
            [v6 captureType];
            [BWPhotonicEngineNode _infoForCaptureType:v4 isSupportedCaptureTypeOut:? isFusionCaptureTypeOut:?];
            FigCaptureGetFrameworkRadarComponent();
            OUTLINED_FUNCTION_11_58();
            v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v47 = v100;
            os_log_type_enabled(v46, v99);
            OUTLINED_FUNCTION_115_0();
            if (v20)
            {
              v49 = v48;
            }

            else
            {
              v49 = v47;
            }

            if (v49)
            {
              v87 = 136315394;
              v88 = "[BWPhotonicEngineNode _setupProcessingStateWithSettings:]";
              v89 = 2112;
              *v90 = BWPhotoEncoderStringFromEncodingScheme([v6 captureType]);
              OUTLINED_FUNCTION_48_16();
              OUTLINED_FUNCTION_58_1();
            }

            OUTLINED_FUNCTION_8_1();
            OUTLINED_FUNCTION_13_0();
            v50 = BWPhotoEncoderStringFromEncodingScheme([v6 captureType]);
            v93 = 138412290;
            v94 = v50;
            OUTLINED_FUNCTION_43_0();
            v51 = OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_3_19();
            OUTLINED_FUNCTION_10();
            FigCapturePleaseFileRadar(v52, v53, v54, v55, v56, 5193, v57, v58, &v93);
            free(v51);
            goto LABEL_33;
          }

          v24 = v6;
          FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
          OUTLINED_FUNCTION_11_58();
          v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_229(v25);
          OUTLINED_FUNCTION_97_0();
          if (v20)
          {
            v27 = v26;
          }

          else
          {
            v27 = v7;
          }

          if (v27)
          {
            v28 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
            v29 = *(v4 + 184);
            v87 = 136315906;
            v88 = "[BWPhotonicEngineNode _setupProcessingStateWithSettings:]";
            v89 = 2050;
            *v90 = v29;
            *&v90[8] = 2050;
            *v91 = [v3 settingsID];
            *&v91[8] = 2112;
            *v92 = BWPhotoEncoderStringFromEncodingScheme([v24 captureType]);
            OUTLINED_FUNCTION_48_16();
            OUTLINED_FUNCTION_11_0();
            OUTLINED_FUNCTION_141();
          }

          else
          {
            v28 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
          }

          OUTLINED_FUNCTION_8_1();
          OUTLINED_FUNCTION_128();
          v30 = *(v4 + v28[265]);
          v31 = [v3 settingsID];
          v32 = BWPhotoEncoderStringFromEncodingScheme([v66 captureType]);
          v93 = 134349570;
          v94 = v30;
          v95 = 2050;
          v96 = v31;
          v97 = 2112;
          v98 = v32;
          LODWORD(v60) = 32;
          v33 = OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_10();
          FigCapturePleaseFileRadar(v34, v35, v36, v37, v38, 5175, v39, v40, &v93);
          free(v33);
          v6 = v66;
        }

        [(BWPhotonicEngineNode *)v4 _resetProcessingState:v9];
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_11_58();
      v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v45 = OUTLINED_FUNCTION_157(v44);
      if (OUTLINED_FUNCTION_5_2(v45))
      {
        goto LABEL_40;
      }
    }

    else
    {
      OUTLINED_FUNCTION_11_58();
      v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v43 = OUTLINED_FUNCTION_157(v42);
      if (OUTLINED_FUNCTION_5_2(v43))
      {
LABEL_40:
        v87 = 136315138;
        v88 = "[BWPhotonicEngineNode _setupProcessingStateWithSettings:]";
        OUTLINED_FUNCTION_48_16();
        OUTLINED_FUNCTION_7_4();
        _os_log_send_and_compose_impl();
      }
    }

    v41 = v65;
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_16_1();
    goto LABEL_34;
  }

LABEL_35:
  OUTLINED_FUNCTION_81();
}

- (void)_inferenceProcessRedEyeReductionSampleBuffer:(uint64_t)a3 settings:(uint64_t)a4 portType:
{
  if (!a1)
  {
    return;
  }

  OUTLINED_FUNCTION_80();
  [OUTLINED_FUNCTION_155_0(v8) workerQueue];
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  cf = 0;
  v9 = [OUTLINED_FUNCTION_207_0() inferenceControllerGroup];
  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  ImageBuffer = CMSampleBufferGetImageBuffer(v4);
  if (!ImageBuffer)
  {
    v12 = 0;
LABEL_16:
    CVPixelBufferRelease(v12);
    [objc_msgSend(v5[51] objectForKeyedSubscript:{a4), "addFrame:faceObservations:", v4, 0}];
    return;
  }

  v11 = ImageBuffer;
  [v5[19] resolvedProcessingResolutionFlavorForSettings:a3 portType:a4];
  v12 = [objc_msgSend(OUTLINED_FUNCTION_207_0() "pixelBufferProviderForInferencesWithResolutionFlavor:"newPixelBuffer"")];
  if (!v12)
  {
    goto LABEL_16;
  }

  if ([(BWPhotonicEngineNode *)v5 _scaleInferenceInputForRedEyeReductionFromPixelBuffer:v11 outputPixelBuffer:v12])
  {
    goto LABEL_16;
  }

  v13 = OUTLINED_FUNCTION_1_19();
  if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(v13, v14, v15, v16))
  {
    goto LABEL_16;
  }

  if ([(BWPhotonicEngineNode *)v5 _setupProcessingStateForInferenceWithSettings:a3 portType:a4 inferenceInputBufferType:0xFuLL])
  {
    goto LABEL_16;
  }

  v17 = [v5[45] objectForKeyedSubscript:a4];
  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = v17;
  if (v4)
  {
    CFRetain(v4);
  }

  v19 = [OUTLINED_FUNCTION_207_0() inferenceControllerGroup];
  [OUTLINED_FUNCTION_207_0() inferenceControllerQueue];
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_175_0();
  v22 = __87__BWPhotonicEngineNode__inferenceProcessRedEyeReductionSampleBuffer_settings_portType___block_invoke;
  v23 = &unk_1E7991EF8;
  v24 = v18;
  v25 = cf;
  v26 = v4;
  ubn_dispatch_group_async(v19, v20, v21);
  CVPixelBufferRelease(v12);
  if (cf)
  {
    CFRelease(cf);
  }
}

- (id)_ubRERRouter
{
  if (result)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_136_4();
    return OUTLINED_FUNCTION_242_0(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, __36__BWPhotonicEngineNode__ubRERRouter__block_invoke, &unk_1E79992C8, v12);
  }

  return result;
}

- (BOOL)_processingNeededForSettings:(uint64_t)a3 portType:
{
  if (result)
  {
    v4 = [objc_msgSend(objc_msgSend(a2 "captureSettings")];
    if ([objc_msgSend(a2 "captureSettings")] & 0x4000000000) == 0 || (v4)
    {
      if (v4)
      {
        return 1;
      }

      v5 = [objc_msgSend(objc_msgSend(a2 "requestedSettings")];
    }

    else
    {
      v5 = [objc_msgSend(a2 "captureSettings")];
    }

    return v5 != 0;
  }

  return result;
}

- (void)_processorControllerDidFinishProcessingInputForPortType:processorType:captureRequestIdentifier:
{
  OUTLINED_FUNCTION_91();
  v5 = v4;
  if (v6)
  {
    v7 = v3;
    v8 = v2;
    OUTLINED_FUNCTION_80();
    [*(v9 + 208) workerQueue];
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if ([v7 isEqualToString:*(v1 + 192)])
    {
      switch(v8)
      {
        case 2:
        case 3:
        case 5:
        case 9:
        case 10:
        case 11:
        case 13:
        case 15:
        case 16:
        case 17:
          goto LABEL_29;
        case 4:
          OUTLINED_FUNCTION_108_3(408);
          goto LABEL_29;
        case 6:
          v14 = [objc_msgSend(OUTLINED_FUNCTION_86_4(304) "objectForKeyedSubscript:"firstObject"")];
          if (!v14)
          {
            break;
          }

          v15 = v14;
          if ([v14 remainingProcessingCount] > 1)
          {
            OUTLINED_FUNCTION_90_3();

            [v30 setRemainingProcessingCount:?];
            return;
          }

          [v15 setRemainingProcessingCount:0];
          [objc_msgSend(OUTLINED_FUNCTION_86_4(304) "objectForKeyedSubscript:{"removeObject:", v15}")];
          if (![objc_msgSend(OUTLINED_FUNCTION_86_4(304) "objectForKeyedSubscript:"count"")])
          {
            OUTLINED_FUNCTION_108_3(304);
          }

          if (dword_1EB58E340)
          {
            v16 = OUTLINED_FUNCTION_63_13();
            OUTLINED_FUNCTION_63(v16);
            OUTLINED_FUNCTION_4_0();
            if (v5)
            {
              BWStillImageProcessorTypeToShortString(6);
              v17 = OUTLINED_FUNCTION_129_4();
              BWPortTypeToDisplayString(v17, v18);
              [objc_msgSend(OUTLINED_FUNCTION_86_4(304) "objectForKeyedSubscript:"count"")];
              OUTLINED_FUNCTION_23_8();
              OUTLINED_FUNCTION_5();
LABEL_19:
              OUTLINED_FUNCTION_13();
              OUTLINED_FUNCTION_27_13();
            }

LABEL_47:
            OUTLINED_FUNCTION_2_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          break;
        case 7:
          if (![OUTLINED_FUNCTION_86_4(424) objectForKeyedSubscript:?])
          {
            break;
          }

          v20 = [objc_msgSend(OUTLINED_FUNCTION_86_4(424) "objectForKeyedSubscript:"intValue"")];
          if (v20 > 1)
          {
            [MEMORY[0x1E696AD98] numberWithInt:(v20 - 1)];
          }

          else
          {
            OUTLINED_FUNCTION_108_3(416);
          }

LABEL_29:
          OUTLINED_FUNCTION_90_3();

          [v24 setObject:? forKeyedSubscript:?];
          return;
        case 8:
          --*(v1 + 464);

          v19 = 456;
          goto LABEL_26;
        case 12:
          v21 = [objc_msgSend(OUTLINED_FUNCTION_86_4(240) "objectForKeyedSubscript:"intValue"")];
          v22 = v21;
          if (v21 >= 2)
          {
            v23 = [MEMORY[0x1E696AD98] numberWithInt:(v21 - 1)];
          }

          else
          {
            v23 = 0;
          }

          [*(v1 + 240) setObject:v23 forKeyedSubscript:v0];
          v26 = [objc_msgSend(OUTLINED_FUNCTION_86_4(232) "objectForKeyedSubscript:"count"")];
          if (v22 <= 1 && v26 == 0)
          {
            OUTLINED_FUNCTION_108_3(232);
          }

          if ([*(v1 + 232) count])
          {
            break;
          }

          [*(v1 + 208) flushSoftISPOutputBufferPools];
          OUTLINED_FUNCTION_90_3();

          [v28 flushUltraHighResolutionBufferPools];
          return;
        case 14:

          v19 = 536;
LABEL_26:
          *(v1 + v19) = 0;
          break;
        case 18:
          v10 = [objc_msgSend(OUTLINED_FUNCTION_86_4(448) "objectForKeyedSubscript:"firstObject"")];
          if (!v10)
          {
            break;
          }

          [objc_msgSend(OUTLINED_FUNCTION_86_4(448) "objectForKeyedSubscript:{"removeObject:", v10}")];
          if (![objc_msgSend(OUTLINED_FUNCTION_86_4(448) "objectForKeyedSubscript:"count"")])
          {
            OUTLINED_FUNCTION_108_3(448);
          }

          if (!dword_1EB58E340)
          {
            break;
          }

          v11 = OUTLINED_FUNCTION_63_13();
          OUTLINED_FUNCTION_63(v11);
          OUTLINED_FUNCTION_4_0();
          if (!v5)
          {
            goto LABEL_47;
          }

          BWStillImageProcessorTypeToShortString(18);
          v12 = OUTLINED_FUNCTION_129_4();
          BWPortTypeToDisplayString(v12, v13);
          [objc_msgSend(OUTLINED_FUNCTION_86_4(448) "objectForKeyedSubscript:"count"")];
          OUTLINED_FUNCTION_23_8();
          OUTLINED_FUNCTION_5();
          goto LABEL_19;
        default:
          break;
      }
    }
  }

  OUTLINED_FUNCTION_90_3();
}

- (uint64_t)_singleImageProcessSampleBuffer:(uint64_t)a1 settings:(uint64_t)a2 portType:(uint64_t)a3
{
  if (!a1)
  {
    return 0;
  }

  [*(a1 + 208) workerQueue];
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  v5 = [[BWStillImageProcessingPlan alloc] initWithSettings:a3];
  OUTLINED_FUNCTION_46_19();
  OUTLINED_FUNCTION_144_0();
  [v6 resolvedProcessingResolutionFlavorForSettings:? portType:?];
  v7 = [BWNRFProcessorInput alloc];
  OUTLINED_FUNCTION_144_0();
  v9 = [v8 initWithSettings:? portType:? resolutionFlavor:?];
  OUTLINED_FUNCTION_46_19();
  OUTLINED_FUNCTION_144_0();
  if ([v10 isInferenceInputImageRequiredForSettings:? portType:?])
  {
    OUTLINED_FUNCTION_20_30();
    v27 = 3221225472;
    OUTLINED_FUNCTION_21_34();
    v28 = v11;
    v29 = &unk_1E79992C8;
    v30 = a1;
    [v9 addOutputSampleBufferRouter:objc_msgSend(v26 forBufferTypes:"copy") name:{&unk_1F224A428, @"SingleImage InferenceInput NRF --> Inference"}];
    OUTLINED_FUNCTION_214();
    [v12 addInput:? sequenceNumber:? portType:? bufferType:?];
  }

  [*(a1 + 208) workerQueue];
  OUTLINED_FUNCTION_20_30();
  v27 = 3221225472;
  v28 = __65__BWPhotonicEngineNode__standardNROutputRouterWithExpectedQueue___block_invoke;
  v29 = &unk_1E7999390;
  v30 = v13;
  v31 = a1;
  [v9 addOutputSampleBufferRouter:objc_msgSend(v26 forBufferTypes:"copy") name:{&unk_1F224A440, @"SingleImage --> Emit"}];
  [OUTLINED_FUNCTION_98_7() addFrame:?];
  OUTLINED_FUNCTION_214();
  [v14 addInput:? sequenceNumber:? portType:? bufferType:?];
  [OUTLINED_FUNCTION_46_19() areInferencesRequiredByProcessorControllersForSettings:a3];
  v15 = OUTLINED_FUNCTION_1_19();
  [BWPhotonicEngineNode _setupProcessingStateForJasperDisparityIfNeededWithSettings:v15 processingPlan:?];
  if (!v16)
  {
    OUTLINED_FUNCTION_1_19();
    [BWPhotonicEngineNode _setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings:sequenceNumber:portType:processingPlan:];
    if (!v16)
    {
      OUTLINED_FUNCTION_1_19();
      OUTLINED_FUNCTION_131_6();
      v22 = [(BWPhotonicEngineNode *)v17 _setupProcessingStateForScalerIfNeededWithSettings:v18 sequenceNumber:v19 portType:v20 preNoiseReductionScaler:v21 processingPlan:v5];
      if (v22)
      {
        v24 = v22;
        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3();
        goto LABEL_11;
      }

      [*(a1 + 208) controllerForType:6];
      OUTLINED_FUNCTION_177_0();
      OUTLINED_FUNCTION_72();
      v16 = [v23 enqueueInputForProcessing:? delegate:? processErrorRecoveryFrame:? processErrorRecoveryProxy:? processOriginalImage:? processToneMapping:? processInferenceInputImage:? clientBracketSequenceNumber:? processSemanticRendering:? provideInferenceInputImageForProcessing:? processSmartStyleRenderingInput:? inferencesAvailable:?];
    }
  }

  v24 = v16;
LABEL_11:

  return v24;
}

- (void)_emitSampleBuffer:(uint64_t)a3 description:
{
  if (a1)
  {
    [(BWPhotonicEngineNode *)a1 _removeNonPropagatedAttachedMediaFromSampleBuffer:a2];
    v6 = OUTLINED_FUNCTION_17_26();
    [BWPhotonicEngineNode _propagatedErrorRecoveryMetadataIfNeededForSampleBuffer:v6];
    if (a2)
    {
      CFRetain(a2);
    }

    [*(a1 + 208) emitQueue];
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_136_4();
    v9 = __54__BWPhotonicEngineNode__emitSampleBuffer_description___block_invoke;
    v10 = &unk_1E798FE50;
    v12 = a1;
    v13 = a2;
    v11 = a3;
    ubn_dispatch_async(v7, v8);
  }
}

- (void)_stashSensorRawErrorRecoveryFrameIfNeededUsingSampleBuffer:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_54();
    if ((BWStillImageCaptureFrameFlagsForSampleBuffer(v3) & 0x20) != 0)
    {
      PortType = BWSampleBufferGetPortType(v2);
      OUTLINED_FUNCTION_190_0(PortType, v5, v6, v7, v8, v9, v10, v11, v12, cf);
      [*(v1 + 264) setObject:cfa forKeyedSubscript:PortType];
      if (cfa)
      {
        CFRelease(cfa);
      }
    }
  }
}

- (void)_deferredCaptureHandleSensorRawSampleBuffer:(int)a3
{
  OUTLINED_FUNCTION_58_2();
  a44 = v45;
  a45 = v48;
  if (!v46)
  {
    goto LABEL_38;
  }

  v49 = v47;
  if (!v47)
  {
    goto LABEL_38;
  }

  v50 = v46;
  v51 = OUTLINED_FUNCTION_7_24(v46, *off_1E798A3C8);
  v52 = [v51 objectForKeyedSubscript:*off_1E798B540];
  if (*(v50 + 272) != 1)
  {
    v55 = OUTLINED_FUNCTION_45_13();
    if (!v55)
    {
      goto LABEL_38;
    }

    if (([objc_msgSend(v55 "portType")] & 1) != 0 || (objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_45_13(), "captureSettings"), "captureFlags") & 0x4000000000) == 0)
    {
      [OUTLINED_FUNCTION_45_13() portType];
      if ([OUTLINED_FUNCTION_8() isEqualToString:?])
      {
        v56 = [objc_msgSend(v51 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
        if (([objc_msgSend(OUTLINED_FUNCTION_45_13() "captureStreamSettings")] & 0x200000000) == 0 || v56 != 1)
        {
LABEL_36:
          [OUTLINED_FUNCTION_45_13() stillImageSettings];
          [objc_msgSend(OUTLINED_FUNCTION_45_13() "captureStreamSettings")];
          v78 = OUTLINED_FUNCTION_70();
          if ([(BWPhotonicEngineNode *)v78 _processingNeededForSettings:v79 portType:v80])
          {
            [OUTLINED_FUNCTION_45_13() addSensorRawSampleBuffer:v49];
          }

          goto LABEL_38;
        }

        v57 = OUTLINED_FUNCTION_178();
        v58 = [(BWPhotonicEngineNodeConfiguration *)v57 deepZoomVersion];
        HIBYTE(a32) = v58 > 0;
        if (v58 >= 1 && BWDeepFusionEnhancedResolutionCanProcessUsingQuadraFrame(v49, &a32 + 7) && dword_1EB58E340)
        {
          v59 = OUTLINED_FUNCTION_165();
          v60 = a32;
          os_log_type_enabled(v59, HIBYTE(a31));
          OUTLINED_FUNCTION_97_0();
          if (v62)
          {
            v63 = v61;
          }

          else
          {
            v63 = v60;
          }

          if (v63)
          {
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_13();
            OUTLINED_FUNCTION_193();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_128();
        }

        if (HIBYTE(a32) == 1)
        {
          [objc_msgSend(OUTLINED_FUNCTION_45_13() "pipelineParameters")];
          v64 = OUTLINED_FUNCTION_178();
          v65 = [(BWPhotonicEngineNodeConfiguration *)v64 deepZoomVersion];
          [objc_msgSend(OUTLINED_FUNCTION_45_13() "pipelineParameters")];
          [objc_msgSend(OUTLINED_FUNCTION_45_13() "pipelineParameters")];
          [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_45_13() "captureSettings")];
          if (v66 >= 1.4118)
          {
            [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_45_13() "captureSettings")];
            if (v67 < 2.0)
            {
              if ([+[FigCaptureCameraParameters deepZoomTransferWithZoomedImageEnabledForPortType:"deepZoomTransferWithZoomedImageEnabledForPortType:sensorIDString:"]
              {
                [objc_msgSend(OUTLINED_FUNCTION_45_13() "pipelineParameters")];
              }

              v68 = 0;
LABEL_35:
              [OUTLINED_FUNCTION_45_13() canProcessEnhancedResolution:HIBYTE(a32) skipInferences:v68];
              if ((a32 & 0x100000000000000) == 0)
              {
                if (dword_1EB58E340)
                {
                  v86 = OUTLINED_FUNCTION_165();
                  v87 = os_log_type_enabled(v86, HIBYTE(a31));
                  if (OUTLINED_FUNCTION_5_2(v87))
                  {
                    OUTLINED_FUNCTION_5();
                    OUTLINED_FUNCTION_7_4();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_2_4();
                  OUTLINED_FUNCTION_16_1();
                }

                goto LABEL_38;
              }

              goto LABEL_36;
            }
          }
        }

        else
        {
          v69 = OUTLINED_FUNCTION_178();
          v70 = [-[BWPhotonicEngineNodeConfiguration sensorConfigurationsByPortType](v69) objectForKeyedSubscript:v52];
          v71 = [OUTLINED_FUNCTION_76_7(264) objectForKeyedSubscript:?];
          if (([objc_msgSend(OUTLINED_FUNCTION_45_13() "captureStreamSettings")] & 0x4000000000) != 0)
          {
            v74 = OUTLINED_FUNCTION_178();
            v75 = [(BWPhotonicEngineNodeConfiguration *)v74 deepZoomVersion];
            [objc_msgSend(OUTLINED_FUNCTION_45_13() "pipelineParameters")];
            v76 = [OUTLINED_FUNCTION_45_13() pipelineParameters];
            v77 = 5;
          }

          else
          {
            if ([BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForSampleBuffer:v71 type:1 sensorConfiguration:v70 intermediateZoomSrcRectOut:0 intermediateZoomDstRectOut:0])
            {
              v72 = OUTLINED_FUNCTION_178();
              v73 = [(BWPhotonicEngineNodeConfiguration *)v72 deepZoomVersion];
              [objc_msgSend(OUTLINED_FUNCTION_45_13() "pipelineParameters")];
              [objc_msgSend(OUTLINED_FUNCTION_45_13() "pipelineParameters")];
              v68 = 1;
              [objc_msgSend(OUTLINED_FUNCTION_45_13() "pipelineParameters")];
              goto LABEL_35;
            }

            [objc_msgSend(OUTLINED_FUNCTION_45_13() "pipelineParameters")];
            v76 = [OUTLINED_FUNCTION_45_13() pipelineParameters];
            v77 = 0;
          }

          [v76 setDeepZoomMode:v77];
        }

        v68 = 0;
        goto LABEL_35;
      }

LABEL_38:
      OUTLINED_FUNCTION_56();
      return;
    }

    v81 = BWStillImageCaptureFrameFlagsForSampleBuffer(v49);
    if (!*(v50 + 552))
    {
      *(v50 + 552) = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    if ((v81 & 0x10) != 0)
    {
      cf = 0;
      BWCMSampleBufferCreateCopyIncludingMetadata(v49, &cf);
      v82 = cf;
      v83 = *(v50 + 552);
      v84 = &unk_1F2247B00;
    }

    else
    {
      if ((v81 & 4) == 0)
      {
LABEL_47:
        [OUTLINED_FUNCTION_45_13() stillImageSettings];
        v85 = OUTLINED_FUNCTION_3_30();
        [BWPhotonicEngineNode _deferredCaptureAddSecondaryStereoPhotoCaptureSampleBufferIfReadyForSettings:v85];
        goto LABEL_38;
      }

      cf = 0;
      BWCMSampleBufferCreateCopyIncludingMetadata(v49, &cf);
      v82 = cf;
      v83 = *(v50 + 552);
      v84 = &unk_1F2247D10;
    }

    [v83 setObject:v82 forKeyedSubscript:v84];
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_47;
  }

  [OUTLINED_FUNCTION_76_7(288) objectForKeyedSubscript:?];
  OUTLINED_FUNCTION_56();

  [v53 addObject:?];
}

- (void)_handleSampleBufferForFocusPixelDisparityInputIfNeeded:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_227_0();
    a51 = v55;
    a52 = v56;
    OUTLINED_FUNCTION_54();
    v58 = OUTLINED_FUNCTION_7_24(v57, @"StillSettings");
    v59 = OUTLINED_FUNCTION_7_24(v58, *off_1E798A3C8);
    v60 = [v59 objectForKeyedSubscript:*off_1E798B540];
    OUTLINED_FUNCTION_148_0();
    v62 = [OUTLINED_FUNCTION_89_4(v61) resolvedProcessingResolutionFlavorForSettings:? portType:?];
    if ([OUTLINED_FUNCTION_121_4() depthDataType] == 9 && (objc_msgSend(objc_msgSend(v58, "captureSettings"), "captureFlags") & 0x800) != 0)
    {
      v63 = [[BWSoftISPProcessorControllerInput alloc] initWithSettings:v58 portType:v60 resolutionFlavor:v62];
      OUTLINED_FUNCTION_26_14();
      a34 = 3221225472;
      a35 = __79__BWPhotonicEngineNode__handleSampleBufferForFocusPixelDisparityInputIfNeeded___block_invoke;
      a36 = &unk_1E799DF50;
      a37 = v52;
      a38 = v58;
      a39 = v59;
      a40 = v60;
      [v64 addOutputSampleBufferRouter:&a33 forBufferTypes:&unk_1F224A410 name:@"FocusPixelDisparity SoftISP --> Emit"];
      [(BWSoftISPProcessorControllerInput *)v63 addFrame:v53 processingMode:1];
      if (dword_1EB58E340)
      {
        OUTLINED_FUNCTION_202();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_30_14();
        if (v54)
        {
          [v58 settingsID];
          v66 = OUTLINED_FUNCTION_133();
          BWStillImageSampleBufferToShortDisplayString(v66);
          OUTLINED_FUNCTION_164();
          OUTLINED_FUNCTION_13_47();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_128();
      }

      v67 = OUTLINED_FUNCTION_70();
      [BWPhotonicEngineNode _enqueueSoftISPInput:v67];
    }

    OUTLINED_FUNCTION_226();
  }
}

- (uint64_t)_setupProcessingStateIfNeededWithBeginMomentSettings:(uint64_t)a1
{
  if (a1)
  {
    [*(a1 + 208) workerQueue];
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if ([*(a1 + 208) hasSuccessfullySetupProcessorControllersAndMemoryResources])
    {
      if ([objc_msgSend(a2 "requestedSettings")])
      {
        [a2 captureSettings];
        if ([OUTLINED_FUNCTION_8() processingOnBeginMomentSupportedForCaptureSettings:?])
        {
          [objc_msgSend(a2 "requestedSettings")];
          if (([OUTLINED_FUNCTION_7() isEqualToString:?] & 1) == 0)
          {
            if (dword_1EB58E340)
            {
              OUTLINED_FUNCTION_30_17();
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v55);
              OUTLINED_FUNCTION_30();
              if (&dword_1EB58E000)
              {
                [a2 settingsID];
                if (*(a1 + 184))
                {
                  v31 = *(a1 + 184);
                  [MEMORY[0x1E696AEC0] stringWithFormat:@", resetting state for captureID:%lld"];
                }

                LODWORD(v32) = 32;
                OUTLINED_FUNCTION_212();
                OUTLINED_FUNCTION_11_0();
                OUTLINED_FUNCTION_141();
              }

              OUTLINED_FUNCTION_2_4();
              OUTLINED_FUNCTION_56_0();
            }

            [(BWPhotonicEngineNode *)a1 _resetProcessingState:v4];
            *(a1 + 184) = [a2 settingsID];
            *(a1 + 192) = [objc_msgSend(a2 "requestedSettings")];
            *(a1 + 272) = 1;
            v12 = OUTLINED_FUNCTION_45_0();
            [BWPhotonicEngineNode _releaseResourcesWithSettings:v12];
            [*(a1 + 208) prepareSharedExternalMemoryResourceForProcessorControllersIfNeededWithSettings:a2];
            [*(a1 + 208) kickoffAnyPostonedResourceAllocations];
            v13 = OUTLINED_FUNCTION_45_0();
            [BWPhotonicEngineNode _processingOrderByPortTypeForSettings:v13];
            v15 = v14;
            OUTLINED_FUNCTION_17_20();
            v17 = [v16 countByEnumeratingWithState:? objects:? count:?];
            if (v17)
            {
              v18 = v17;
              while (2)
              {
                for (i = 0; i != v18; ++i)
                {
                  OUTLINED_FUNCTION_10_18();
                  if (!v20)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v21 = OUTLINED_FUNCTION_45_0();
                  v22 = [BWPhotonicEngineNode _setupSoftISPProcessingStateIfNeededWithSettings:v21 portType:? processingPlan:?];
                  if (v22)
                  {
                    v23 = v22;
                    OUTLINED_FUNCTION_1_5();
                    FigDebugAssert3();
                    return v23;
                  }
                }

                OUTLINED_FUNCTION_17_20();
                v18 = [v15 countByEnumeratingWithState:? objects:? count:?];
                if (v18)
                {
                  continue;
                }

                break;
              }
            }
          }

          return 0;
        }

        OUTLINED_FUNCTION_30_17();
        v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v30 = os_log_type_enabled(v29, v55);
        if (OUTLINED_FUNCTION_6(v30))
        {
          OUTLINED_FUNCTION_212();
          OUTLINED_FUNCTION_58_1();
        }

LABEL_31:
        OUTLINED_FUNCTION_1_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        return 4294950488;
      }

      OUTLINED_FUNCTION_30_17();
      v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v28 = OUTLINED_FUNCTION_157(v27);
      if (!OUTLINED_FUNCTION_5_2(v28))
      {
        goto LABEL_31;
      }
    }

    else
    {
      OUTLINED_FUNCTION_30_17();
      v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v26 = OUTLINED_FUNCTION_157(v25);
      if (!OUTLINED_FUNCTION_5_2(v26))
      {
        goto LABEL_31;
      }
    }

    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_212();
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
    goto LABEL_31;
  }

  return 0;
}

- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5
{
  if (self)
  {
    return OUTLINED_FUNCTION_85_3(self, a2, a3, a4, a5, 0);
  }

  return self;
}

- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5 dimensions:(id)a6
{
  if (self)
  {
    return OUTLINED_FUNCTION_111_5(self, a2, a3, a4, a5, 0);
  }

  return self;
}

- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5 attachedMediaKey:(id)a6
{
  if (self)
  {
    return OUTLINED_FUNCTION_85_3(self, a2, a3, a4, a5, a6);
  }

  return self;
}

- (__CVBuffer)_newOutputPixelBufferForProcessorController:(void *)a3 processorInput:(uint64_t)a4 type:(void *)a5 pixelBufferProvider:
{
  if (!a1)
  {
    return 0;
  }

  mach_absolute_time();
  if (a5)
  {
    v10 = [a5 newPixelBuffer];
    v11 = v10;
    if (a4 == 41 && v10)
    {
      CVBufferSetAttachment(v10, *MEMORY[0x1E6965F98], *MEMORY[0x1E6965FC8], kCVAttachmentMode_ShouldPropagate);
      CVBufferSetAttachment(v11, *MEMORY[0x1E6965D88], *MEMORY[0x1E6965DD0], kCVAttachmentMode_ShouldPropagate);
      CVBufferSetAttachment(v11, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
    }
  }

  else
  {
    v11 = 0;
  }

  mach_absolute_time();
  FigHostTimeToNanoseconds();
  if (dword_1EB58E340)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_37_1();
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        objc_opt_isKindOfClass();
      }

      BWStillImageBufferTypeToShortString(a4);
      BWStillImageProcessorTypeToShortString([a2 type]);
      v13 = [a3 portType];
      BWPortTypeToDisplayString(v13, v14);
      [objc_msgSend(a3 "captureSettings")];
      BWStringFromPixelBuffer();
      BWStringFromPixelBufferSurface(v11);
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_371();
  }

  return v11;
}

- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5 attachedMediaKey:(id)a6 pixelFormat:(unsigned int)a7 dimensions:(id)a8 dimensionAlignment:(int)a9
{
  OUTLINED_FUNCTION_84();
  +[BWOnDemandPixelBufferAllocator onDemandAllocatorWithDimensions:dimensionAlignment:pixelFormat:name:memoryPool:](BWOnDemandPixelBufferAllocator, "onDemandAllocatorWithDimensions:dimensionAlignment:pixelFormat:name:memoryPool:", v12, v20, v11, BWStillImageBufferTypeToShortString(v9), [*(v10 + 16) memoryPool]);
  OUTLINED_FUNCTION_144_0();
  OUTLINED_FUNCTION_81();

  return [(BWPhotonicEngineNode *)v13 _newOutputPixelBufferForProcessorController:v14 processorInput:v15 type:v16 pixelBufferProvider:v17];
}

- (void)_attemptPiecemealEncodingForGainMapSbuf:(uint64_t)a3 primarySbuf:(uint64_t)a4 portType:
{
  if (a1 && a2 && a3 && [objc_msgSend(*(a1 + 424) objectForKeyedSubscript:{a4), "intValue"}] <= 0)
  {
    v6 = 0x1F217BF50;
    v7 = a2;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    OUTLINED_FUNCTION_44_11();
    OUTLINED_FUNCTION_134_5();
    [BWPhotonicEngineNode _piecemealEncodeAttachedMediaByKey:v5 primarySbuf:? portType:?];
  }
}

- (void)_piecemealEncodeAttachedMediaByKey:(uint64_t)a1 primarySbuf:portType:
{
  if (a1)
  {
    OUTLINED_FUNCTION_91();
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v7 = [v3 count];
    if (v2)
    {
      if (v7)
      {
        [objc_msgSend(*(v6 + 200) "captureSettings")];
        if ([OUTLINED_FUNCTION_8() isEqualToString:?])
        {
          v8 = [*(v6 + 208) controllerForType:19];
          if (v8)
          {
            v26 = OUTLINED_FUNCTION_239(v8, *off_1E798A3C8);
            if (v26)
            {
              OUTLINED_FUNCTION_131_6();
              v10 = [v9 inputForStillImageSettings:? portType:? portraitAdjustedImage:? optionalSampleBuffer:? forEarlyEncoding:?];
              if (v10)
              {
                v11 = v10;
                v12 = BWStillImageProcessingFlagsForSampleBuffer(v2);
                if ([objc_msgSend(*(v6 + 200) "captureSettings")])
                {
                  if (*(v6 + 536))
                  {
                    v12 = v12 | 0x1000;
                  }

                  else
                  {
                    v12 = v12;
                  }
                }

                v13 = [MEMORY[0x1E695DF70] array];
                v14 = [v4 allKeys];
                OUTLINED_FUNCTION_17_20();
                v16 = [v15 countByEnumeratingWithState:? objects:? count:?];
                if (v16)
                {
                  v17 = v16;
                  v18 = MEMORY[0];
                  do
                  {
                    for (i = 0; i != v17; ++i)
                    {
                      if (MEMORY[0] != v18)
                      {
                        objc_enumerationMutation(v14);
                      }

                      v20 = *(8 * i);
                      v21 = [v4 objectForKeyedSubscript:v20];
                      if (BWPhotonicEngineUtilitiesSampleBufferEligibleForPiecemealEncoding(v21))
                      {
                        [v11 addSbufForPiecemealEncoding:v21 attachedMediakey:v20 primaryImageMetadata:v26 processingFlags:v12];
                        [v13 addObject:v20];
                      }
                    }

                    OUTLINED_FUNCTION_17_20();
                    v17 = OUTLINED_FUNCTION_21_10(v22, v23, v24, v25);
                  }

                  while (v17);
                }
              }
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_90_3();
  }
}

- (void)_attemptPiecemealEncodingOfAuxImagesForSmartStylesCaptureWithSampleBuffer:(uint64_t)a1 portType:(uint64_t)a2
{
  if (a1)
  {
    if (a2)
    {
      BWPhotoEncoderSmartStylesAttachedMediaKeysForPiecemealEncoding(*(a1 + 200));
      if ([objc_msgSend(OUTLINED_FUNCTION_64_11(208) "attachedMediaFromInferencesOrSampleBuffer:"count" attachedMediaKeys:?")])
      {
        OUTLINED_FUNCTION_2_7();
        OUTLINED_FUNCTION_134_5();

        [BWPhotonicEngineNode _piecemealEncodeAttachedMediaByKey:v2 primarySbuf:? portType:?];
      }
    }
  }
}

uint64_t __100__BWPhotonicEngineNode_processorController_didFinishProcessingSampleBuffer_type_processorInput_err___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return OUTLINED_FUNCTION_109_3(result, *(a1 + 40), 0);
  }

  return result;
}

- (void)_deferredCaptureAddBuffer:bufferType:captureFrameFlags:metadata:rawThumbnailsBuffer:rawThumbnailsMetadata:portType:
{
  OUTLINED_FUNCTION_84();
  if (v0 && (v2 = v0, (v3 = *(v0 + 536)) != 0) && [v1 isEqualToString:{objc_msgSend(v3, "portType")}] && -[BWPhotonicEngineNode _processingNeededForSettings:portType:](v2, objc_msgSend(*(v2 + 536), "stillImageSettings"), objc_msgSend(*(v2 + 536), "portType")))
  {
    OUTLINED_FUNCTION_81();

    [v4 addBuffer:? bufferType:? captureFrameFlags:? metadata:? rawThumbnailsBuffer:? rawThumbnailsMetadata:?];
  }

  else
  {
    OUTLINED_FUNCTION_81();
  }
}

- (void)_removeNonPropagatedAttachedMediaFromSampleBuffer:(uint64_t)a1
{
  if (a1)
  {
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAE70);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAE90);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AB070);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AB110);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAED0);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAEF0);

    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAF30);
  }
}

- (uint64_t)_propagatedErrorRecoveryMetadataIfNeededForSampleBuffer:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    v2 = OUTLINED_FUNCTION_4_3();
    v5 = CMGetAttachment(v2, v3, v4);
    v6 = *off_1E798A3C8;
    v7 = OUTLINED_FUNCTION_70();
    v9 = CMGetAttachment(v7, v8, 0);
    result = [objc_msgSend(v5 "captureSettings")];
    if ((result & 0x80) != 0)
    {
      v10 = *off_1E798B5E8;
      result = [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B5E8), "BOOLValue"}];
      if (result)
      {
        result = CMGetAttachment([*(v1 + 264) objectForKeyedSubscript:{objc_msgSend(v9, "objectForKeyedSubscript:", *off_1E798B540)}], v6, 0);
        if (result)
        {
          v11 = result;
          result = [objc_msgSend(result objectForKeyedSubscript:{v10), "BOOLValue"}];
          if ((result & 1) == 0)
          {
            [v11 objectForKeyedSubscript:*off_1E798B1C8];
            v12 = OUTLINED_FUNCTION_17();

            return [v12 setObject:? forKeyedSubscript:?];
          }
        }
      }
    }
  }

  return result;
}

- (void)_releaseNodeResourcesIfNeededBeforeEmittingSampleBuffer:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_80();
    [*(v3 + 208) workerQueue];
    if (!_FigIsNotCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_2_9();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if ([*(v2 + 152) deferredPhotoProcessorEnabled])
    {
      v4 = OUTLINED_FUNCTION_4_3();
      v7 = CMGetAttachment(v4, v5, v6);
      if (v7)
      {
        if (([objc_msgSend(v7 "captureSettings")] & 0x100000000) != 0)
        {

          [(BWPhotonicEngineNode *)v2 _releaseResources];
        }
      }

      else
      {
        FigCaptureGetFrameworkRadarComponent();
        OUTLINED_FUNCTION_18_27();
        OUTLINED_FUNCTION_160_0();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v22);
        OUTLINED_FUNCTION_115_0();
        if (v10)
        {
          v11 = v9;
        }

        else
        {
          v11 = v23;
        }

        if (v11)
        {
          BWStillImageSampleBufferToShortDisplayString(v1);
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_11_0();
          OUTLINED_FUNCTION_27_13();
        }

        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_13_0();
        v20 = 138412290;
        v21 = BWStillImageSampleBufferToShortDisplayString(v1);
        OUTLINED_FUNCTION_43_0();
        v12 = OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_10();
        FigCapturePleaseFileRadar(v13, v14, v15, v16, v17, 2581, v18, v19, &v20);
        free(v12);
      }
    }
  }
}

- (void)processorController:(id)a3 didFinishProcessingInput:(id)a4 err:(int)a5
{
  OUTLINED_FUNCTION_84();
  v118 = v8;
  v9 = v8;
  v10 = v7;
  v11 = v6;
  v13 = v12;
  v15 = v14;
  if (v7 != -16806 && v7 != 0)
  {
    v23 = [objc_msgSend(v6 "captureSettings")];
    v24 = [objc_msgSend(objc_msgSend(v11 "stillImageSettings")];
    if (v23)
    {
      [v24 setProxyProcessingError:v10];
    }

    else
    {
      [v24 setProcessingError:v10];
    }
  }

  if (![objc_msgSend(objc_msgSend(v11 "settings")])
  {
LABEL_24:
    OUTLINED_FUNCTION_81();
    return;
  }

  v17 = [v11 portType];
  v18 = [v13 type];
  v19 = [v11 stillImageSettings];
  v20 = [objc_msgSend(v11 "settings")];
  switch(v18)
  {
    case 2:
      [*(v15 + 208) workerQueue];
      if (_FigIsCurrentDispatchQueue())
      {
        if (!v10)
        {
          goto LABEL_27;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
        if (!v10)
        {
          goto LABEL_27;
        }
      }

      if ([*(v15 + 152) deferredPhotoProcessorEnabled])
      {
        [v11 stillImageSettings];
        v36 = OUTLINED_FUNCTION_95();
        [(BWPhotonicEngineNode *)v36 _emitError:v37 stillImageSettings:v38 metadata:0 description:v39, v40, v41, v42, v65, v67, v69, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, SBYTE2(v96), SBYTE3(v96), SHIDWORD(v96), v97, v98, v99, v100, v101, v102, v103, v104[0], v104[1], v104[2], v104[3], v105, v106];
      }

      else
      {
        v46 = OUTLINED_FUNCTION_95();
        [(BWPhotonicEngineNode *)v46 _handleDeepFusionError:v47 processorInput:v11];
      }

LABEL_27:
      OUTLINED_FUNCTION_3_19();
LABEL_28:
      [BWPhotonicEngineNode _processorControllerDidFinishProcessingInputForPortType:processorType:captureRequestIdentifier:];
      goto LABEL_29;
    case 3:
      [*(v15 + 208) inferenceControllerQueue];
      if (!_FigIsCurrentDispatchQueue())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      v21 = [*(v15 + 208) workerQueue];
      v96 = MEMORY[0x1E69E9820];
      v97 = 3221225472;
      v98 = __73__BWPhotonicEngineNode_processorController_didFinishProcessingInput_err___block_invoke;
      v99 = &unk_1E7998980;
      v100 = v15;
      v101 = v17;
      v102 = v20;
      v103 = 3;
      v22 = &v96;
      goto LABEL_23;
    case 4:
    case 7:
    case 10:
    case 15:
    case 16:
    case 17:
    case 18:
      [*(v15 + 208) workerQueue];
      if (!_FigIsCurrentDispatchQueue())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      goto LABEL_27;
    case 5:
      [*(v15 + 208) deferredProcessorControllerQueue];
      if (!_FigIsCurrentDispatchQueue())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      v21 = [*(v15 + 208) workerQueue];
      *(&v77 + 1) = MEMORY[0x1E69E9820];
      v78 = 3221225472;
      v79 = __73__BWPhotonicEngineNode_processorController_didFinishProcessingInput_err___block_invoke_3;
      v80 = &unk_1E799DED8;
      LODWORD(v87) = v10;
      v81 = v15;
      v82 = v11;
      v83 = v17;
      v84 = v20;
      v85 = v19;
      v86 = 5;
      v22 = &v77 + 1;
      goto LABEL_23;
    case 6:
    case 11:
      [*(v15 + 208) workerQueue];
      if (!_FigIsCurrentDispatchQueue())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      OUTLINED_FUNCTION_3_19();
      [BWPhotonicEngineNode _processorControllerDidFinishProcessingInputForPortType:processorType:captureRequestIdentifier:];
      if ([objc_msgSend(v11 "captureSettings")] == 12)
      {
        if (!v10)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v33 = [objc_msgSend(v11 "captureSettings")];
        if (!v10 || v33 != 13)
        {
          goto LABEL_24;
        }
      }

      if ([objc_msgSend(v11 "captureSettings")])
      {
        OUTLINED_FUNCTION_81();

        [v34 encounteredProcessingError:?];
      }

      else
      {
        if (![*(v15 + 152) deepFusionProcessorControllerConfiguration])
        {
          goto LABEL_24;
        }

        [*(v15 + 208) controllerForType:2];
        OUTLINED_FUNCTION_81();

        [v44 cancelProcessing];
      }

      return;
    case 8:
      [*(v15 + 208) stereoDisparityProcessorControllerQueue];
      if (!_FigIsCurrentDispatchQueue())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      v21 = [*(v15 + 208) workerQueue];
      v88 = MEMORY[0x1E69E9820];
      v89 = 3221225472;
      v90 = __73__BWPhotonicEngineNode_processorController_didFinishProcessingInput_err___block_invoke_2;
      v91 = &unk_1E7998980;
      v92 = v15;
      v93 = v17;
      v94 = v20;
      v95 = 8;
      v22 = &v88;
      goto LABEL_23;
    case 9:
    case 13:
      [*(v15 + 208) workerQueue];
      if (!_FigIsCurrentDispatchQueue())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      [*(v15 + 208) workerQueue];
      OUTLINED_FUNCTION_8_7();
      v72 = 3221225472;
      v73 = __73__BWPhotonicEngineNode_processorController_didFinishProcessingInput_err___block_invoke_4;
      v74 = &unk_1E7998980;
      v75 = v15;
      *&v76 = v17;
      *(&v76 + 1) = v20;
      *&v77 = v18;
      v22 = &v71;
LABEL_23:
      ubn_dispatch_async(v21, v22);
      goto LABEL_24;
    case 12:
      [*(v15 + 208) workerQueue];
      if (!_FigIsCurrentDispatchQueue())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
        if (!v10)
        {
          goto LABEL_52;
        }

LABEL_71:
        OUTLINED_FUNCTION_112();
        OUTLINED_FUNCTION_202();
        OUTLINED_FUNCTION_101_5();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v107);
        OUTLINED_FUNCTION_30();
        if (v9)
        {
          LODWORD(v104[0]) = 136315650;
          *(v104 + 4) = "[BWPhotonicEngineNode processorController:didFinishProcessingInput:err:]";
          WORD2(v104[1]) = 1026;
          *(&v104[1] + 6) = v10;
          WORD1(v104[2]) = 2050;
          *(&v104[2] + 4) = [v19 settingsID];
          LODWORD(v67) = 28;
          v65 = v104;
          OUTLINED_FUNCTION_11_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_1_4();
        OUTLINED_FUNCTION_56_0();
        [(BWPhotonicEngineNode *)v15 _resetProcessingState:v51];
        [v11 stillImageSettings];
        v58 = OUTLINED_FUNCTION_95();
        [(BWPhotonicEngineNode *)v58 _emitError:v59 stillImageSettings:v60 metadata:0 description:v61, v62, v63, v64, v66, v68, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, SBYTE2(v96), SBYTE3(v96), SHIDWORD(v96), v97, v98, v99, v100, v101, v102, v103, v104[0], v104[1], v104[2], v104[3], v105, v106];
        goto LABEL_24;
      }

      if (v10)
      {
        goto LABEL_71;
      }

LABEL_52:
      OUTLINED_FUNCTION_3_19();
      [BWPhotonicEngineNode _processorControllerDidFinishProcessingInputForPortType:processorType:captureRequestIdentifier:];
      if ([objc_msgSend(v11 "captureSettings")] == 12 || objc_msgSend(objc_msgSend(v11, "captureSettings"), "captureType") == 13)
      {
        if ([objc_msgSend(*(v15 + 152) "deepFusionProcessorControllerConfiguration")])
        {
          if (![*(v15 + 232) count] || objc_msgSend(objc_msgSend(v11, "captureSettings"), "learnedNRStereoPhotoFrameFlag") && (v48 = objc_msgSend(objc_msgSend(v11, "captureSettings"), "masterPortType"), v49 = objc_msgSend(objc_msgSend(objc_msgSend(v11, "captureSettings"), "secondaryPortTypes"), "firstObject"), objc_msgSend(*(v15 + 232), "count") == 2) && objc_msgSend(objc_msgSend(*(v15 + 232), "objectForKeyedSubscript:", v48), "count") == 1 && objc_msgSend(objc_msgSend(*(v15 + 232), "objectForKeyedSubscript:", v49), "count") == 1)
          {
            [objc_msgSend(OUTLINED_FUNCTION_123(344) "objectForKeyedSubscript:"beginProcessingCachedBuffersIfWaiting"")];
          }
        }
      }

LABEL_29:
      OUTLINED_FUNCTION_81();

      [(BWPhotonicEngineNode *)v25 _resetProcessingStateIfDone:v26];
      return;
    case 14:
      [*(v15 + 208) workerQueue];
      if (!_FigIsCurrentDispatchQueue())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      v43 = OUTLINED_FUNCTION_95();
      [BWPhotonicEngineNode _emitDeferredCaptureProxyOrErrorRecoverySampleBufferWithWithProcessingError:v43];
      OUTLINED_FUNCTION_3_19();
      goto LABEL_28;
    default:
      goto LABEL_24;
  }
}

- (void)_handleDeepFusionError:(void *)a3 processorInput:
{
  if (a1)
  {
    HIDWORD(v36) = a2;
    [a1[26] workerQueue];
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_2_9();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v5 = [a3 portType];
    v6 = [a3 stillImageSettings];
    v7 = [objc_msgSend(a1[38] objectForKeyedSubscript:{v5), "firstObject"}];
    if (!v7)
    {
      v7 = -[BWNRFProcessorInput initWithSettings:portType:resolutionFlavor:]([BWNRFProcessorInput alloc], "initWithSettings:portType:resolutionFlavor:", v6, v5, [a1[19] resolvedProcessingResolutionFlavorForInput:a3]);
      if ([a1[19] isInferenceInputImageRequiredForSettings:v6 portType:{-[BWStillImageProcessorControllerInput portType](v7, "portType")}])
      {
        OUTLINED_FUNCTION_25_16();
        v58 = 3221225472;
        OUTLINED_FUNCTION_21_34();
        v59 = v8;
        v60 = &unk_1E79992C8;
        v61 = a1;
        -[BWStillImageProcessorControllerInput addOutputSampleBufferRouter:forBufferTypes:name:](v7, "addOutputSampleBufferRouter:forBufferTypes:name:", [&v57 copy], &unk_1F224A3F8, @"DeepFusion ErrorRecovery InferenceInput NRF --> Inference");
      }

      [a1[38] setObject:objc_msgSend(MEMORY[0x1E695DF70] forKeyedSubscript:{"arrayWithObject:", v7), v5}];
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v9 = -[BWPhotonicEngineNode _bufferTypesForCaptureSettings:](a1, [v6 captureSettings]);
    OUTLINED_FUNCTION_19_25();
    v11 = [v10 countByEnumeratingWithState:? objects:? count:?];
    if (v11)
    {
      v12 = v11;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          OUTLINED_FUNCTION_49_7();
          if (!v14)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v52 + 1) + 8 * i);
          v16 = [objc_msgSend(a3 outputSampleBufferRouterForBufferType:{objc_msgSend(v15, "intValue")), "outputSampleBufferRouter"}];
          v37 = v15;
          -[BWStillImageProcessorControllerInput addOutputSampleBufferRouter:forBufferTypes:name:](v7, "addOutputSampleBufferRouter:forBufferTypes:name:", v16, [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1], @"Transferred DeepFusion ErrorRecovery NRF");
        }

        OUTLINED_FUNCTION_19_25();
        v12 = OUTLINED_FUNCTION_37_2(v17, v18, v19, v20);
      }

      while (v12);
    }

    v21 = HIDWORD(v36);
    if (HIDWORD(v36))
    {
      v22 = a1;
      if (v7)
      {
        if (([objc_msgSend(v6 "captureSettings")] & 4) != 0)
        {
          v21 = [(BWPhotonicEngineNode *)a1 _processRawErrorRecoveryFrameWithNRFProcessorInput:v7 processErrorRecoveryProxy:0 failureMetadata:0];
        }

        else
        {
          [(BWNRFProcessorInput *)v7 setRemainingProcessingCount:[(BWNRFProcessorInput *)v7 remainingProcessingCount]+ 1];
          [a1[26] controllerForType:6];
          OUTLINED_FUNCTION_179();
          OUTLINED_FUNCTION_182_0();
          v24 = [v23 enqueueInputForProcessing:? delegate:? processErrorRecoveryFrame:? processErrorRecoveryProxy:? processOriginalImage:? processToneMapping:? processInferenceInputImage:? clientBracketSequenceNumber:? processSemanticRendering:? provideInferenceInputImageForProcessing:? processSmartStyleRenderingInput:? inferencesAvailable:?];
          v21 = 0;
          if (v24)
          {
            v25 = v24;
            [objc_msgSend(v6 "requestedSettings")];
            OUTLINED_FUNCTION_1_15();
            [BWPhotonicEngineNode _processorControllerDidFinishProcessingInputForPortType:processorType:captureRequestIdentifier:];
            v21 = v25;
          }
        }
      }
    }

    else
    {
      v22 = a1;
    }

    [v22[40] setObject:&unk_1F2247B00 forKeyedSubscript:v22[24]];
    v26 = OUTLINED_FUNCTION_70();
    [BWPhotonicEngineNode _attemptDisparityReferenceFrameResolutionForSettings:v26 portType:?];
    v27 = OUTLINED_FUNCTION_70();
    [BWPhotonicEngineNode _deferredCaptureAddSecondaryStereoPhotoCaptureSampleBufferIfReadyForSettings:v27];
    if (v21)
    {
      [a3 description];
      v28 = OUTLINED_FUNCTION_113_4();
      [(BWPhotonicEngineNode *)v28 _emitError:v21 stillImageSettings:v6 metadata:0 description:v29, v30, v31, v32, v33, v34, v35, v36, v5, v6, a1, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, *(&v52 + 1), v53, *(&v53 + 1), v54, *(&v54 + 1), v55, SBYTE2(v55), SBYTE3(v55), SDWORD1(v55), *(&v55 + 1), v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67];
    }
  }
}

void __73__BWPhotonicEngineNode_processorController_didFinishProcessingInput_err___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __int16 a32, char a33, os_log_type_t a34, int a35)
{
  OUTLINED_FUNCTION_128_4();
  v43 = *(v35 + 32);

  [(BWPhotonicEngineNode *)v43 _resetProcessingStateIfDone:v36];
}

void __73__BWPhotonicEngineNode_processorController_didFinishProcessingInput_err___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __int16 a32, char a33, os_log_type_t a34, int a35)
{
  OUTLINED_FUNCTION_128_4();
  v43 = *(v35 + 32);

  [(BWPhotonicEngineNode *)v43 _resetProcessingStateIfDone:v36];
}

void __73__BWPhotonicEngineNode_processorController_didFinishProcessingInput_err___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __int16 a32, char a33, os_log_type_t a34, int a35)
{
  OUTLINED_FUNCTION_128_4();
  v43 = *(v35 + 32);

  [(BWPhotonicEngineNode *)v43 _resetProcessingStateIfDone:v36];
}

- (void)processorController:(id)a3 willAddBuffer:(__CVBuffer *)a4 metadata:(id)a5 bufferType:(unint64_t)a6 processorInput:(id)a7
{
  if (a5)
  {
    if (a3)
    {
      if (a4)
      {
        if (a7)
        {
          if ([a3 type] == 2 && -[BWPhotonicEngineNodeConfiguration deepZoomVersion](self->_nodeConfiguration) >= 1 && (objc_msgSend(objc_msgSend(a7, "captureStreamSettings"), "captureFlags") & 0x4200000000) == 0 && a6 <= 0x1B && ((1 << a6) & 0x9C00000) != 0)
          {
            v12 = *(MEMORY[0x1E695F050] + 16);
            v16.origin = *MEMORY[0x1E695F050];
            v16.size = v12;
            v15.origin = v16.origin;
            v15.size = v12;
            [(BWPhotonicEngineNodeConfiguration *)self->_nodeConfiguration sensorConfigurationsByPortType];
            [OUTLINED_FUNCTION_133() portType];
            [OUTLINED_FUNCTION_7() objectForKeyedSubscript:?];
            v13 = OUTLINED_FUNCTION_25_0();
            Width = CVPixelBufferGetWidth(v13);
            if (+[BWDeepZoomProcessorControllerConfiguration doDeepZoomStandardOrLiteForType:sensorConfiguration:dimensions:metadata:stillImageSettings:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:](BWDeepZoomProcessorControllerConfiguration, "doDeepZoomStandardOrLiteForType:sensorConfiguration:dimensions:metadata:stillImageSettings:intermediateZoomSrcRectOut:intermediateZoomDstRectOut:", 1, self, Width | (CVPixelBufferGetHeight(a4) << 32), a5, [a7 stillImageSettings], &v16, &v15))
            {
              if (!CGRectIsNull(v16) && !CGRectIsNull(v15))
              {
                FigCFDictionarySetCGRect();
                FigCFDictionarySetCGRect();
              }
            }
          }
        }
      }
    }
  }
}

- (void)_attemptDisparityReferenceFrameResolutionForSettings:(uint64_t)a1 portType:
{
  if (a1)
  {
    OUTLINED_FUNCTION_84();
    v2 = v1;
    v4 = v3;
    if ([OUTLINED_FUNCTION_217_0(v3 152)])
    {
      v5 = [objc_msgSend(*(v4 + 320) objectForKeyedSubscript:{*(v4 + 192)), "intValue"}];
      v6 = [MEMORY[0x1E695DF70] array];
      if (v5 == 1 || ([objc_msgSend(v2 "captureSettings")] & 0x1000) == 0)
      {
        [v6 addObjectsFromArray:{objc_msgSend(*(v4 + 248), "allKeys")}];
        v7 = 2;
LABEL_6:
        if ([v6 count])
        {
          *v70 = 0u;
          v71 = 0u;
          *v68 = 0u;
          v69 = 0u;
          OUTLINED_FUNCTION_13_14();
          v12 = OUTLINED_FUNCTION_13_15(v8, v9, v10, v11);
          if (v12)
          {
            v13 = v12;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                OUTLINED_FUNCTION_89();
                if (!v15)
                {
                  objc_enumerationMutation(v6);
                }

                v16 = *(v68[1] + 8 * i);
                [OUTLINED_FUNCTION_76_7(248) objectForKeyedSubscript:?];
                [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v7];
                [OUTLINED_FUNCTION_28() objectForKeyedSubscript:?];
                v17 = OUTLINED_FUNCTION_3_30();
                [(BWPhotonicEngineNode *)v17 _emitOrEnqueueDisparityReferenceFrameIfNeededForSampleBuffer:v18, v19, v20, v21, v22, v23, v24, v46, v47, v48, SHIDWORD(v48), v49, SWORD2(v49), v50, obj, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68[0], v68[1], v69, *(&v69 + 1), v70[0], v70[1], v71, *(&v71 + 1), v72[0], v72[1], v72[2], v72[3], v72[4], v72[5], v72[6], v72[7], v72[8], v72[9]];
                [*(v4 + 248) setObject:0 forKeyedSubscript:v16];
              }

              OUTLINED_FUNCTION_13_14();
              v13 = OUTLINED_FUNCTION_13_15(v25, v26, v27, v28);
            }

            while (v13);
          }
        }

        goto LABEL_14;
      }

      if (v5 == 2)
      {
        OUTLINED_FUNCTION_6_78();
        v30 = OUTLINED_FUNCTION_194(*(v4 + 248), v29, v73, v72);
        if (v30)
        {
          v31 = v30;
          v49 = v2;
          v50 = v6;
          v32 = *v74;
          v33 = *off_1E798A3C8;
          v47 = v4;
          v48 = *off_1E798B708;
          do
          {
            for (j = 0; j != v31; ++j)
            {
              if (*v74 != v32)
              {
                objc_enumerationMutation(obj);
              }

              v35 = *(v73[1] + 8 * j);
              v36 = [objc_msgSend(OUTLINED_FUNCTION_89_4(248) "objectForKeyedSubscript:{"objectForKeyedSubscript:", &unk_1F2247AD0}")];
              v37 = [objc_msgSend(OUTLINED_FUNCTION_89_4(248) "objectForKeyedSubscript:{"objectForKeyedSubscript:", &unk_1F2247AE8}")];
              if (v36)
              {
                v43 = v37;
                if (v37)
                {
                  v44 = CMGetAttachment(v36, v33, 0);
                  v45 = CMGetAttachment(v43, v33, 0);
                  if (([objc_msgSend(v49 "captureSettings")] & 0x100000) != 0)
                  {
                    [v44 objectForKeyedSubscript:v48];
                    v4 = v47;
                    [OUTLINED_FUNCTION_28() setObject:? forKeyedSubscript:?];
                  }

                  [v45 setObject:v44 forKeyedSubscript:@"EVZeroMetadata"];
                  v37 = [v50 addObject:v35];
                }
              }
            }

            v31 = OUTLINED_FUNCTION_197(v37, v38, v73, v72, v39, v40, v41, v42, v46, v47, v48, v49, v50, obj);
          }

          while (v31);
          v6 = v50;
        }

        v7 = 4;
        goto LABEL_6;
      }
    }

LABEL_14:
    OUTLINED_FUNCTION_81();
  }
}

- (uint64_t)_deferredCaptureAddSecondaryStereoPhotoCaptureSampleBufferIfReadyForSettings:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_54();
    result = [objc_msgSend(v3 "captureSettings")];
    if ((result & 0x4000000000) != 0)
    {
      result = [objc_msgSend(v2 "captureSettings")];
      if (result)
      {
        if (*(v1 + 536))
        {
          [MEMORY[0x1E696AD98] numberWithInt:1];
          result = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
          if (result)
          {
            v4 = result;
            v5 = [MEMORY[0x1E695DF90] dictionary];
            CMGetAttachment(v4, @"OriginalCameraIntrinsicMatrix", 0);
            [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
            CMGetAttachment(v4, @"OriginalCameraIntrinsicMatrixReferenceDimensions", 0);
            [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
            if ([v5 count])
            {
              [*(v1 + 536) addDictionary:v5 tag:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@-%@", BWDeferredIntermediateTagSampleBufferOriginalCameraIntrinsicsPrefix, BWSampleBufferGetPortType(v4))}];
            }

            [OUTLINED_FUNCTION_123(536) addSensorRawSampleBuffer:?];
            v6 = *(v1 + 552);

            return [v6 removeAllObjects];
          }
        }
      }
    }
  }

  return result;
}

- (void)_checkIfProcessingCompletedForNRFProcessorInput:(uint64_t)a1
{
  if (a1)
  {
    v3 = [a2 portType];
    [a2 stillImageSettings];
    if ([OUTLINED_FUNCTION_89_4(152) isReferenceOrClientBracketFrameEmissionNeededForSettings:? portType:?])
    {
      v4 = OUTLINED_FUNCTION_1_19();
      if (!-[BWPhotonicEngineNode _processingNeededForSettings:portType:](v4, v5, v3) && [a2 receivedAllFrames] && objc_msgSend(OUTLINED_FUNCTION_123(312), "objectForKeyedSubscript:"))
      {
        [objc_msgSend(a2 "settings")];
        OUTLINED_FUNCTION_3_19();

        [BWPhotonicEngineNode _processorControllerDidFinishProcessingInputForPortType:processorType:captureRequestIdentifier:];
      }
    }
  }
}

- (void)processorController:(id)a3 didSelectLowLightReferenceFrame:(opaqueCMSampleBuffer *)a4 processorInput:(id)a5
{
  [(BWPhotonicEngineNodeResourceCoordinator *)self->_resourceCoordinator workerQueue];
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  v7 = OUTLINED_FUNCTION_4_3();
  v10 = CMGetAttachment(v7, v8, v9);
  memset(&v47, 0, sizeof(v47));
  CMTimeMakeFromDictionary(&v47, [v10 objectForKeyedSubscript:*off_1E798A420]);
  [objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798B2A8), "doubleValue"}];
  v12 = v11;
  if (dword_1EB58E340)
  {
    HIDWORD(v46) = 0;
    BYTE3(v46) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_30();
    if (v5)
    {
      OUTLINED_FUNCTION_90_6();
      CMTimeGetSeconds(&time);
      v27 = 136315650;
      OUTLINED_FUNCTION_164();
      *v30 = v14;
      *&v30[8] = 2114;
      v31 = a5;
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_141();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_56_0();
  }

  if (([objc_msgSend(a5 "captureSettings")] & 0x200) != 0)
  {
    [a5 portType];
    [OUTLINED_FUNCTION_7() objectForKeyedSubscript:?];
    OUTLINED_FUNCTION_90_6();
    [v15 setColorBufferPTS:&time exposureTime:v12];
    [a5 portType];
    [OUTLINED_FUNCTION_7() objectForKeyedSubscript:?];
    OUTLINED_FUNCTION_90_6();
    [v16 setColorBufferPTS:&time exposureTime:v12];
  }

  v17 = OUTLINED_FUNCTION_44();
  [(BWPhotonicEngineNode *)v17 _emitOrEnqueueDisparityReferenceFrameIfNeededForSampleBuffer:v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, *v29, *&v29[4], *&v30[2], v31, time.value, *&time.timescale, time.epoch, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47.value, *&v47.timescale, v47.epoch, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, vars0, vars8];
}

- (uint64_t)_processRawErrorRecoveryFrameWithNRFProcessorInput:(int)a3 processErrorRecoveryProxy:(uint64_t)a4 failureMetadata:
{
  v4 = a1;
  if (!a1)
  {
    return v4;
  }

  [*(a1 + 208) workerQueue];
  if (_FigIsCurrentDispatchQueue())
  {
    if (!a2)
    {
      return 4294954516;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
    if (!a2)
    {
      return 4294954516;
    }
  }

  [a2 portType];
  v8 = [OUTLINED_FUNCTION_7() objectForKeyedSubscript:?];
  if (!v8)
  {
    return 4294954516;
  }

  v9 = v8;
  v10 = CMGetAttachment(v8, *off_1E798A3C8, 0);
  [v10 addEntriesFromDictionary:a4];
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_175_0();
  v19 = __117__BWPhotonicEngineNode__processRawErrorRecoveryFrameWithNRFProcessorInput_processErrorRecoveryProxy_failureMetadata___block_invoke;
  v20 = &unk_1E799DF28;
  v21 = v4;
  v22 = a2;
  v24 = a3;
  v23 = v10;
  [a2 stillImageSettings];
  [OUTLINED_FUNCTION_129_4() portType];
  v11 = [OUTLINED_FUNCTION_98_7() gdcSourceForSettings:? portType:?] == 3;
  v12 = [BWSoftISPProcessorControllerInput alloc];
  v13 = [OUTLINED_FUNCTION_129_4() stillImageSettings];
  v14 = [v10 initWithSettings:v13 portType:objc_msgSend(a2 resolutionFlavor:"portType") gdcEnabled:{objc_msgSend(OUTLINED_FUNCTION_86_4(152), "resolvedProcessingResolutionFlavorForInput:"), v11}];
  [v14 addOutputSampleBufferRouter:v18 forBufferTypes:&unk_1F224A3E0 name:@"Raw ErrorRecovery SoftISP --> NRF"];
  if (a3)
  {
    if ([objc_msgSend(a2 "captureStreamSettings")] == 13)
    {
      v15 = 7;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 1;
  }

  [v14 addFrame:v9 processingMode:v15];
  [BWPhotonicEngineNode _enqueueSoftISPInput:v4];
  v4 = v16;

  if (!v4)
  {
    [a2 setRemainingProcessingCount:{objc_msgSend(a2, "remainingProcessingCount") + 1}];
  }

  return v4;
}

- (id)_bufferTypesForCaptureSettings:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  switch([a2 captureType])
  {
    case 0u:
    case 3u:
    case 4u:
    case 5u:
      v3 = MEMORY[0x1E695E0F0];
      break;
    case 1u:
      if ([a2 deliverDeferredPhotoProxyImage] && (objc_msgSend(a2, "captureFlags") & 0x80) != 0)
      {
        v3 = &unk_1F224A5D8;
      }

      else
      {
        v3 = &unk_1F224A5F0;
      }

      break;
    case 2u:
    case 6u:
    case 7u:
      v3 = &unk_1F224A608;
      break;
    case 0xAu:
      v3 = &unk_1F224A620;
      break;
    case 0xBu:
      if (([a2 captureFlags] & 0x800000000) != 0)
      {
        v3 = &unk_1F224A638;
      }

      else
      {
        v3 = &unk_1F224A650;
      }

      break;
    case 0xCu:
      v4 = [a2 deliverDeferredPhotoProxyImage];
      v5 = &unk_1F224A680;
      v6 = &unk_1F224A668;
      goto LABEL_10;
    case 0xDu:
      v4 = [a2 deliverDeferredPhotoProxyImage];
      v5 = &unk_1F224A6B0;
      v6 = &unk_1F224A698;
LABEL_10:
      if (v4)
      {
        v3 = v6;
      }

      else
      {
        v3 = v5;
      }

      break;
    default:
      break;
  }

  if (![a2 deliverOriginalImage])
  {
    return v3;
  }

  v7 = [MEMORY[0x1E695DF70] arrayWithArray:v3];
  [v7 addObject:&unk_1F2247AE8];
  v8 = [v7 copy];

  return v8;
}

- (void)_enqueueSoftISPInput:(uint64_t)a1
{
  if (!a1)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_146_2(v3);
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  [v2 portType];
  v4 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  v5 = v4 ? [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "intValue") + 1}] : &unk_1F2247BA8;
  [*(v1 + 240) setObject:v5 forKeyedSubscript:{objc_msgSend(v2, "portType")}];
  if ([OUTLINED_FUNCTION_218() controllerForType:12])
  {
    OUTLINED_FUNCTION_134_5();
    OUTLINED_FUNCTION_24_12();

    [v6 enqueueInputForProcessing:? delegate:?];
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_24_12();
  }
}

id __135__BWPhotonicEngineNode_adaptiveBracketingParametersForDigitalFlashMode_frameStatistics_stationary_sphereOffsetEnabled_detectedObjects___block_invoke(uint64_t a1)
{
  [(BWPhotonicEngineNode *)*(a1 + 32) _setupResourceCoordinator];
  result = [*(*(a1 + 32) + 208) hasSuccessfullySetupProcessorControllersAndMemoryResources];
  if (result)
  {
    result = [objc_msgSend(*(*(a1 + 32) + 208) controllerForType:{6), "adaptiveBracketingParametersForDigitalFlashMode:frameStatistics:stationary:sphereOffsetEnabled:detectedObjects:", *(a1 + 64), *(a1 + 40), *(a1 + 68), *(a1 + 69), *(a1 + 48)}];
    *(*(*(a1 + 56) + 8) + 40) = result;
  }

  return result;
}

- (uint64_t)_nrfProcessorInputNeededForSettings:(uint64_t)result portType:
{
  if (result)
  {
    OUTLINED_FUNCTION_159_0();
    result = [objc_msgSend(objc_msgSend(v3 "captureSettings")];
    if (result)
    {
      result = [OUTLINED_FUNCTION_64_11(160) containsObject:?];
      if (result)
      {
        if (([objc_msgSend(v1 "captureSettings")] == 12 || objc_msgSend(objc_msgSend(v1, "captureSettings"), "captureType") == 13) && (objc_msgSend(objc_msgSend(v1, "captureSettings"), "deliverDeferredPhotoProxyImage") & 1) == 0)
        {
          return [objc_msgSend(v1 "captureSettings")] != 0;
        }

        else
        {
          v4 = OUTLINED_FUNCTION_45_0();

          return [(BWPhotonicEngineNode *)v4 _processingNeededForSettings:v5 portType:v2];
        }
      }
    }
  }

  return result;
}

- (uint64_t)_deepFusionProcessorInputNeededForSettings:(uint64_t)a1 portType:
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_59_12();
  if (![objc_msgSend(objc_msgSend(v4 "captureSettings")] || !objc_msgSend(*(v3 + 160), "containsObject:", v1) || objc_msgSend(objc_msgSend(v2, "captureSettings"), "captureType") != 12 && objc_msgSend(objc_msgSend(v2, "captureSettings"), "captureType") != 13)
  {
    return 0;
  }

  if ([objc_msgSend(v2 "captureSettings")])
  {
    return 0;
  }

  if ([objc_msgSend(v2 "captureSettings")])
  {
    v5 = [objc_msgSend(v2 "captureSettings")];

    return [v5 isEqualToString:v1];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_42();

    return [(BWPhotonicEngineNode *)v7 _processingNeededForSettings:v8 portType:v1];
  }
}

- (uint64_t)_generateDisparityForSettings:(uint64_t)result
{
  if (result)
  {
    result = [*(result + 152) stereoDisparityProcessorControllerConfiguration];
    if (result)
    {
      return ([objc_msgSend(a2 "captureSettings")] & 0x800) != 0 && (objc_msgSend(objc_msgSend(a2, "captureSettings"), "captureFlags") & 0x200) == 0;
    }
  }

  return result;
}

- (void)_handleDeferredCaptureProxyOrErrorRecoverySampleBuffer:(uint64_t)a3 bufferType:(uint64_t)a4
{
  if (a1)
  {
    OUTLINED_FUNCTION_58_2();
    v38 = v35;
    if (*(v35 + 536))
    {
      v39 = v36;
      if (v36)
      {
        v40 = v37;
        v41 = *(v35 + 544);
        if (v41)
        {
          CFRelease(v41);
          *(v38 + 544) = 0;
        }

        v42 = CFRetain(v39);
        *(v38 + 544) = v42;
        if (dword_1EB58E340)
        {
          OUTLINED_FUNCTION_112();
          OUTLINED_FUNCTION_202();
          OUTLINED_FUNCTION_101_5();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, a34);
          OUTLINED_FUNCTION_30();
          if (v34)
          {
            BWStillImageBufferTypeToShortString(v40);
            v44 = OUTLINED_FUNCTION_18_0();
            BWStillImageCaptureIDForSampleBuffer(v44);
            OUTLINED_FUNCTION_23_8();
            OUTLINED_FUNCTION_13_47();
            OUTLINED_FUNCTION_11_0();
            OUTLINED_FUNCTION_141();
          }

          OUTLINED_FUNCTION_2_4();
          v42 = OUTLINED_FUNCTION_56_0();
        }

        [*(v38 + 536) proxyReadyWithFPNREnabled:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_7_24(v42, *off_1E798A3C8), "objectForKeyedSubscript:", *off_1E798A5E8), "BOOLValue")}];
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_112();
      OUTLINED_FUNCTION_101_5();
      v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v48 = OUTLINED_FUNCTION_155(v47);
      if (OUTLINED_FUNCTION_5_2(v48))
      {
        goto LABEL_16;
      }
    }

    else
    {
      OUTLINED_FUNCTION_112();
      OUTLINED_FUNCTION_101_5();
      v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v46 = OUTLINED_FUNCTION_155(v45);
      if (OUTLINED_FUNCTION_5_2(v46))
      {
LABEL_16:
        OUTLINED_FUNCTION_5_6();
        OUTLINED_FUNCTION_7_4();
        _os_log_send_and_compose_impl();
      }
    }

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_16_1();
LABEL_11:
    OUTLINED_FUNCTION_56();
  }
}

- (void)_waitForAndMergeInferencesIfNeededForSampleBuffer:(uint64_t)a1 processorInput:
{
  if (a1)
  {
    OUTLINED_FUNCTION_159_0();
    [OUTLINED_FUNCTION_155_0(v4) inferenceControllerQueue];
    if (!_FigIsNotCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v5 = OUTLINED_FUNCTION_4_3();
    if (([CMGetAttachment(v5 v6] & 1) == 0 && ((-[BWPhotonicEngineNodeConfiguration generateInferencesForSemanticProcessingIfNeeded](*(v2 + 152)) & 1) != 0 || objc_msgSend(*(v2 + 152), "deferredPhotoProcessorEnabled")))
    {
      [v1 stillImageSettings];
      v8 = [OUTLINED_FUNCTION_7() isSemanticRenderingCapture:?];
      [v1 stillImageSettings];
      v9 = [OUTLINED_FUNCTION_28() shouldProvideInferenceAttachedMediaWithSettings:?];
      if ((v8 & 1) != 0 || v9)
      {
        if (![(BWPhotonicEngineNodeConfiguration *)*(v2 + 152) generateInferencesForSemanticProcessingIfNeeded])
        {
LABEL_12:
          [v1 stillImageSettings];
          v10 = OUTLINED_FUNCTION_8_8();

          [v10 syncMergeInferencesWithSampleBuffer:? stillImageSettings:?];
          return;
        }

        if ([*(v2 + *(v3 + 1032)) inferenceControllerGroup])
        {
          dispatch_group_wait([*(v2 + *(v3 + 1032)) inferenceControllerGroup], 0xFFFFFFFFFFFFFFFFLL);
          goto LABEL_12;
        }

        FigCaptureGetFrameworkRadarComponent();
        OUTLINED_FUNCTION_112();
        OUTLINED_FUNCTION_101_5();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v12 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v21[139]);
        if (OUTLINED_FUNCTION_6(v12))
        {
          OUTLINED_FUNCTION_5_6();
          OUTLINED_FUNCTION_58_1();
        }

        OUTLINED_FUNCTION_8_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        OUTLINED_FUNCTION_5_53();
        v13 = OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_3_19();
        OUTLINED_FUNCTION_10();
        FigCapturePleaseFileRadar(v14, v15, v16, v17, v18, 4479, v19, v20, v21);
        free(v13);
      }
    }
  }
}

- (id)_ubInferenceInputRouter
{
  if (result)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_21_34();
    return OUTLINED_FUNCTION_242_0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, 3221225472, v9, &unk_1E79992C8, v12);
  }

  return result;
}

- (id)_standardNROutputRouterWithExpectedQueue:(id)result
{
  if (result)
  {
    OUTLINED_FUNCTION_33_0();
    v3[1] = 3221225472;
    v3[2] = __65__BWPhotonicEngineNode__standardNROutputRouterWithExpectedQueue___block_invoke;
    v3[3] = &unk_1E7999390;
    v3[4] = v2;
    v3[5] = v1;
    return [v3 copy];
  }

  return result;
}

- (void)_setupProcessingStateForJasperDisparityIfNeededWithSettings:(uint64_t)a1 processingPlan:
{
  if (a1)
  {
    OUTLINED_FUNCTION_84();
    v2 = v1;
    v4 = v3;
    v6 = v5;
    [*(v5 + 208) workerQueue];
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (([objc_msgSend(v4 "captureSettings")] & 0x200) != 0)
    {
      if ([*(v6 + 152) jasperDisparityProcessorControllerConfiguration])
      {
        v7 = [OUTLINED_FUNCTION_141_3() controllerForType:13];
        if (v7)
        {
          v8 = v7;
          [v4 captureSettings];
          v9 = OUTLINED_FUNCTION_26_13();
          v63 = [(BWPhotonicEngineNode *)v9 _bufferTypesForCaptureSettings:v10];
          OUTLINED_FUNCTION_25_16();
          OUTLINED_FUNCTION_149_1(COERCE_DOUBLE(3221225472));
          v75[2] = __99__BWPhotonicEngineNode__setupProcessingStateForJasperDisparityIfNeededWithSettings_processingPlan___block_invoke;
          v75[3] = &unk_1E7999390;
          v55 = v8;
          v56 = v6;
          v75[4] = v6;
          v75[5] = v8;
          v61 = [MEMORY[0x1E695DF70] array];
          v11 = [OUTLINED_FUNCTION_234_0() portTypes];
          v60 = OUTLINED_FUNCTION_194(v11, v12, v73, v72);
          if (v60)
          {
            v58 = *v74;
            v59 = v4;
            do
            {
              v13 = 0;
              do
              {
                if (*v74 != v58)
                {
                  objc_enumerationMutation(obj);
                }

                v14 = *(v73[1] + 8 * v13);
                v15 = [[BWJasperDisparityProcessorInput alloc] initWithSettings:v4 portType:v14];
                v68 = 0u;
                v69 = 0u;
                v70 = 0u;
                v71 = 0u;
                OUTLINED_FUNCTION_86_0();
                v24 = OUTLINED_FUNCTION_240_0(v16, v17, v18, v19, v20, v21, v22, v23, v52, v53, v54, v55, v56, obj, v58, v59, v60, v61, v13, v63);
                if (v24)
                {
                  v25 = v24;
                  v26 = *v69;
                  do
                  {
                    for (i = 0; i != v25; ++i)
                    {
                      if (*v69 != v26)
                      {
                        objc_enumerationMutation(v63);
                      }

                      v28 = *(*(&v68 + 1) + 8 * i);
                      v29 = [v28 intValue];
                      v67 = v28;
                      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
                      v31 = [v2 lastAddedInputForSequenceNumber:0 portType:v14 bufferType:v29];
                      if (v31)
                      {
                        v32 = v31;
                        [objc_msgSend(v31 outputSampleBufferRouterForBufferType:{v29), "outputSampleBufferRouter"}];
                        [OUTLINED_FUNCTION_4() addOutputSampleBufferRouter:? forBufferTypes:? name:?];
                        [v2 addInput:v15 sequenceNumber:0 portType:v14 bufferType:v29];
                        [v32 addOutputSampleBufferRouter:v75 forBufferTypes:v30 name:@"ColorImage --> JasperDisparity"];
                      }
                    }

                    OUTLINED_FUNCTION_86_0();
                    v25 = OUTLINED_FUNCTION_240_0(v33, v34, v35, v36, v37, v38, v39, v40, v52, v53, v54, v55, v56, obj, v58, v59, v60, v61, v62, v63);
                  }

                  while (v25);
                }

                v4 = v59;
                if ([v14 isEqualToString:{objc_msgSend(objc_msgSend(v59, "captureSettings"), "masterPortType")}])
                {
                  v41 = [v61 insertObject:v15 atIndex:0];
                }

                else
                {
                  v41 = [v61 addObject:v15];
                }

                v13 = v62 + 1;
              }

              while (v62 + 1 != v60);
              v60 = OUTLINED_FUNCTION_197(v41, v42, v73, v72, v43, v44, v45, v46, v52, v53, v54, v55, v56, obj);
            }

            while (v60);
          }

          v47 = [v61 countByEnumeratingWithState:OUTLINED_FUNCTION_56_14() objects:? count:?];
          if (v47)
          {
            v48 = v47;
            do
            {
              for (j = 0; j != v48; ++j)
              {
                OUTLINED_FUNCTION_49_7();
                if (!v50)
                {
                  objc_enumerationMutation(v61);
                }

                v51 = *(v66 + 8 * j);
                [v55 enqueueInputForProcessing:v51 delegate:v56];
                [v51 portType];
                [OUTLINED_FUNCTION_8_8() setObject:? forKeyedSubscript:?];
              }

              v48 = [v61 countByEnumeratingWithState:v65 objects:v64 count:16];
            }

            while (v48);
          }
        }
      }
    }

    OUTLINED_FUNCTION_81();
  }
}

- (void)_setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings:sequenceNumber:portType:processingPlan:
{
  OUTLINED_FUNCTION_84();
  if (!v0)
  {
    goto LABEL_69;
  }

  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = v0;
  LODWORD(v8) = [v0[19] isIDCCaptureForPortType:v3 settings:v1];
  v91 = v6;
  v9 = [OUTLINED_FUNCTION_119_4() isGDCCaptureForPortType:v4 settings:v6];
  [v7[26] workerQueue];
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  if (![OUTLINED_FUNCTION_119_4() intelligentDistortionCorrectionProcessorControllerConfiguration])
  {
    HIDWORD(v87) = 0;
    v75 = 0;
    goto LABEL_73;
  }

  v10 = [v7[26] controllerForType:7];
  if (!v10)
  {
    HIDWORD(v87) = 0;
    v75 = -73215;
    goto LABEL_73;
  }

  if (((v8 | v9) & 1) == 0)
  {
    HIDWORD(v87) = 0;
    v75 = 0;
    goto LABEL_73;
  }

  v88 = v10;
  v90 = v7;
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [objc_msgSend(v6 "captureSettings")];
  HIDWORD(v87) = v12 != 0;
  HIDWORD(v89) = v8;
  if (v12)
  {
    [v11 addObject:&unk_1F2247B48];
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  -[BWPhotonicEngineNode _bufferTypesExcludingErrorRecoveryTypesForCaptureSettings:](v7, [v6 captureSettings]);
  [OUTLINED_FUNCTION_47() addObjectsFromArray:?];
  if (!v9)
  {
    goto LABEL_9;
  }

  [BWPhotonicEngineNode _errorRecoveryBufferTypesForBufferTypes:v7];
  v13 = v82;
  [v11 addObjectsFromArray:v82];
LABEL_10:
  v172[0] = MEMORY[0x1E69E9820];
  v172[1] = 3221225472;
  v172[2] = __139__BWPhotonicEngineNode__setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings_sequenceNumber_portType_processingPlan___block_invoke;
  v172[3] = &unk_1E799DF50;
  v172[4] = v7;
  v172[5] = v4;
  v172[6] = v6;
  v172[7] = v13;
  LODWORD(v89) = v9;
  if ([objc_msgSend(v6 "captureSettings")] == 7 && objc_msgSend(OUTLINED_FUNCTION_133_6(416), "objectForKeyedSubscript:"))
  {
    v14 = [OUTLINED_FUNCTION_133_6(416) objectForKeyedSubscript:?];
    v15 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_133_6(424), "objectForKeyedSubscript:"), "intValue") + 1}];
    OUTLINED_FUNCTION_235_0(v15);
    v8 = v8;
    goto LABEL_50;
  }

  if (![objc_msgSend(v6 "requestedSettings")] || !objc_msgSend(objc_msgSend(v6, "requestedSettings"), "constantColorFallbackPhotoDeliveryEnabled") || !objc_msgSend(v7[52], "objectForKeyedSubscript:", v4))
  {
    v25 = [BWIntelligentDistortionCorrectionProcessorInput alloc];
    OUTLINED_FUNCTION_53();
    v27 = [v26 initWithSettings:? portType:?];
    [v27 setProcessIntelligentDistortionCorrection:v8];
    [v27 setProcessGeometricDistortionCorrection:v9];
    v28 = [v27 setApplyZoom:1];
    if (v12)
    {
      v28 = [v27 setUseBilinearInterpolation:1];
    }

    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v36 = OUTLINED_FUNCTION_231_0(v28, v29, v30, v31, v32, v33, v34, v35, v83, v85, v87, v88, v89, v7, v91, v27, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, *(&v160 + 1), v161, *(&v161 + 1), v162);
    if (v36)
    {
      v37 = v36;
      v38 = v92;
      do
      {
        v39 = 0;
        do
        {
          OUTLINED_FUNCTION_89();
          if (!v20)
          {
            objc_enumerationMutation(v11);
          }

          v40 = [*(*(&v164 + 1) + 8 * v39) intValue];
          OUTLINED_FUNCTION_117_6();
          v42 = [v41 lastAddedInputForSequenceNumber:? portType:? bufferType:?];
          if (v42)
          {
            if (!ubn_insertOutputRouterForInputAfterPreviousInputForBufferTypeAndName(v172, v38, v42, v40, @"PreviousInput --> DC Processing"))
            {
              goto LABEL_72;
            }

            OUTLINED_FUNCTION_204_0();
            v42 = [v50 addInput:? sequenceNumber:? portType:? bufferType:?];
          }

          ++v39;
        }

        while (v37 != v39);
        v51 = OUTLINED_FUNCTION_231_0(v42, v43, v44, v45, v46, v47, v48, v49, v84, v86, v87, v88, v89, v90, v91, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, *(&v160 + 1), v161, *(&v161 + 1), v162);
        v37 = v51;
      }

      while (v51);
    }

    if ((v89 & 1) == 0)
    {
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      OUTLINED_FUNCTION_122();
      v56 = OUTLINED_FUNCTION_37(v52, v53, v54, v55);
      if (v56)
      {
        v57 = v56;
        do
        {
          for (i = 0; i != v57; ++i)
          {
            OUTLINED_FUNCTION_89();
            if (!v20)
            {
              objc_enumerationMutation(v13);
            }

            v59 = *(*(&v160 + 1) + 8 * i);
            [v59 intValue];
            OUTLINED_FUNCTION_117_6();
            v61 = [v60 lastAddedInputForSequenceNumber:? portType:? bufferType:?];
            v143 = v59;
            [v61 addBypassedProcessorType:7 forBufferTypes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v143, 1)}];
          }

          OUTLINED_FUNCTION_122();
          v57 = OUTLINED_FUNCTION_37(v62, v63, v64, v65);
        }

        while (v57);
      }
    }

    v7 = v90;
    v14 = v92;
    OUTLINED_FUNCTION_182_0();
    [v66 setObject:? forKeyedSubscript:?];
    [*(v90 + 424) setObject:&unk_1F2247BA8 forKeyedSubscript:v4];

    v8 = HIDWORD(v89);
    v6 = v91;
    goto LABEL_50;
  }

  v14 = [OUTLINED_FUNCTION_133_6(416) objectForKeyedSubscript:?];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_133_6(424), "objectForKeyedSubscript:"), "intValue") + 1}];
  OUTLINED_FUNCTION_235_0(v16);
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v17 = OUTLINED_FUNCTION_233_0();
  v8 = v8;
  if (!v17)
  {
LABEL_50:
    v67 = [v88 enqueueInputForProcessing:v14 delegate:v7];
    v68 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
    if (v67)
    {
      v75 = v67;
      LODWORD(v9) = v89;
    }

    else
    {
      v69 = OUTLINED_FUNCTION_118_4();
      LODWORD(v9) = v89;
      if (v69)
      {
        [objc_msgSend(v69 "pipelineParameters")];
        [objc_msgSend(OUTLINED_FUNCTION_118_4() "pipelineParameters")];
        v70 = [objc_msgSend(OUTLINED_FUNCTION_119_4() "intelligentDistortionCorrectionProcessorControllerConfiguration")];
        [objc_msgSend(OUTLINED_FUNCTION_118_4() "pipelineParameters")];
        v71 = OUTLINED_FUNCTION_119_4();
        v72 = [(BWPhotonicEngineNodeConfiguration *)v71 dcProcessingWithDepthSupported];
        [objc_msgSend(OUTLINED_FUNCTION_118_4() "pipelineParameters")];
        v73 = OUTLINED_FUNCTION_119_4();
        v74 = [(BWPhotonicEngineNodeConfiguration *)v73 stillImageGDCSourceMode];
        [objc_msgSend(OUTLINED_FUNCTION_118_4() "pipelineParameters")];
      }

      v75 = 0;
    }

    goto LABEL_54;
  }

  v18 = v17;
LABEL_18:
  v19 = 0;
  while (1)
  {
    OUTLINED_FUNCTION_89();
    if (!v20)
    {
      objc_enumerationMutation(v11);
    }

    v21 = [*(*(&v168 + 1) + 8 * v19) intValue];
    OUTLINED_FUNCTION_117_6();
    v23 = [v22 lastAddedInputForSequenceNumber:? portType:? bufferType:?];
    if (v23)
    {
      if (!ubn_insertOutputRouterForInputAfterPreviousInputForBufferTypeAndName(v172, v14, v23, v21, @"PreviousInput --> DC Processing"))
      {
        break;
      }
    }

    if (v18 == ++v19)
    {
      v24 = OUTLINED_FUNCTION_233_0();
      v18 = v24;
      if (!v24)
      {
        v8 = HIDWORD(v89);
        v7 = v90;
        goto LABEL_50;
      }

      goto LABEL_18;
    }
  }

LABEL_72:
  v75 = -12780;
  LODWORD(v9) = v89;
  LODWORD(v8) = HIDWORD(v89);
  v7 = v90;
  v6 = v91;
LABEL_73:
  v68 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
LABEL_54:
  if (*(v7 + v68[283]) && ([objc_msgSend(v6 "captureSettings")] & 0x4000000000) != 0)
  {
    v76 = [objc_msgSend(OUTLINED_FUNCTION_119_4() "intelligentDistortionCorrectionProcessorControllerConfiguration")];
    [objc_msgSend(OUTLINED_FUNCTION_118_4() "pipelineParameters")];
    v77 = OUTLINED_FUNCTION_119_4();
    v78 = [(BWPhotonicEngineNodeConfiguration *)v77 stillImageGDCSourceMode];
    [objc_msgSend(OUTLINED_FUNCTION_118_4() "pipelineParameters")];
  }

  if ((((v8 | v9) & 1) != 0 || ((v75 == 0) & ~HIDWORD(v87)) == 0) && dword_1EB58E340)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_97_0();
    if (v20)
    {
      v81 = v80;
    }

    else
    {
      v81 = 0;
    }

    if (v81)
    {
      [objc_msgSend(v91 "captureSettings")];
      if (v5)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@" seq-no:%u", v5];
      }

      OUTLINED_FUNCTION_77_0();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_193();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_128();
  }

LABEL_69:
  OUTLINED_FUNCTION_81();
}

- (uint64_t)_scaleInferenceInputForRedEyeReductionFromPixelBuffer:(CVPixelBufferRef)destinationBuffer outputPixelBuffer:
{
  if (result)
  {
    v4 = result;
    result = 4294954516;
    if (sourceBuffer)
    {
      if (destinationBuffer)
      {
        v6 = *(v4 + 376);
        if (!v6)
        {
          result = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], (v4 + 376));
          if (result)
          {
            return result;
          }

          result = VTSessionSetProperty(*(v4 + 376), *MEMORY[0x1E6983E30], *MEMORY[0x1E69840F0]);
          if (result)
          {
            return result;
          }

          v6 = *(v4 + 376);
        }

        return VTPixelTransferSessionTransferImage(v6, sourceBuffer, destinationBuffer);
      }
    }
  }

  return result;
}

- (void)_releaseResourcesWithSettings:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_80();
  [OUTLINED_FUNCTION_35_21(v4) workerQueue];
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  [OUTLINED_FUNCTION_86_4(*(v3 + 1032)) releaseResourcesWithSettings:?];
  if (([objc_msgSend(v1 "captureSettings")] & 0x200000000) != 0)
  {
    v5 = [objc_msgSend(v1 "captureSettings")] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v44 = v5;
  if (([objc_msgSend(v1 "captureSettings")] & 0x100000000) != 0)
  {
    if ([objc_msgSend(v1 "captureSettings")] == 12)
    {
      v6 = [objc_msgSend(v1 "captureSettings")] ^ 1;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v43) = v6;
  v7 = [(BWPhotonicEngineNodeConfiguration *)*(v2 + 152) minimumOutputBufferCount];
  if ([objc_msgSend(v1 "requestedSettings")])
  {
    v8 = [(BWPhotonicEngineNodeConfiguration *)*(v2 + 152) maxNumberOfBurstCapturesAllowedInFlight];
    if (v7 <= v8)
    {
      v7 = v8;
    }
  }

  if ([objc_msgSend(v1 "processingSettings")])
  {
    goto LABEL_16;
  }

  [objc_msgSend(v1 captureSettings];
  OUTLINED_FUNCTION_213();
  obj = v11;
  v12 = [v11 countByEnumeratingWithState:? objects:? count:?];
  if (v12)
  {
    v13 = v12;
LABEL_24:
    v14 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_6_30();
      if (!v15)
      {
        objc_enumerationMutation(obj);
      }

      if ([*(v2 + 152) idcSupportedForCaptureType:objc_msgSend(objc_msgSend(v1 captureFlags:"captureSettings") portType:{"captureType"), objc_msgSend(*(v50 + 8 * v14), "captureFlags"), objc_msgSend(*(v50 + 8 * v14), "portType")}])
      {
        break;
      }

      if (v13 == ++v14)
      {
        OUTLINED_FUNCTION_213();
        v13 = [obj countByEnumeratingWithState:? objects:? count:?];
        if (v13)
        {
          goto LABEL_24;
        }

        goto LABEL_30;
      }
    }

LABEL_16:
    v9 = *(v2 + 584);
    goto LABEL_17;
  }

LABEL_30:
  v9 = v7;
LABEL_17:
  if (v43 && [objc_msgSend(OUTLINED_FUNCTION_150_1() "livePixelBufferPool")])
  {
    v9 = 0;
  }

  [objc_msgSend(OUTLINED_FUNCTION_150_1() "livePixelBufferPool")];
  if (v44 & 1 | (([objc_msgSend(v1 "processingSettings")] & 1) == 0) | v43 & 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v2 + 588);
  }

  [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_150_1() mediaPropertiesForAttachedMediaKey:{0x1F21AAE10), "livePixelBufferPool"), "flushToMinimumCapacity:", v10}];
  [*(v2 + 152) providedInferenceAttachedMediaModesByAttachedMediaKey];
  OUTLINED_FUNCTION_157_0();
  OUTLINED_FUNCTION_25_6();
  v42 = OUTLINED_FUNCTION_194(v16, v17, v18, v19);
  if (v42)
  {
    v41 = *v49;
    do
    {
      v20 = 0;
      do
      {
        if (*v49 != v41)
        {
          objc_enumerationMutation(v43);
        }

        v45 = *(v48 + 8 * v20);
        obja = v20;
        v21 = [v43 objectForKeyedSubscript:?];
        OUTLINED_FUNCTION_19_25();
        v23 = [v22 countByEnumeratingWithState:? objects:? count:?];
        if (!v23)
        {
          v25 = 0;
          goto LABEL_58;
        }

        v24 = v23;
        v25 = 0;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            OUTLINED_FUNCTION_89();
            if (!v15)
            {
              objc_enumerationMutation(v21);
            }

            v27 = [*(8 * i) intValue];
            switch(v27)
            {
              case 3:
LABEL_48:
                v29 = [objc_msgSend(v1 "requestedSettings")];
                if (v29)
                {
                  v28 = v29;
                }

                else
                {
                  v28 = 2;
                }

                break;
              case 2:
                if ([OUTLINED_FUNCTION_86_4(152) isDepthCaptureNeedingPersonSegmentationMasksWithSettings:?])
                {
                  goto LABEL_48;
                }

                v28 = 0;
                break;
              case 1:
                v28 = v10;
                break;
              default:
                v28 = 0;
                break;
            }

            if (v25 <= v28)
            {
              v25 = v28;
            }
          }

          OUTLINED_FUNCTION_19_25();
          v24 = [v21 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v24);
LABEL_58:
        [objc_msgSend(objc_msgSend(*(v2 + 16) mediaPropertiesForAttachedMediaKey:{v45), "livePixelBufferPool"), "flushToMinimumCapacity:", v25}];
        v20 = obja + 1;
      }

      while (obja + 1 != v42);
      OUTLINED_FUNCTION_25_6();
      v42 = OUTLINED_FUNCTION_197(v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
    }

    while (v42);
  }

  [OUTLINED_FUNCTION_86_4(208) purgeProcessorAndSharedExternalMemoryResourceBackendMemoryIfNeededWithSettings:?];
  OUTLINED_FUNCTION_81();
}

- (void)_setupDeferredProcessingWithSettings:(uint64_t)a3 portType:
{
  if (a1)
  {
    if ([OUTLINED_FUNCTION_35_21(a1) controllerForType:5])
    {
      v7 = OUTLINED_FUNCTION_70();
      if ([(BWPhotonicEngineNode *)v7 _processingNeededForSettings:v8 portType:a3])
      {
        if (![objc_msgSend(a2 "captureSettings")] || (objc_msgSend(objc_msgSend(a2, "captureSettings"), "masterPortType"), objc_msgSend(OUTLINED_FUNCTION_4(), "isEqualToString:")))
        {
          v9 = [(BWStillImageProcessorControllerInput *)[BWDeferredProcessorControllerInput alloc] initWithSettings:a2 portType:a3];
          OUTLINED_FUNCTION_7_1();
          OUTLINED_FUNCTION_136_4();
          v13 = __70__BWPhotonicEngineNode__setupDeferredProcessingWithSettings_portType___block_invoke;
          v14 = &unk_1E79992C8;
          v15 = a1;
          [v10 addOutputSampleBufferRouter:v12 forBufferTypes:&unk_1F224A458 name:@"DeferredProcessing"];
          [OUTLINED_FUNCTION_76_7(560) setObject:? forKeyedSubscript:?];
          [*(a1 + *(v3 + 1032)) controllerForType:5];
          OUTLINED_FUNCTION_53();
          [v11 enqueueInputForProcessing:? delegate:?];
        }
      }
    }
  }
}

- (void)_processingOrderByPortTypeForSettings:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_80();
    v2 = [MEMORY[0x1E695DF70] array];
    v3 = [objc_msgSend(v1 "captureSettings")];
    OUTLINED_FUNCTION_43();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (MEMORY[0] != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(8 * i);
          v10 = OUTLINED_FUNCTION_44();
          if ([BWPhotonicEngineNode _nrfProcessorInputNeededForSettings:v10 portType:?])
          {
            if ([v9 isEqualToString:{objc_msgSend(objc_msgSend(v1, "captureSettings"), "masterPortType")}])
            {
              [v2 insertObject:v9 atIndex:0];
            }

            else
            {
              [v2 addObject:v9];
            }
          }
        }

        OUTLINED_FUNCTION_43();
        v6 = [v3 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }

    v11 = [v2 copy];
    OUTLINED_FUNCTION_56();
  }
}

- (uint64_t)_setupSoftISPProcessingStateIfNeededWithSettings:(uint64_t)result portType:processingPlan:
{
  if (result)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_146_2(v4);
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (([objc_msgSend(v2 "captureSettings")] & 4) == 0 || objc_msgSend(v3[35], "objectForKeyedSubscript:", v1))
    {
      return 0;
    }

    if (![OUTLINED_FUNCTION_145_2() controllerForType:12])
    {
      return 4294950488;
    }

    OUTLINED_FUNCTION_243_0([MEMORY[0x1E695DF70] array], 232);
    OUTLINED_FUNCTION_243_0([MEMORY[0x1E695DF70] array], 280);
    v5 = [objc_msgSend(v2 "captureSettings")];
    v6 = [OUTLINED_FUNCTION_41_15() resolvedProcessingResolutionFlavorForSettings:? portType:?];
    OUTLINED_FUNCTION_1_50();
    v27 = 3221225472;
    v28 = __97__BWPhotonicEngineNode__setupSoftISPProcessingStateIfNeededWithSettings_portType_processingPlan___block_invoke;
    v29 = &unk_1E79992C8;
    v30 = v3;
    v7 = [v5 expectedFrameCount];
    v8 = [v5 captureFlags];
    if ([OUTLINED_FUNCTION_41_15() isDeferredRawDeepFusionCapture:?])
    {
      if (([v5 captureFlags] & 0x100000) != 0)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      OUTLINED_FUNCTION_243_0([MEMORY[0x1E695DF70] array], 288);
      if (([objc_msgSend(v2 "captureSettings")] & 0x4000000000) != 0)
      {
        v10 = [objc_msgSend(v2 "captureSettings")];
        OUTLINED_FUNCTION_47_0();
        v12 = [v11 countByEnumeratingWithState:? objects:? count:?];
        if (v12)
        {
          v13 = v12;
          v25 = v1;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              OUTLINED_FUNCTION_49_7();
              if (!v15)
              {
                objc_enumerationMutation(v10);
              }

              [v3[36] setObject:objc_msgSend(MEMORY[0x1E695DF70] forKeyedSubscript:{"array"), *(8 * i)}];
            }

            OUTLINED_FUNCTION_47_0();
            v13 = OUTLINED_FUNCTION_1_0(v16, v17, v18, v19);
          }

          while (v13);
          v1 = v25;
        }
      }

      v20 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
      v6 = v6;
LABEL_29:
      if ([objc_msgSend(v2 "captureSettings")])
      {
        [objc_msgSend(v2 "captureSettings")];
        if (![OUTLINED_FUNCTION_17() isEqualToString:?])
        {
          v9 = 1;
          goto LABEL_35;
        }

        ++v9;
      }

      if (v9 < 1)
      {
        return 0;
      }

      do
      {
LABEL_35:
        v24 = -[BWSoftISPProcessorControllerInput initWithSettings:portType:resolutionFlavor:gdcEnabled:]([BWSoftISPProcessorControllerInput alloc], "initWithSettings:portType:resolutionFlavor:gdcEnabled:", v2, v1, v6, [v3[19] gdcSourceForSettings:v2 portType:v1] == 3);
        [(BWStillImageProcessorControllerInput *)v24 addOutputSampleBufferRouter:v26 forBufferTypes:&unk_1F224A470 name:@"SoftISP --> Stash"];
        [objc_msgSend(*(v3 + v20[285]) objectForKeyedSubscript:{-[BWStillImageProcessorControllerInput portType](v24, "portType")), "addObject:", v24}];

        --v9;
      }

      while (v9);
      return 0;
    }

    v9 = v7 + ((v8 >> 10) >> 31);
    if ([OUTLINED_FUNCTION_41_15() isDeferredRawLearnedNRCapture:?])
    {
      OUTLINED_FUNCTION_243_0([MEMORY[0x1E695DF70] array], 288);
    }

    else
    {
      v20 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
      if (![v5 adaptiveBracketingParameters])
      {
        goto LABEL_29;
      }

      v9 = 1;
      v21 = [objc_msgSend(objc_msgSend(v5 "adaptiveBracketingParameters")];
      if (!v21)
      {
        goto LABEL_29;
      }

      v22 = 0;
      v23 = 2;
      do
      {
        v22 += v21;
        v21 = [objc_msgSend(objc_msgSend(v5 "adaptiveBracketingParameters")];
        v23 = (v23 + 1);
      }

      while (v21);
      v9 = v22 + 1;
    }

    v20 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
    goto LABEL_29;
  }

  return result;
}

- (void)_drainStashedBeginMomentBuffersIfNeededWithSettings:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_84();
    v2 = v1;
    v4 = v3;
    [*(v3 + 208) workerQueue];
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_2_9();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (dword_1EB58E340)
    {
      v145 = 0;
      v144 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_115_0();
      if (v7)
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        v140 = 136315394;
        v141 = "[BWPhotonicEngineNode _drainStashedBeginMomentBuffersIfNeededWithSettings:]";
        v142 = 2050;
        v143 = [v2 settingsID];
        LODWORD(v91) = 22;
        v89 = &v140;
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_27_13();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0();
    }

    if ((*(v4 + 272) & 1) == 0)
    {
      v9 = [*(v4 + 264) count];
      if (v9 || (v9 = [*(v4 + 280) count]) != 0 || (v9 = objc_msgSend(*(v4 + 288), "count")) != 0)
      {
        memset(v139, 0, sizeof(v139));
        v11 = *(v4 + 264);
        v12 = OUTLINED_FUNCTION_64(v9, v10, v139, v138);
        if (v12)
        {
          v14 = v12;
          do
          {
            v15 = 0;
            do
            {
              OUTLINED_FUNCTION_21_20();
              if (!v7)
              {
                objc_enumerationMutation(v11);
              }

              updated = BWStillImageCoordinatorUpdateBeginMomentAttachmentsForSampleBuffer([*(v4 + 264) objectForKeyedSubscript:{*(*(&v139[0] + 1) + 8 * v15++), v89, v91}], v2);
            }

            while (v14 != v15);
            v12 = OUTLINED_FUNCTION_64(updated, v17, v139, v138);
            v14 = v12;
          }

          while (v12);
        }

        v137 = 0u;
        v136 = 0u;
        v135 = 0u;
        v134 = 0u;
        v98 = v4;
        v18 = *(v4 + 248);
        v19 = OUTLINED_FUNCTION_64(v12, v13, &v134, v133);
        if (v19)
        {
          v20 = v19;
          v21 = *v135;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v135 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = [*(v98 + 248) objectForKeyedSubscript:{*(*(&v134 + 1) + 8 * i), v89, v91}];
              memset(v132, 0, sizeof(v132));
              v24 = [v23 countByEnumeratingWithState:v132 objects:v131 count:16];
              if (v24)
              {
                v26 = v24;
                do
                {
                  v27 = 0;
                  do
                  {
                    OUTLINED_FUNCTION_142_0();
                    if (!v7)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v28 = BWStillImageCoordinatorUpdateBeginMomentAttachmentsForSampleBuffer([v23 objectForKeyedSubscript:*(*(&v132[0] + 1) + 8 * v27++)], v2);
                  }

                  while (v26 != v27);
                  v24 = OUTLINED_FUNCTION_1_0(v28, v29, v132, v131);
                  v26 = v24;
                }

                while (v24);
              }
            }

            v20 = OUTLINED_FUNCTION_64(v24, v25, &v134, v133);
          }

          while (v20);
        }

        memset(v130, 0, sizeof(v130));
        v30 = [*(v98 + 248) allKeys];
        v31 = [v30 countByEnumeratingWithState:v130 objects:v129 count:16];
        if (v31)
        {
          v32 = v31;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              OUTLINED_FUNCTION_42();
              if (!v7)
              {
                objc_enumerationMutation(v30);
              }

              [BWPhotonicEngineNode _attemptDisparityReferenceFrameResolutionForSettings:v98 portType:?];
            }

            v32 = OUTLINED_FUNCTION_64(v34, v35, v130, v129);
          }

          while (v32);
        }

        v36 = [*(v98 + 280) copy];
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        v95 = OUTLINED_FUNCTION_194(v36, v37, &v125, v124);
        if (v95)
        {
          v94 = *v126;
          do
          {
            v38 = 0;
            do
            {
              if (*v126 != v94)
              {
                objc_enumerationMutation(obj);
              }

              v97 = v38;
              v39 = [obj objectForKeyedSubscript:OUTLINED_FUNCTION_157_0()];
              OUTLINED_FUNCTION_25_6();
              v41 = [v40 countByEnumeratingWithState:? objects:? count:?];
              if (v41)
              {
                v47 = v41;
                do
                {
                  v48 = 0;
                  do
                  {
                    OUTLINED_FUNCTION_6_30();
                    if (!v7)
                    {
                      objc_enumerationMutation(v39);
                    }

                    v49 = *(v123 + 8 * v48);
                    v50 = [objc_msgSend(v49 "input")];
                    if ([v50 outputSampleBufferRouter])
                    {
                      v51 = objc_autoreleasePoolPush();
                      BWStillImageCoordinatorUpdateBeginMomentAttachmentsForSampleBuffer([v49 outputSampleBuffer], v2);
                      v52 = [v50 outputSampleBufferRouter];
                      (*(v52 + 16))(v52, [v49 outputSampleBuffer], 1, objc_msgSend(v49, "input"), objc_msgSend(v49, "error"));
                      objc_autoreleasePoolPop(v51);
                    }

                    ++v48;
                  }

                  while (v47 != v48);
                  OUTLINED_FUNCTION_25_6();
                  v41 = OUTLINED_FUNCTION_1_0(v53, v54, v55, v56);
                  v47 = v41;
                }

                while (v41);
              }

              v38 = v97 + 1;
            }

            while (v97 + 1 != v95);
            v95 = OUTLINED_FUNCTION_197(v41, v42, &v125, v124, v43, v44, v45, v46, v90, v92, v93, v94, v95, obj);
          }

          while (v95);
        }

        v57 = v98;
        [*(v98 + 280) removeAllObjects];
        [objc_msgSend(v2 "requestedSettings")];
        if ([OUTLINED_FUNCTION_8() isEqualToString:?])
        {
          *v117 = 0u;
          v118 = 0u;
          *v115 = 0u;
          v116 = 0u;
          v58 = *(v98 + 288);
          OUTLINED_FUNCTION_19_25();
          v63 = OUTLINED_FUNCTION_64(v59, v60, v61, v62);
          if (v63)
          {
            v64 = v63;
            do
            {
              for (k = 0; k != v64; ++k)
              {
                OUTLINED_FUNCTION_42();
                if (!v7)
                {
                  objc_enumerationMutation(v58);
                }

                v66 = *(v115[1] + 8 * k);
                if ([objc_msgSend(*(v57 + 288) objectForKeyedSubscript:{v66), "count"}])
                {
                  v67 = 0;
                  do
                  {
                    v68 = objc_autoreleasePoolPush();
                    v69 = [objc_msgSend(*(v57 + 288) objectForKeyedSubscript:{v66), "objectAtIndexedSubscript:", v67}];
                    v70 = v69;
                    BWStillImageCoordinatorUpdateBeginMomentAttachmentsForSampleBuffer(v69, v2);
                    v71 = v70;
                    v57 = v98;
                    [(BWPhotonicEngineNode *)v98 _deferredCaptureHandleSensorRawSampleBuffer:v71, v72, v73, v74, v75, v76, v77, v90, v92, v93, v94, v95, SHIDWORD(v95), obj, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115[0], v115[1], v116, *(&v116 + 1), v117[0], v117[1], v118, *(&v118 + 1), v119, v120, v121, v122];
                    objc_autoreleasePoolPop(v68);
                    ++v67;
                  }

                  while ([objc_msgSend(*(v57 + 288) objectForKeyedSubscript:{v66), "count"}] > v67);
                }
              }

              OUTLINED_FUNCTION_19_25();
              v64 = OUTLINED_FUNCTION_64(v78, v79, v80, v81);
            }

            while (v64);
          }
        }

        [*(v57 + 288) removeAllObjects];
        [(BWPhotonicEngineNode *)v57 _resetProcessingStateIfDone:v82];
      }
    }

    OUTLINED_FUNCTION_81();
  }
}

- (void)_stashAWBMetadataIfNeededForSampleBuffer:(int)a3 processingMode:
{
  if (!a1)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_54();
  [*(v5 + 208) workerQueue];
  IsCurrentDispatchQueue = _FigIsCurrentDispatchQueue();
  if (IsCurrentDispatchQueue)
  {
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    IsCurrentDispatchQueue = FigDebugAssert3();
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  v7 = OUTLINED_FUNCTION_7_24(IsCurrentDispatchQueue, @"StillSettings");
  v8 = [objc_msgSend(v7 "captureSettings")];
  v9 = [v7 captureSettings];
  if (a3 != 6 || !v8)
  {
    if (([v9 captureFlags] & 0x8000000000) != 0)
    {
      v10 = 16;
      goto LABEL_9;
    }

LABEL_15:
    OUTLINED_FUNCTION_24_12();
    return;
  }

  v10 = [v9 learnedNRStereoPhotoFrameFlag];
LABEL_9:
  v11 = BWStillImageCaptureFrameFlagsForSampleBuffer(v3);
  if ((v11 & v10) == 0)
  {
    goto LABEL_15;
  }

  [OUTLINED_FUNCTION_7_24(v11 *off_1E798A3C8)];
  if ([OUTLINED_FUNCTION_76_7(296) objectForKeyedSubscript:?])
  {
    goto LABEL_15;
  }

  [MEMORY[0x1E695DF90] dictionary];
  v12 = OUTLINED_FUNCTION_133();
  BWCopyWhiteBalanceMetadata(v12, v8);
  OUTLINED_FUNCTION_89_4(296);
  OUTLINED_FUNCTION_24_12();

  [v13 setObject:? forKeyedSubscript:?];
}

- (void)_setupSoftISPOutputRoutingIfNeededWithOutputSampleBufferRouter:processingPlan:
{
  OUTLINED_FUNCTION_84();
  if (v3)
  {
    OUTLINED_FUNCTION_2_74();
    [*(v4 + 208) workerQueue];
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v5 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
    if ([*(v2 + 280) count])
    {
      OUTLINED_FUNCTION_6_78();
      OUTLINED_FUNCTION_213();
      obj = v6;
      v37 = [v6 countByEnumeratingWithState:? objects:? count:?];
      if (v37)
      {
        v36 = *v41;
        while (2)
        {
          v7 = 0;
          do
          {
            if (*v41 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v38 = v7;
            v8 = *(v40 + 8 * v7);
            v9 = [*(v2 + v5[304]) objectForKeyedSubscript:{v8, OUTLINED_FUNCTION_157_0()}];
            OUTLINED_FUNCTION_25_6();
            v11 = [v10 countByEnumeratingWithState:? objects:? count:?];
            if (v11)
            {
              v12 = v11;
              LODWORD(v13) = 0;
LABEL_12:
              v14 = 0;
              while (1)
              {
                OUTLINED_FUNCTION_42();
                if (!v15)
                {
                  objc_enumerationMutation(v9);
                }

                v16 = *(v39 + 8 * v14);
                [objc_msgSend(v16 "input")];
                [v16 input];
                [OUTLINED_FUNCTION_4() addInput:? sequenceNumber:? portType:? bufferTypes:?];
                [objc_msgSend(v16 "input")];
                v17 = OUTLINED_FUNCTION_26_13();
                if (OUTLINED_FUNCTION_232_0(v17, v18))
                {
                  goto LABEL_32;
                }

                v13 = (v13 + 1);
                if (v12 == ++v14)
                {
                  OUTLINED_FUNCTION_25_6();
                  v12 = OUTLINED_FUNCTION_37_2(v19, v20, v21, v22);
                  if (v12)
                  {
                    goto LABEL_12;
                  }

                  goto LABEL_20;
                }
              }
            }

            v13 = 0;
LABEL_20:
            v23 = [*(v2 + 232) objectForKeyedSubscript:v8];
            OUTLINED_FUNCTION_19_25();
            v25 = [v24 countByEnumeratingWithState:? objects:? count:?];
            if (v25)
            {
              v26 = v25;
LABEL_22:
              v27 = 0;
              while (1)
              {
                OUTLINED_FUNCTION_42();
                if (!v15)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(8 * v27);
                [v28 addOutputSampleBufferRouter:v1 forBufferTypes:&unk_1F224A4B8 name:@"Standard SoftISP"];
                [v0 addInput:v28 sequenceNumber:v13 portType:v8 bufferTypes:&unk_1F224A4D0];
                [v28 stillImageSettings];
                v29 = OUTLINED_FUNCTION_26_13();
                if (OUTLINED_FUNCTION_232_0(v29, v30))
                {
                  break;
                }

                v13 = (v13 + 1);
                if (v26 == ++v27)
                {
                  OUTLINED_FUNCTION_19_25();
                  v26 = OUTLINED_FUNCTION_37_2(v31, v32, v33, v34);
                  if (v26)
                  {
                    goto LABEL_22;
                  }

                  goto LABEL_28;
                }
              }

LABEL_32:
              OUTLINED_FUNCTION_1_5();
              FigDebugAssert3();
              goto LABEL_33;
            }

LABEL_28:
            ++v7;
            v5 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
          }

          while (v38 + 1 != v37);
          OUTLINED_FUNCTION_213();
          v37 = [obj countByEnumeratingWithState:? objects:? count:?];
          if (v37)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_33:
  OUTLINED_FUNCTION_81();
}

- (uint64_t)_setupProcessingStateForScalerIfNeededWithSettings:(uint64_t)a3 sequenceNumber:(uint64_t)a4 portType:(int)a5 preNoiseReductionScaler:(void *)a6 processingPlan:
{
  if (result)
  {
    v11 = result;
    [OUTLINED_FUNCTION_35_21(result) workerQueue];
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    OUTLINED_FUNCTION_148_0();
    result = [*(v11 + v12) scalerProcessorControllerConfiguration];
    if (result)
    {
      v49[0] = 0;
      if ([*(v11 + *(v7 + 1000)) isScalerRequiredForSettings:a2 portType:a4 preNoiseReductionScalerOut:v49])
      {
        v13 = v49[0] == a5;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        v14 = [*(v11 + *(v6 + 1032)) controllerForType:18];
        if (v14)
        {
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __138__BWPhotonicEngineNode__setupProcessingStateForScalerIfNeededWithSettings_sequenceNumber_portType_preNoiseReductionScaler_processingPlan___block_invoke;
          v47[3] = &unk_1E799DF28;
          v47[4] = v11;
          v47[5] = a4;
          v47[6] = a2;
          v48 = a5;
          v35 = v14;
          if (a5)
          {
            v46[0] = MEMORY[0x1E69E9820];
            v46[1] = 3221225472;
            v37 = v46;
            v46[2] = __138__BWPhotonicEngineNode__setupProcessingStateForScalerIfNeededWithSettings_sequenceNumber_portType_preNoiseReductionScaler_processingPlan___block_invoke_677;
            v46[3] = &unk_1E79992C8;
            v46[4] = v11;
          }

          else
          {
            v37 = 0;
          }

          v15 = a4;
          v38 = [[BWScalerProcessorControllerInput alloc] initWithSettings:a2 portType:a4];
          v36 = v11;
          if (a5)
          {
            v16 = &unk_1F224A590;
          }

          else
          {
            v16 = -[BWPhotonicEngineNode _bufferTypesForCaptureSettings:](v11, [a2 captureSettings]);
          }

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          OUTLINED_FUNCTION_59_7();
          v21 = OUTLINED_FUNCTION_37(v17, v18, v19, v20);
          if (v21)
          {
            v22 = v21;
            v23 = *v43;
            do
            {
              v24 = 0;
              do
              {
                OUTLINED_FUNCTION_115_6();
                if (v25 != v23)
                {
                  objc_enumerationMutation(v16);
                }

                v26 = *(*(&v42 + 1) + 8 * v24);
                v27 = [v26 intValue];
                v28 = [a6 lastAddedInputForSequenceNumber:a3 portType:v15 bufferType:v27];
                if (v28 || a5)
                {
                  v29 = [objc_msgSend(a2 "captureSettings")];
                  if (!a5 || (v29 & 4) != 0)
                  {
                    if (!ubn_insertOutputRouterForInputAfterPreviousInputForBufferTypeAndName(v47, v38, v28, v27, @"PreviousInput --> Scaler"))
                    {
                      return 4294954516;
                    }
                  }

                  else
                  {
                    v41 = v26;
                    -[BWStillImageProcessorControllerInput addOutputSampleBufferRouter:forBufferTypes:name:](v38, "addOutputSampleBufferRouter:forBufferTypes:name:", v37, [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1], @"NoiseReduction Cropped --> NRF");
                  }

                  [OUTLINED_FUNCTION_8_8() addInput:? sequenceNumber:? portType:? bufferType:?];
                }

                ++v24;
              }

              while (v22 != v24);
              OUTLINED_FUNCTION_59_7();
              v34 = OUTLINED_FUNCTION_37(v30, v31, v32, v33);
              v22 = v34;
            }

            while (v34);
          }

          if (![*(v36 + 448) objectForKeyedSubscript:v15])
          {
            [*(v36 + 448) setObject:objc_msgSend(MEMORY[0x1E695DF70] forKeyedSubscript:{"array"), v15}];
          }

          [objc_msgSend(*(v36 + 448) objectForKeyedSubscript:{v15), "addObject:", v38}];

          return [v35 enqueueInputForProcessing:v38 delegate:v36];
        }

        else
        {
          OUTLINED_FUNCTION_0();
          FigDebugAssert3();
          return 4294894081;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (uint64_t)_setupProcessingStateForDeferredCaptureIfNeededWithSettings:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  v3 = a1;
  if (![objc_msgSend(a2 "captureSettings")] || *(v3 + 536))
  {
    v28 = 0;
    v46 = 0;
  }

  else
  {
    v4 = [*(v3 + 208) controllerForType:14];
    if (v4)
    {
      v48 = v4;
      v49 = [MEMORY[0x1E695DF90] dictionary];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v5 = [objc_msgSend(v2 "captureSettings")];
      OUTLINED_FUNCTION_13_14();
      v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
      v8 = 0x1EB588000;
      v50 = v2;
      if (v7)
      {
        v9 = v7;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            OUTLINED_FUNCTION_10_18();
            if (!v11)
            {
              objc_enumerationMutation(v5);
            }

            v12 = *(*(&v53 + 1) + 8 * i);
            v13 = [OUTLINED_FUNCTION_46_19() resolvedProcessingResolutionFlavorForSettings:v2 portType:v12];
            if ((v13 - 1) <= 5)
            {
              v14 = v13;
              v51 = [MEMORY[0x1E696AD98] numberWithInt:v13];
              v15 = OUTLINED_FUNCTION_46_19();
              v16 = v3;
              v17 = v8;
              v18 = [-[BWPhotonicEngineNodeConfiguration dimensionsByResolutionFlavorByPortType](v15) objectForKeyedSubscript:v12];
              v19 = [MEMORY[0x1E696AD98] numberWithInt:v14];
              v20 = v18;
              v8 = v17;
              v3 = v16;
              v2 = v50;
              v52[0] = [v20 objectForKeyedSubscript:v19];
              [v49 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v52, &v51, 1), v12}];
            }
          }

          OUTLINED_FUNCTION_13_14();
          v9 = OUTLINED_FUNCTION_1_0(v21, v22, v23, v24);
        }

        while (v9);
      }

      if ([v49 count])
      {
        v25 = [v49 copy];
      }

      else
      {
        v25 = 0;
      }

      v26 = [BWDeferredCaptureControllerInput alloc];
      [OUTLINED_FUNCTION_133() configuration];
      [objc_msgSend(*(v3 + 8) "videoFormat")];
      OUTLINED_FUNCTION_223_0();
      v28 = [v27 initWithSettings:? configuration:? sourceNodePixelBufferAttributes:?];
      v29 = OUTLINED_FUNCTION_46_19();
      [objc_msgSend(v28 "pipelineParameters")];
      v30 = OUTLINED_FUNCTION_46_19();
      [objc_msgSend(v28 "pipelineParameters")];
      [objc_msgSend(v28 "pipelineParameters")];
      [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion];
      [OUTLINED_FUNCTION_167() setNrfVersion:v25];
      v31 = OUTLINED_FUNCTION_46_19();
      [(BWPhotonicEngineNodeConfiguration *)v31 semanticRenderingVersion];
      [OUTLINED_FUNCTION_167() setSemanticRenderingVersion:v25];
      v32 = OUTLINED_FUNCTION_46_19();
      [(BWPhotonicEngineNodeConfiguration *)v32 smartStyleRenderingVersion];
      [OUTLINED_FUNCTION_167() setSmartStyleRenderingVersion:v25];
      v33 = OUTLINED_FUNCTION_46_19();
      [(BWPhotonicEngineNodeConfiguration *)v33 smartStyleRenderingEnabled];
      [OUTLINED_FUNCTION_167() setSmartStyleRenderingEnabled:v25];
      v34 = OUTLINED_FUNCTION_46_19();
      [(BWPhotonicEngineNodeConfiguration *)v34 smartStyleReversibilityEnabled];
      [OUTLINED_FUNCTION_167() setSmartStyleReversibilityEnabled:v25];
      v35 = OUTLINED_FUNCTION_46_19();
      [(BWPhotonicEngineNodeConfiguration *)v35 continuousZoomWithDepthSupported];
      [OUTLINED_FUNCTION_167() setContinuousZoomWithDepthSupported:v25];
      if (([objc_msgSend(v50 "captureSettings")] & 0x800) != 0)
      {
        [OUTLINED_FUNCTION_46_19() depthDataType];
        [OUTLINED_FUNCTION_167() setDepthDataType:v25];
        [OUTLINED_FUNCTION_46_19() pearlModuleType];
        [OUTLINED_FUNCTION_167() setPearlModuleType:v25];
        v36 = [OUTLINED_FUNCTION_46_19() depthDataOutputDimensions];
        if ([objc_msgSend(v50 "requestedSettings")])
        {
          v37 = FigCaptureAspectRatioForDimensions(v36);
          v38 = BWAspectRatioValueFromAspectRatio([objc_msgSend(v50 "requestedSettings")]);
          v39 = v38 <= 1.0 || v37 <= 1.0;
          v40 = __ROR8__(v36, 32);
          if (!v39)
          {
            v40 = v36;
          }

          if (v37 >= 1.0 || v38 >= 1.0)
          {
            v36 = v40;
          }
        }

        [objc_msgSend(v28 "pipelineParameters")];
      }

      v42 = OUTLINED_FUNCTION_46_19();
      [objc_msgSend(v28 "pipelineParameters")];
      v43 = OUTLINED_FUNCTION_46_19();
      v44 = [(BWPhotonicEngineNodeConfiguration *)v43 sensorCenterOffset];
      [objc_msgSend(v28 "pipelineParameters")];
      [objc_msgSend(v28 "pipelineParameters")];
      v46 = [v48 enqueueInputForProcessing:v28 delegate:v3];
      if (!v46)
      {
        *(v3 + 536) = v28;
      }
    }

    else
    {
      v28 = 0;
      v46 = 4294950488;
    }
  }

  return v46;
}

- (uint64_t)_setupProcessingStateForClientBracketWithSettings:(uint64_t)a1 processingPlan:
{
  if (a1)
  {
    OUTLINED_FUNCTION_2_74();
    if (![OUTLINED_FUNCTION_82_7(v4) controllerForType:6])
    {
      return 4294894081;
    }

    [OUTLINED_FUNCTION_171() workerQueue];
    OUTLINED_FUNCTION_25_16();
    OUTLINED_FUNCTION_149_1(COERCE_DOUBLE(3221225472));
    v47 = __65__BWPhotonicEngineNode__standardNROutputRouterWithExpectedQueue___block_invoke;
    v48 = &unk_1E7999390;
    v49 = v5;
    v50 = v3;
    v42 = [v46 copy];
    [v2 captureSettings];
    [objc_msgSend(v2 "captureSettings")];
    v44 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_17() "captureStreamSettingsForPortType:{"unifiedBracketedCaptureParams"), "count"}")];
    v6 = OUTLINED_FUNCTION_39_13();
    [BWPhotonicEngineNode _processingOrderByPortTypeForSettings:v6];
    OUTLINED_FUNCTION_59_7();
    obj = v7;
    v43 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v43)
    {
      OUTLINED_FUNCTION_115_6();
      v41 = v8;
      while (2)
      {
        for (i = 0; i != v43; ++i)
        {
          OUTLINED_FUNCTION_115_6();
          if (v10 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(8 * i);
          OUTLINED_FUNCTION_53();
          [v12 resolvedProcessingResolutionFlavorForSettings:? portType:?];
          v13 = [BWNRFProcessorInput alloc];
          OUTLINED_FUNCTION_53();
          v15 = [v14 initWithSettings:? portType:? resolutionFlavor:?];
          [v2 captureSettings];
          v16 = OUTLINED_FUNCTION_26_13();
          [(BWPhotonicEngineNode *)v16 _bufferTypesForCaptureSettings:v17];
          v18 = OUTLINED_FUNCTION_126_2();
          v45 = v19;
          [v18 addOutputSampleBufferRouter:v42 forBufferTypes:? name:?];
          OUTLINED_FUNCTION_159([MEMORY[0x1E695DF70] arrayWithObject:v15], 304);

          v20 = [v15 stillImageSettings];
          [v15 portType];
          v21 = OUTLINED_FUNCTION_7();
          v23 = [(BWPhotonicEngineNode *)v21 _processingNeededForSettings:v20 portType:v22];
          if (v23)
          {
            v24 = v44;
          }

          else
          {
            v24 = 1;
          }

          [v15 setRemainingProcessingCount:{objc_msgSend(v15, "remainingProcessingCount") + v24}];
          OUTLINED_FUNCTION_159([MEMORY[0x1E695DF90] dictionary], 472);
          if (v44 >= 1)
          {
            v25 = 1;
            v26 = v44;
            while (1)
            {
              if (v23)
              {
                [v15 portType];
                v29 = OUTLINED_FUNCTION_39_13();
                v32 = [(BWPhotonicEngineNode *)v29 _setupProcessingStateForScalerIfNeededWithSettings:v30 sequenceNumber:v25 portType:v31 preNoiseReductionScaler:1 processingPlan:v1];
                if (v32)
                {
                  break;
                }

                [v1 addInput:v15 sequenceNumber:v25 portType:v11 bufferTypes:v45];
                OUTLINED_FUNCTION_39_13();
                [BWPhotonicEngineNode _setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings:sequenceNumber:portType:processingPlan:];
                if (v32)
                {
                  break;
                }

                v33 = OUTLINED_FUNCTION_39_13();
                v32 = [(BWPhotonicEngineNode *)v33 _setupProcessingStateForScalerIfNeededWithSettings:v34 sequenceNumber:v25 portType:v11 preNoiseReductionScaler:0 processingPlan:v1];
                if (v32)
                {
                  break;
                }

                HIDWORD(v38) = v25;
                LODWORD(v39) = 0;
                LOBYTE(v38) = 0;
                OUTLINED_FUNCTION_22_27();
                v32 = [v35 enqueueInputForProcessing:v38 delegate:v39 processErrorRecoveryFrame:? processErrorRecoveryProxy:? processOriginalImage:? processToneMapping:? processInferenceInputImage:? clientBracketSequenceNumber:? processSemanticRendering:? provideInferenceInputImageForProcessing:? processSmartStyleRenderingInput:? inferencesAvailable:?];
                if (v32)
                {
                  break;
                }
              }

              if ([v15 isMaster])
              {
                v27 = OUTLINED_FUNCTION_39_13();
                [(BWPhotonicEngineNode *)v27 _setupProcessingStateForDisparityIfNeededWithSettings:v28 sequenceNumber:v25 processingPlan:v1];
              }

              v25 = (v25 + 1);
              if (!--v26)
              {
                goto LABEL_23;
              }
            }

            v36 = v32;
            OUTLINED_FUNCTION_1_5();
            FigDebugAssert3();
            return v36;
          }

LABEL_23:
          ;
        }

        OUTLINED_FUNCTION_59_7();
        v43 = [obj countByEnumeratingWithState:? objects:? count:?];
        if (v43)
        {
          continue;
        }

        break;
      }
    }
  }

  return 0;
}

- (uint64_t)_setupProcessingStateForColorConstancyCaptureWithSettings:(uint64_t)a1 processingPlan:
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_74();
  v5 = 4294894081;
  if ([OUTLINED_FUNCTION_82_7(v6) controllerForType:6])
  {
    if ([OUTLINED_FUNCTION_171() controllerForType:12])
    {
      v62 = [OUTLINED_FUNCTION_171() controllerForType:17];
      if (v62)
      {
        v61 = v4;
        OUTLINED_FUNCTION_25_16();
        OUTLINED_FUNCTION_149_1(COERCE_DOUBLE(3221225472));
        v69 = __97__BWPhotonicEngineNode__setupProcessingStateForColorConstancyCaptureWithSettings_processingPlan___block_invoke;
        v70 = &unk_1E7999390;
        v71 = v3;
        v72 = v2;
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = v7;
        v67[2] = __97__BWPhotonicEngineNode__setupProcessingStateForColorConstancyCaptureWithSettings_processingPlan___block_invoke_626;
        v67[3] = &unk_1E79992C8;
        v67[4] = v3;
        [OUTLINED_FUNCTION_171() workerQueue];
        v8 = OUTLINED_FUNCTION_26_13();
        v66 = [BWPhotonicEngineNode _standardNROutputRouterWithExpectedQueue:v8];
        [v2 captureSettings];
        v9 = OUTLINED_FUNCTION_26_13();
        v11 = [(BWPhotonicEngineNode *)v9 _bufferTypesForCaptureSettings:v10];
        v12 = OUTLINED_FUNCTION_39_13();
        [BWPhotonicEngineNode _processingOrderByPortTypeForSettings:v12];
        OUTLINED_FUNCTION_59_7();
        v65 = OUTLINED_FUNCTION_194(v13, v14, v15, v16);
        if (!v65)
        {
          goto LABEL_22;
        }

        OUTLINED_FUNCTION_115_6();
        v64 = v17;
LABEL_7:
        v18 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_115_6();
          if (v19 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(8 * v18);
          OUTLINED_FUNCTION_53();
          [v21 resolvedProcessingResolutionFlavorForSettings:? portType:?];
          v22 = [BWSoftISPProcessorControllerInput alloc];
          OUTLINED_FUNCTION_53();
          v24 = [v23 initWithSettings:? portType:? resolutionFlavor:?];
          [v24 addOutputSampleBufferRouter:v68 forBufferTypes:v11 name:@"Ambient --> NRF"];
          OUTLINED_FUNCTION_137_5(v1, v25, v24);
          OUTLINED_FUNCTION_159([MEMORY[0x1E695DF70] arrayWithObject:v24], 232);

          if ([objc_msgSend(v2 "requestedSettings")])
          {
            v26 = [BWNRFProcessorInput alloc];
            OUTLINED_FUNCTION_53();
            v28 = [v27 initWithSettings:? portType:? resolutionFlavor:?];
            [v28 addOutputSampleBufferRouter:v66 forBufferTypes:&unk_1F224A560 name:@"Ambient Fallback --> NRF"];
            [OUTLINED_FUNCTION_94_5() addInput:? sequenceNumber:? portType:? bufferType:?];
            OUTLINED_FUNCTION_159([MEMORY[0x1E695DF70] arrayWithObject:v28], 304);
            [v28 setRemainingProcessingCount:{objc_msgSend(v28, "remainingProcessingCount") + 1}];
            OUTLINED_FUNCTION_179();
            OUTLINED_FUNCTION_22_27();
            v5 = [v29 enqueueInputForProcessing:? delegate:? processErrorRecoveryFrame:? processErrorRecoveryProxy:? processOriginalImage:? processToneMapping:? processInferenceInputImage:? clientBracketSequenceNumber:? processSemanticRendering:? provideInferenceInputImageForProcessing:? processSmartStyleRenderingInput:? inferencesAvailable:?];

            if (v5)
            {
              goto LABEL_23;
            }

            OUTLINED_FUNCTION_24_23();
            [BWPhotonicEngineNode _setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings:sequenceNumber:portType:processingPlan:];
            if (v30)
            {
              break;
            }
          }

          v31 = [BWSoftISPProcessorControllerInput alloc];
          OUTLINED_FUNCTION_53();
          v33 = [v32 initWithSettings:? portType:? resolutionFlavor:?];
          [v33 addOutputSampleBufferRouter:v68 forBufferTypes:v11 name:@"Flash --> NRF"];
          OUTLINED_FUNCTION_137_5(v1, v34, v33);
          [objc_msgSend(v3[29] objectForKeyedSubscript:{v20), "addObject:", v33}];

          v35 = [BWNRFProcessorInput alloc];
          OUTLINED_FUNCTION_53();
          v37 = [v36 initWithSettings:? portType:? resolutionFlavor:?];
          if ([v3[38] objectForKeyedSubscript:v20])
          {
            [objc_msgSend(v3[38] objectForKeyedSubscript:{v20), "addObject:", v37}];
          }

          else
          {
            OUTLINED_FUNCTION_159([MEMORY[0x1E695DF70] arrayWithObject:v37], 304);
          }

          [v37 setRemainingProcessingCount:{objc_msgSend(v37, "remainingProcessingCount") + 1}];

          v38 = [v37 stillImageSettings];
          [v37 portType];
          v39 = OUTLINED_FUNCTION_7();
          if ([(BWPhotonicEngineNode *)v39 _processingNeededForSettings:v38 portType:v40])
          {
            v41 = [BWColorConstancyProcessorControllerInput alloc];
            OUTLINED_FUNCTION_53();
            v43 = [v42 initWithSettings:? portType:?];
            [v43 addOutputSampleBufferRouter:v67 forBufferTypes:v11 name:@"Color Constancy --> NRF"];
            [OUTLINED_FUNCTION_94_5() addInput:? sequenceNumber:? portType:? bufferTypes:?];
            [v3[50] setObject:v43 forKeyedSubscript:v20];
            v5 = [v62 enqueueInputForProcessing:v43 delegate:v3];

            if (v5)
            {
LABEL_23:
              OUTLINED_FUNCTION_1_8();
LABEL_27:
              FigDebugAssert3();
              return v5;
            }

            [v37 addOutputSampleBufferRouter:v66 forBufferTypes:v11 name:@"Color Constancy --> Emit"];
            OUTLINED_FUNCTION_137_5(v1, v44, v37);
            OUTLINED_FUNCTION_179();
            OUTLINED_FUNCTION_22_27();
            v30 = [v45 enqueueInputForProcessing:? delegate:? processErrorRecoveryFrame:? processErrorRecoveryProxy:? processOriginalImage:? processToneMapping:? processInferenceInputImage:? clientBracketSequenceNumber:? processSemanticRendering:? provideInferenceInputImageForProcessing:? processSmartStyleRenderingInput:? inferencesAvailable:?];
            if (v30)
            {
              break;
            }

            OUTLINED_FUNCTION_24_23();
            [BWPhotonicEngineNode _setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings:sequenceNumber:portType:processingPlan:];
            if (v30)
            {
              break;
            }
          }

          if (v65 == ++v18)
          {
            OUTLINED_FUNCTION_59_7();
            v65 = OUTLINED_FUNCTION_197(v46, v47, v48, v49, v50, v51, v52, v53, v58, v59, v60, v61, v62, obj);
            if (v65)
            {
              goto LABEL_7;
            }

LABEL_22:
            v54 = OUTLINED_FUNCTION_24_23();
            return [(BWPhotonicEngineNode *)v54 _setupProcessingStateForDisparityIfNeededWithSettings:v55 sequenceNumber:v56 processingPlan:v1];
          }
        }

        v5 = v30;
        OUTLINED_FUNCTION_1_5();
        goto LABEL_27;
      }
    }
  }

  return v5;
}

- (void)_setupProcessingStateForFlashCaptureWithSettings:processingPlan:
{
  OUTLINED_FUNCTION_60();
  if (v0)
  {
    v3 = v2;
    v4 = v1;
    v5 = v0;
    if ([v0[26] controllerForType:6])
    {
      v6 = [OUTLINED_FUNCTION_141_3() controllerForType:12];
      OUTLINED_FUNCTION_26_14();
      v120[1] = 3221225472;
      v120[2] = __88__BWPhotonicEngineNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke;
      v120[3] = &unk_1E79992C8;
      v120[4] = v5;
      v99 = [OUTLINED_FUNCTION_141_3() controllerForType:11];
      OUTLINED_FUNCTION_61_10();
      v119[2] = __88__BWPhotonicEngineNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke_583;
      v119[3] = &unk_1E79992C8;
      v119[4] = v5;
      v7 = [OUTLINED_FUNCTION_141_3() controllerForType:15];
      v118[0] = MEMORY[0x1E69E9820];
      v118[1] = 3221225472;
      v118[2] = __88__BWPhotonicEngineNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke_2;
      v118[3] = &unk_1E7999390;
      v118[4] = v5;
      v118[5] = v4;
      [OUTLINED_FUNCTION_141_3() workerQueue];
      v8 = OUTLINED_FUNCTION_26_13();
      v96 = [BWPhotonicEngineNode _standardNROutputRouterWithExpectedQueue:v8];
      [v4 captureSettings];
      v9 = OUTLINED_FUNCTION_26_13();
      v103 = [(BWPhotonicEngineNode *)v9 _bufferTypesForCaptureSettings:v10];
      v117[0] = MEMORY[0x1E69E9820];
      v117[1] = 3221225472;
      v117[2] = __88__BWPhotonicEngineNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke_584;
      v117[3] = &unk_1E79992C8;
      v117[4] = v5;
      v11 = [OUTLINED_FUNCTION_141_3() controllerForType:4];
      v12 = [objc_msgSend(v4 "captureSettings")];
      v13 = [OUTLINED_FUNCTION_122_5(152) isSWFRFlashCapture:?];
      v105 = [OUTLINED_FUNCTION_122_5(152) isRedEyeReductionFlashCapture:?];
      [OUTLINED_FUNCTION_122_5(152) areInferencesRequiredByProcessorControllersForSettings:?];
      v106 = v12;
      v93 = v7;
      v14 = v7 ? 0 : v13;
      if (((v6 == 0) & (v12 >> 2)) == 0 && (v14 & 1) == 0 && (((v13 ^ 1) & 1) != 0 || (v12 & 4) != 0))
      {
        v107 = v3;
        v95 = v11;
        memset(v116, 0, sizeof(v116));
        [BWPhotonicEngineNode _processingOrderByPortTypeForSettings:v5];
        obj = v15;
        v16 = [v15 countByEnumeratingWithState:v116 objects:v115 count:16];
        v17 = v103;
        if (v16)
        {
          v18 = v16;
          v19 = @"Ambient --> NRF";
          if (!v13)
          {
            v19 = @"Flash --> NRF";
          }

          v97 = v19;
          v20 = v105;
          if ((v12 & 4) == 0)
          {
            v20 = 1;
          }

          v94 = v20;
          while (2)
          {
            for (i = 0; i != v18; i = i + 1)
            {
              OUTLINED_FUNCTION_6_30();
              if (!v22)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v116[0] + 1) + 8 * i);
              OUTLINED_FUNCTION_73_6();
              [v24 resolvedProcessingResolutionFlavorForSettings:? portType:?];
              v25 = [BWNRFProcessorInput alloc];
              OUTLINED_FUNCTION_73_6();
              v27 = [v26 initWithSettings:? portType:? resolutionFlavor:?];
              [v5[38] setObject:objc_msgSend(MEMORY[0x1E695DF70] forKeyedSubscript:{"arrayWithObject:", v27), v23}];
              [v27 setRemainingProcessingCount:{objc_msgSend(v27, "remainingProcessingCount") + 1}];

              v28 = [v27 stillImageSettings];
              [v27 portType];
              v29 = OUTLINED_FUNCTION_7();
              if ([(BWPhotonicEngineNode *)v29 _processingNeededForSettings:v28 portType:v30])
              {
                v98 = i;
                OUTLINED_FUNCTION_73_6();
                v101 = [v31 isInferenceInputImageRequiredForSettings:? portType:?];
                if ((v106 & 4) != 0)
                {
                  v32 = [BWSoftISPProcessorControllerInput alloc];
                  OUTLINED_FUNCTION_73_6();
                  v34 = [v33 initWithSettings:? portType:? resolutionFlavor:?];
                  [v34 addOutputSampleBufferRouter:v120 forBufferTypes:v17 name:v97];
                  OUTLINED_FUNCTION_86_7();
                  [v35 addInput:? sequenceNumber:? portType:? bufferTypes:?];
                  [v5[29] setObject:objc_msgSend(MEMORY[0x1E695DF70] forKeyedSubscript:{"arrayWithObject:", v34), v23}];
                }

                if (v13)
                {
                  v36 = [BWSoftISPProcessorControllerInput alloc];
                  OUTLINED_FUNCTION_73_6();
                  v38 = [v37 initWithSettings:? portType:? resolutionFlavor:?];
                  [v38 addOutputSampleBufferRouter:v120 forBufferTypes:v17 name:@"Flash --> NRF"];
                  OUTLINED_FUNCTION_86_7();
                  [v39 addInput:? sequenceNumber:? portType:? bufferTypes:?];
                  [OUTLINED_FUNCTION_247_0(232) addObject:v38];

                  v40 = [BWSWFRProcessorControllerInput alloc];
                  OUTLINED_FUNCTION_73_6();
                  v42 = [v41 initWithSettings:? portType:?];
                  v111 = 0u;
                  v112 = 0u;
                  v113 = 0u;
                  v114 = 0u;
                  v100 = OUTLINED_FUNCTION_1_0(v42, v43, &v111, v110);
                  if (v100)
                  {
                    v102 = *v112;
                    v91 = v18;
                    v92 = v4;
                    while (2)
                    {
                      for (j = 0; j != v100; ++j)
                      {
                        if (*v112 != v102)
                        {
                          objc_enumerationMutation(v17);
                        }

                        v45 = [*(*(&v111 + 1) + 8 * j) intValue];
                        memset(v109, 0, sizeof(v109));
                        v46 = OUTLINED_FUNCTION_247_0(232);
                        v47 = [v46 countByEnumeratingWithState:v109 objects:v108 count:16];
                        if (v47)
                        {
                          v48 = v47;
LABEL_30:
                          v49 = 0;
                          while (1)
                          {
                            OUTLINED_FUNCTION_6_30();
                            if (!v22)
                            {
                              objc_enumerationMutation(v46);
                            }

                            inserted = ubn_insertOutputRouterForInputAfterPreviousInputForBufferTypeAndName(v118, v42, *(*(&v109[0] + 1) + 8 * v49), v45, @"PreviousInput --> SWFR");
                            if (!inserted)
                            {
                              goto LABEL_63;
                            }

                            if (v48 == ++v49)
                            {
                              v48 = OUTLINED_FUNCTION_13_15(inserted, v51, v109, v108);
                              if (v48)
                              {
                                goto LABEL_30;
                              }

                              break;
                            }
                          }
                        }

                        OUTLINED_FUNCTION_86_7();
                        v53 = [v52 addInput:? sequenceNumber:? portType:? bufferType:?];
                        v17 = v103;
                      }

                      v18 = v91;
                      v4 = v92;
                      v100 = OUTLINED_FUNCTION_1_0(v53, v54, &v111, v110);
                      if (v100)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  [v5[48] setObject:v42 forKeyedSubscript:v23];
                  v55 = [v93 enqueueInputForProcessing:v42 delegate:v5];

                  if (v55)
                  {
                    goto LABEL_63;
                  }

                  if (v101 && (v56 = [BWNRFProcessorInput alloc], OUTLINED_FUNCTION_73_6(), [v57 initWithSettings:? portType:? resolutionFlavor:?], OUTLINED_FUNCTION_222_0(), -[BWPhotonicEngineNode _ubInferenceInputRouter](v5), objc_msgSend(OUTLINED_FUNCTION_4(), "addOutputSampleBufferRouter:forBufferTypes:name:"), OUTLINED_FUNCTION_86_7(), objc_msgSend(v58, "addInput:sequenceNumber:portType:bufferType:"), objc_msgSend(OUTLINED_FUNCTION_247_0(304), "insertObject:atIndex:", v18, 0), LODWORD(v90) = 0, LOBYTE(v89) = 1, OUTLINED_FUNCTION_22_27(), v60 = objc_msgSend(v59, "enqueueInputForProcessing:delegate:processErrorRecoveryFrame:processErrorRecoveryProxy:processOriginalImage:processToneMapping:processInferenceInputImage:clientBracketSequenceNumber:processSemanticRendering:provideInferenceInputImageForProcessing:processSmartStyleRenderingInput:inferencesAvailable:", v89, v90), v18, OUTLINED_FUNCTION_221_0(), v60) || v105 && (v61 = [BWNRFProcessorInput alloc], OUTLINED_FUNCTION_73_6(), objc_msgSend(v62, "initWithSettings:portType:resolutionFlavor:"), OUTLINED_FUNCTION_222_0(), objc_msgSend(v42, "addOutputSampleBufferRouter:forBufferTypes:name:", v120, v17, @"Flash SWFR --> NRF"), -[BWPhotonicEngineNode _ubRERRouter](v5), objc_msgSend(OUTLINED_FUNCTION_4(), "addOutputSampleBufferRouter:forBufferTypes:name:"), OUTLINED_FUNCTION_86_7(), objc_msgSend(v63, "addInput:sequenceNumber:portType:bufferType:"), objc_msgSend(OUTLINED_FUNCTION_247_0(304), "insertObject:atIndex:", v18, 1), objc_msgSend(OUTLINED_FUNCTION_122_5(152), "isSmartStyleRenderingCapture:"), OUTLINED_FUNCTION_177_0(), OUTLINED_FUNCTION_22_27(), v65 = objc_msgSend(v64, "enqueueInputForProcessing:delegate:processErrorRecoveryFrame:processErrorRecoveryProxy:processOriginalImage:processToneMapping:processInferenceInputImage:clientBracketSequenceNumber:processSemanticRendering:provideInferenceInputImageForProcessing:processSmartStyleRenderingInput:inferencesAvailable:"), v18, OUTLINED_FUNCTION_221_0(), v65))
                  {
                    OUTLINED_FUNCTION_1_8();
                    goto LABEL_69;
                  }
                }

                v66 = OUTLINED_FUNCTION_29_21();
                if ([(BWPhotonicEngineNode *)v66 _setupProcessingStateForScalerIfNeededWithSettings:v67 sequenceNumber:v68 portType:v69 preNoiseReductionScaler:1 processingPlan:v107])
                {
                  goto LABEL_64;
                }

                if (v99)
                {
                  if (([objc_msgSend(v4 "captureSettings")] & 0x80) != 0)
                  {
                    v70 = [BWLearnedNRInput alloc];
                    [v27 portType];
                    [OUTLINED_FUNCTION_1_15() initWithSettings:v4 portType:?];
                    OUTLINED_FUNCTION_222_0();
                    [v71 addOutputSampleBufferRouter:v119 forBufferTypes:v17 name:@"Flash LearnedNR --> NRF"];
                    [v107 addInput:v18 sequenceNumber:0 portType:objc_msgSend(v27 bufferTypes:{"portType"), v17}];
                    [v18 portType];
                    [OUTLINED_FUNCTION_1_15() setObject:v18 forKeyedSubscript:?];
                    v72 = [v99 enqueueInputForProcessing:v18 delegate:v5];

                    OUTLINED_FUNCTION_221_0();
                    if (v72)
                    {
                      goto LABEL_63;
                    }
                  }
                }

                if ((v101 & (v13 ^ 1)) != 0)
                {
                  [(BWPhotonicEngineNode *)v5 _ubInferenceInputRouter];
                  [OUTLINED_FUNCTION_47() addOutputSampleBufferRouter:? forBufferTypes:? name:?];
                  OUTLINED_FUNCTION_86_7();
                  [v87 addInput:? sequenceNumber:? portType:? bufferType:?];
                }

                [v27 addOutputSampleBufferRouter:v96 forBufferTypes:v17 name:@"Flash --> Emit"];
                OUTLINED_FUNCTION_86_7();
                [v73 addInput:? sequenceNumber:? portType:? bufferTypes:?];
                if ((v94 & 1) == 0)
                {
                  [OUTLINED_FUNCTION_122_5(152) isSmartStyleRenderingCapture:?];
                }

                OUTLINED_FUNCTION_177_0();
                OUTLINED_FUNCTION_22_27();
                if ([v74 enqueueInputForProcessing:? delegate:? processErrorRecoveryFrame:? processErrorRecoveryProxy:? processOriginalImage:? processToneMapping:? processInferenceInputImage:? clientBracketSequenceNumber:? processSemanticRendering:? provideInferenceInputImageForProcessing:? processSmartStyleRenderingInput:? inferencesAvailable:?])
                {
                  goto LABEL_64;
                }

                OUTLINED_FUNCTION_29_21();
                [BWPhotonicEngineNode _setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings:sequenceNumber:portType:processingPlan:];
                if (v75)
                {
                  goto LABEL_64;
                }

                v76 = OUTLINED_FUNCTION_29_21();
                if ([(BWPhotonicEngineNode *)v76 _setupProcessingStateForScalerIfNeededWithSettings:v77 sequenceNumber:v78 portType:v79 preNoiseReductionScaler:0 processingPlan:v107])
                {
                  goto LABEL_64;
                }

                OUTLINED_FUNCTION_29_21();
                [BWPhotonicEngineNode _setupProcessingStateForDeepZoomWithSettings:sequenceNumber:portType:processingPlan:];
                if (v80)
                {
                  goto LABEL_64;
                }

                if (v105)
                {
                  if (!v95)
                  {
                    goto LABEL_63;
                  }

                  v81 = [BWRedEyeReductionControllerInput alloc];
                  OUTLINED_FUNCTION_73_6();
                  [v82 initWithSettings:? portType:?];
                  OUTLINED_FUNCTION_222_0();
                  [v83 addOutputSampleBufferRouter:v117 forBufferTypes:&unk_1F224A548 name:@"RER --> NRF"];
                  OUTLINED_FUNCTION_86_7();
                  [v84 addInput:? sequenceNumber:? portType:? bufferTypes:?];
                  [v5[51] setObject:v18 forKeyedSubscript:v23];
                  v85 = [v95 enqueueInputForProcessing:v18 delegate:v5];

                  OUTLINED_FUNCTION_221_0();
                  if (v85)
                  {
                    goto LABEL_63;
                  }
                }

                v86 = OUTLINED_FUNCTION_29_21();
                i = v98;
                if ([BWPhotonicEngineNode _setupProcessingStateForSmartStyleWithSettings:v86 sequenceNumber:? portType:? processingPlan:?])
                {
LABEL_64:
                  OUTLINED_FUNCTION_13_3();
LABEL_69:
                  FigDebugAssert3();
                  goto LABEL_63;
                }
              }
            }

            v18 = [obj countByEnumeratingWithState:v116 objects:v115 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        [BWPhotonicEngineNode _setupProcessingStateForJasperDisparityIfNeededWithSettings:v5 processingPlan:?];
        if (!v88)
        {
          [(BWPhotonicEngineNode *)v5 _setupProcessingStateForDisparityIfNeededWithSettings:v4 sequenceNumber:0 processingPlan:v107];
        }
      }
    }
  }

LABEL_63:
  OUTLINED_FUNCTION_128_0();
}

- (void)_setupProcessingStateForSingleImageCaptureWithSettings:processingPlan:
{
  OUTLINED_FUNCTION_60();
  v5 = v4;
  if (v1)
  {
    v6 = v3;
    v7 = v2;
    v8 = v1;
    v9 = [OUTLINED_FUNCTION_82_7(v1) controllerForType:6];
    if (v9)
    {
      v76 = v9;
      OUTLINED_FUNCTION_26_14();
      v97[6] = 3221225472;
      v97[7] = __94__BWPhotonicEngineNode__setupProcessingStateForSingleImageCaptureWithSettings_processingPlan___block_invoke;
      v97[8] = &unk_1E79992C8;
      v97[9] = v8;
      v74 = [*&v8[*(v0 + 1032)] controllerForType:11];
      OUTLINED_FUNCTION_61_10();
      v97[2] = __94__BWPhotonicEngineNode__setupProcessingStateForSingleImageCaptureWithSettings_processingPlan___block_invoke_575;
      v97[3] = &unk_1E79992C8;
      v97[4] = v8;
      [*&v8[*(v0 + 1032)] workerQueue];
      v83 = [BWPhotonicEngineNode _standardNROutputRouterWithExpectedQueue:v8];
      v89 = [MEMORY[0x1E695DF70] array];
      v85 = -[BWPhotonicEngineNode _bufferTypesForCaptureSettings:](v8, [v7 captureSettings]);
      memset(v96, 0, 64);
      v10 = v8;
      [BWPhotonicEngineNode _processingOrderByPortTypeForSettings:v8];
      obj = v11;
      v12 = [v11 countByEnumeratingWithState:v96 objects:v95 count:16];
      if (v12)
      {
        v13 = v12;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            OUTLINED_FUNCTION_42();
            if (!v15)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(v96[1] + 8 * i);
            v17 = -[BWNRFProcessorInput initWithSettings:portType:resolutionFlavor:]([BWNRFProcessorInput alloc], "initWithSettings:portType:resolutionFlavor:", v7, v16, [v10[19] resolvedProcessingResolutionFlavorForSettings:v7 portType:v16]);
            [v10[38] setObject:objc_msgSend(MEMORY[0x1E695DF70] forKeyedSubscript:{"arrayWithObject:", v17), v16}];
            [v89 addObject:v17];
          }

          v13 = [obj countByEnumeratingWithState:v96 objects:v95 count:16];
        }

        while (v13);
      }

      v18 = v10;
      HIDWORD(v81) = [v10[19] isSemanticRenderingCapture:v7];
      LODWORD(v81) = [v10[19] areInferencesRequiredByProcessorControllersForSettings:v7];
      if ([v10[19] isSmartStyleRenderingCapture:v7])
      {
        v79 = ([objc_msgSend(v7 "captureSettings")] >> 7) & 1;
      }

      else
      {
        v79 = 0;
      }

      v19 = v6;
      OUTLINED_FUNCTION_56_14();
      v28 = OUTLINED_FUNCTION_240_0(v20, v21, v22, v23, v24, v25, v26, v27, v69, v71, v5, v74, v76, v6, v79, v81, v83, v85, obj, v89);
      v29 = v75;
      if (v28)
      {
        v30 = v28;
        obja = *v94;
        do
        {
          v31 = 0;
          do
          {
            if (*v94 != obja)
            {
              objc_enumerationMutation(v90);
            }

            v32 = *(v93 + 8 * v31);
            v33 = [v32 stillImageSettings];
            [v32 portType];
            v34 = OUTLINED_FUNCTION_8();
            if (![(BWPhotonicEngineNode *)v34 _processingNeededForSettings:v33 portType:v35])
            {
              goto LABEL_33;
            }

            [v7 captureSettings];
            [v32 portType];
            if ([objc_msgSend(OUTLINED_FUNCTION_47() "captureStreamSettingsForPortType:"sensorRawCapturedForFinalImageProcessing"")])
            {
              [v32 portType];
              v62 = OUTLINED_FUNCTION_8();
              [BWPhotonicEngineNode _setupSoftISPProcessingStateIfNeededWithSettings:v62 portType:? processingPlan:?];
              if (v29)
              {
LABEL_21:
                if (([objc_msgSend(v7 "captureSettings")] & 0x80) != 0 && (objc_msgSend(v18[19], "isDeferredRawLearnedNRCapture:", v7) & 1) == 0)
                {
                  v36 = [BWLearnedNRInput alloc];
                  [v32 portType];
                  v37 = [OUTLINED_FUNCTION_126_2() initWithSettings:v7 portType:?];
                  [v37 addOutputSampleBufferRouter:v97 forBufferTypes:v86 name:@"SingleImage LearnedNR --> NRF"];
                  [v32 portType];
                  [OUTLINED_FUNCTION_113_4() addInput:v37 sequenceNumber:0 portType:? bufferTypes:?];
                  [v37 portType];
                  [OUTLINED_FUNCTION_126_2() setObject:v37 forKeyedSubscript:?];
                  v38 = [v29 enqueueInputForProcessing:v37 delegate:v18];

                  if (v38)
                  {
                    goto LABEL_41;
                  }
                }
              }
            }

            else if (v29)
            {
              goto LABEL_21;
            }

            [v32 portType];
            v39 = OUTLINED_FUNCTION_31_22();
            if ([(BWPhotonicEngineNode *)v39 _setupProcessingStateForScalerIfNeededWithSettings:v40 sequenceNumber:v41 portType:v42 preNoiseReductionScaler:1 processingPlan:v19])
            {
              goto LABEL_42;
            }

            v43 = [v18[19] isInferenceInputImageRequiredForSettings:v7 portType:{objc_msgSend(v32, "portType")}];
            v44 = v43;
            if (v43)
            {
              [(BWPhotonicEngineNode *)v18 _ubInferenceInputRouter];
              [OUTLINED_FUNCTION_28() addOutputSampleBufferRouter:? forBufferTypes:? name:?];
              [v32 portType];
              OUTLINED_FUNCTION_113_4();
              OUTLINED_FUNCTION_214();
              [v63 addInput:? sequenceNumber:? portType:? bufferType:?];
            }

            [v32 addOutputSampleBufferRouter:v84 forBufferTypes:v86 name:@"SingleImage --> Emit"];
            [v32 portType];
            OUTLINED_FUNCTION_113_4();
            OUTLINED_FUNCTION_214();
            [v45 addInput:? sequenceNumber:? portType:? bufferTypes:?];
            BYTE3(v72) = v82;
            BYTE2(v72) = v80;
            BYTE1(v72) = v44;
            LOBYTE(v72) = BYTE4(v82);
            OUTLINED_FUNCTION_177_0();
            OUTLINED_FUNCTION_72();
            if ([v46 enqueueInputForProcessing:? delegate:? processErrorRecoveryFrame:? processErrorRecoveryProxy:? processOriginalImage:? processToneMapping:? processInferenceInputImage:? clientBracketSequenceNumber:? processSemanticRendering:? provideInferenceInputImageForProcessing:? processSmartStyleRenderingInput:? inferencesAvailable:?] || (objc_msgSend(v32, "portType"), OUTLINED_FUNCTION_31_22(), -[BWPhotonicEngineNode _setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings:sequenceNumber:portType:processingPlan:](), v47) || (objc_msgSend(v32, "portType"), v48 = OUTLINED_FUNCTION_31_22(), -[BWPhotonicEngineNode _setupProcessingStateForScalerIfNeededWithSettings:sequenceNumber:portType:preNoiseReductionScaler:processingPlan:](v48, v49, v50, v51, 0, v19)) || (objc_msgSend(v32, "portType"), OUTLINED_FUNCTION_31_22(), -[BWPhotonicEngineNode _setupProcessingStateForDeepZoomWithSettings:sequenceNumber:portType:processingPlan:](), v52) || (objc_msgSend(v32, "portType"), v53 = OUTLINED_FUNCTION_31_22(), -[BWPhotonicEngineNode _setupProcessingStateForSmartStyleWithSettings:sequenceNumber:portType:processingPlan:](v53)))
            {
LABEL_42:
              OUTLINED_FUNCTION_1_5();
              FigDebugAssert3();
              goto LABEL_41;
            }

            [v32 portType];
            v54 = OUTLINED_FUNCTION_8();
            [(BWPhotonicEngineNode *)v54 _setupDeferredProcessingWithSettings:v7 portType:v55];
LABEL_33:
            v56 = [v32 setRemainingProcessingCount:{objc_msgSend(v32, "remainingProcessingCount") + 1}];
            ++v31;
          }

          while (v30 != v31);
          v64 = OUTLINED_FUNCTION_240_0(v56, v57, v92, v91, v58, v59, v60, v61, v70, v72, v73, v75, v77, v78, v80, v82, v84, v86, obja, v90);
          v30 = v64;
        }

        while (v64);
      }

      v65 = OUTLINED_FUNCTION_2_7();
      [BWPhotonicEngineNode _setupProcessingStateForJasperDisparityIfNeededWithSettings:v65 processingPlan:?];
      if (!v66)
      {
        v67 = OUTLINED_FUNCTION_2_7();
        if (![(BWPhotonicEngineNode *)v67 _setupProcessingStateForDisparityIfNeededWithSettings:v68 sequenceNumber:0 processingPlan:v19])
        {
          OUTLINED_FUNCTION_8_8();
          [BWPhotonicEngineNode _setupSoftISPOutputRoutingIfNeededWithOutputSampleBufferRouter:processingPlan:];
        }
      }
    }
  }

LABEL_41:
  OUTLINED_FUNCTION_128_0();
}

- (id)_nrfOutputSbufRouter
{
  if (result)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_136_4();
    return OUTLINED_FUNCTION_242_0(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, __44__BWPhotonicEngineNode__nrfOutputSbufRouter__block_invoke, &unk_1E79992C8, v12);
  }

  return result;
}

- (void)_setupProcessingStateForDeepZoomWithSettings:sequenceNumber:portType:processingPlan:
{
  OUTLINED_FUNCTION_60();
  if (v4)
  {
    OUTLINED_FUNCTION_176_0();
    [*(v5 + 208) workerQueue];
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    OUTLINED_FUNCTION_148_0();
    if (![*(v1 + v6) deepZoomProcessorControllerConfiguration] || (objc_msgSend(objc_msgSend(v2, "requestedSettings"), "bypassUpscaling") & 1) != 0)
    {
      goto LABEL_46;
    }

    v7 = [objc_msgSend(v2 "captureSettings")];
    v8 = [objc_msgSend(v2 "captureSettings")];
    v9 = [objc_msgSend(*(v1 + *(v3 + 1000)) "deepZoomProcessorControllerConfiguration")];
    v10 = v9;
    if ((v7 & 0xFFFFFFFE) == 0xC)
    {
      if ((v8 & 0x200000000) == 0)
      {
        if (v9 != 1)
        {
          goto LABEL_46;
        }

LABEL_15:
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __108__BWPhotonicEngineNode__setupProcessingStateForDeepZoomWithSettings_sequenceNumber_portType_processingPlan___block_invoke;
        v71[3] = &unk_1E7999368;
        v71[4] = v1;
        v71[5] = v2;
        v71[6] = v0;
        v12 = [BWDeepZoomProcessorInput alloc];
        OUTLINED_FUNCTION_182_0();
        v14 = [v13 initWithSettings:? portType:?];
        [v2 requestedSettings];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [objc_msgSend(v2 "requestedSettings")];
          v16 = 0;
          v17 = 0;
          if (v10 != 3 || !v15)
          {
LABEL_25:
            v58 = v17;
            v59 = v16;
            v60 = v14;
            [v2 captureSettings];
            v21 = OUTLINED_FUNCTION_44_11();
            v23 = [(BWPhotonicEngineNode *)v21 _bufferTypesExcludingErrorRecoveryTypesForCaptureSettings:v22];
            [BWPhotonicEngineNode _errorRecoveryBufferTypesForBufferTypes:v1];
            v25 = v24;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            OUTLINED_FUNCTION_25_6();
            v30 = OUTLINED_FUNCTION_13_15(v26, v27, v28, v29);
            if (v30)
            {
              v31 = v30;
              do
              {
                v32 = 0;
                do
                {
                  OUTLINED_FUNCTION_6_30();
                  if (!v33)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v34 = [*(*(&v66 + 1) + 8 * v32) intValue];
                  OUTLINED_FUNCTION_117_6();
                  v36 = [v35 lastAddedInputForSequenceNumber:? portType:? bufferType:?];
                  if (v36)
                  {
                    if (!ubn_insertOutputRouterForInputAfterPreviousInputForBufferTypeAndName(v71, v60, v36, v34, @"PreviousInput --> DeepZoom"))
                    {
                      v11 = v60;
                      goto LABEL_47;
                    }

                    OUTLINED_FUNCTION_204_0();
                    [v37 addInput:? sequenceNumber:? portType:? bufferType:?];
                  }

                  ++v32;
                }

                while (v31 != v32);
                OUTLINED_FUNCTION_25_6();
                v42 = OUTLINED_FUNCTION_13_15(v38, v39, v40, v41);
                v31 = v42;
              }

              while (v42);
            }

            if (v58 && v59)
            {
              if (!ubn_insertOutputRouterForInputAfterPreviousInputForBufferTypeAndName(v58, v59, v60, 13, @"PreviousInput --> DeepTransfer"))
              {
                v11 = v60;
                goto LABEL_47;
              }

              OUTLINED_FUNCTION_204_0();
              [v57 addInput:? sequenceNumber:? portType:? bufferType:?];
            }

            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            OUTLINED_FUNCTION_19_25();
            v47 = OUTLINED_FUNCTION_21_10(v43, v44, v45, v46);
            if (v47)
            {
              v48 = v47;
              do
              {
                for (i = 0; i != v48; ++i)
                {
                  OUTLINED_FUNCTION_6_30();
                  if (!v33)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v50 = *(*(&v62 + 1) + 8 * i);
                  [v50 intValue];
                  OUTLINED_FUNCTION_117_6();
                  v52 = [v51 lastAddedInputForSequenceNumber:? portType:? bufferType:?];
                  v61 = v50;
                  [v52 addBypassedProcessorType:10 forBufferTypes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v61, 1)}];
                }

                OUTLINED_FUNCTION_19_25();
                v48 = OUTLINED_FUNCTION_21_10(v53, v54, v55, v56);
              }

              while (v48);
            }

            v11 = v60;
            [*(v1 + 440) setObject:v60 forKeyedSubscript:v0];
            goto LABEL_47;
          }

          v18 = [objc_msgSend(*(v1 + *(v3 + 1000)) "deepZoomProcessorControllerConfiguration")];
          if (v18 < 1 || SHIDWORD(v18) <= 0)
          {
            OUTLINED_FUNCTION_182_0();
            v16 = [v20 inputForOnlyApplyingSemanticStyleWithSettings:? portType:?];
            v17 = v70;
            v70[0] = MEMORY[0x1E69E9820];
            v70[1] = 3221225472;
            v70[2] = __108__BWPhotonicEngineNode__setupProcessingStateForDeepZoomWithSettings_sequenceNumber_portType_processingPlan___block_invoke_657;
            v70[3] = &unk_1E7999390;
            v70[4] = v1;
            v70[5] = v16;
            goto LABEL_25;
          }
        }

        v16 = 0;
        v17 = 0;
        goto LABEL_25;
      }

      if (v9 == 3)
      {
        goto LABEL_15;
      }
    }

    else if (v7 == 1)
    {
      v11 = 0;
      if ((v8 & 0x80) == 0 || v9 != 2)
      {
        goto LABEL_47;
      }

      goto LABEL_15;
    }

LABEL_46:
    v11 = 0;
LABEL_47:
  }

  OUTLINED_FUNCTION_128_0();
}

- (uint64_t)_setupProcessingStateForSmartStyleWithSettings:(uint64_t)result sequenceNumber:portType:processingPlan:
{
  if (result)
  {
    OUTLINED_FUNCTION_176_0();
    [*(v4 + 208) workerQueue];
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    result = [*(v2 + 152) isSmartStyleRenderingCapture:v3];
    if (result)
    {
      OUTLINED_FUNCTION_25_16();
      OUTLINED_FUNCTION_149_1(COERCE_DOUBLE(3221225472));
      v25 = __110__BWPhotonicEngineNode__setupProcessingStateForSmartStyleWithSettings_sequenceNumber_portType_processingPlan___block_invoke;
      v26 = &unk_1E7999390;
      v27 = v2;
      v28 = v1;
      v5 = [BWSmartStyleRenderingProcessorInput alloc];
      OUTLINED_FUNCTION_182_0();
      v7 = [v6 initWithSettings:? portType:?];
      v23 = v2;
      v8 = -[BWPhotonicEngineNode _bufferTypesForCaptureSettings:](v2, [v3 captureSettings]);
      OUTLINED_FUNCTION_47_0();
      v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
      if (v10)
      {
        v11 = v10;
        v12 = MEMORY[0];
        do
        {
          v13 = 0;
          do
          {
            if (MEMORY[0] != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = [*(8 * v13) intValue];
            OUTLINED_FUNCTION_117_6();
            v16 = [v15 lastAddedInputForSequenceNumber:? portType:? bufferType:?];
            if (v16)
            {
              if (!ubn_insertOutputRouterForInputAfterPreviousInputForBufferTypeAndName(v24, v7, v16, v14, @"PreviousInput --> SmartStyle"))
              {
                return 4294954516;
              }

              OUTLINED_FUNCTION_204_0();
              [v17 addInput:? sequenceNumber:? portType:? bufferType:?];
            }

            ++v13;
          }

          while (v11 != v13);
          OUTLINED_FUNCTION_47_0();
          v22 = OUTLINED_FUNCTION_21_10(v18, v19, v20, v21);
          v11 = v22;
        }

        while (v22);
      }

      [*(v23 + 488) setObject:v7 forKeyedSubscript:v1];

      return 0;
    }
  }

  return result;
}

- (void)_setupProcessingStateForDeepFusionWithSettings:processingPlan:
{
  OUTLINED_FUNCTION_84();
  v4 = v3;
  if (v5)
  {
    OUTLINED_FUNCTION_2_74();
    v7 = [OUTLINED_FUNCTION_82_7(v6) controllerForType:2];
    if (v7)
    {
      v8 = v7;
      [OUTLINED_FUNCTION_171() workerQueue];
      if (!_FigIsCurrentDispatchQueue())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      OUTLINED_FUNCTION_1_50();
      v98[1] = 3221225472;
      v98[2] = __86__BWPhotonicEngineNode__setupProcessingStateForDeepFusionWithSettings_processingPlan___block_invoke;
      v98[3] = &unk_1E79992C8;
      v98[4] = v2;
      v9 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
      v10 = [v2[19] areInferencesRequiredByProcessorControllersForSettings:v1];
      HIDWORD(v71) = [v2[19] isSmartStyleRenderingCapture:v1];
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v11 = [objc_msgSend(v1 "captureSettings")];
      v12 = [v11 countByEnumeratingWithState:&v94 objects:v93 count:16];
      if (v12)
      {
        v65 = v11;
        v66 = v4;
        v72 = *v95;
        v13 = v12;
        v70 = v8;
        HIDWORD(v64) = v10;
        do
        {
          v14 = 0;
          do
          {
            if (*v95 != v72)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v94 + 1) + 8 * v14);
            [v15 portType];
            v16 = OUTLINED_FUNCTION_39_13();
            v17 = [BWPhotonicEngineNode _deepFusionProcessorInputNeededForSettings:v16 portType:?];
            if (!v17)
            {
              goto LABEL_11;
            }

            v68 = v13;
            if ([*(v2 + v9[250]) isInferenceInputImageRequiredForSettings:v1 portType:{objc_msgSend(v15, "portType")}])
            {
              if ([*(v2 + v9[250]) deferredPhotoProcessorEnabled])
              {
                v19 = [objc_msgSend(v1 "captureSettings")];
                if (v10)
                {
                  goto LABEL_18;
                }
              }

              else
              {
                v19 = 1;
                if (v10)
                {
LABEL_18:
                  v20 = ([v15 captureFlags] >> 33) & 1;
                  goto LABEL_19;
                }
              }
            }

            else
            {
              v19 = 0;
              if (v10)
              {
                goto LABEL_18;
              }
            }

            v20 = 0;
LABEL_19:
            v21 = [BWDeepFusionProcessorInput alloc];
            v22 = [v9 initWithSettings:v1 portType:objc_msgSend(OUTLINED_FUNCTION_129_4() processInferenceInputImage:"portType") processQuadraForEnhancedResolutionInferenceInputImage:v19 processSmartStyleRenderingInput:{v20, HIDWORD(v71)}];
            [v1 captureSettings];
            v23 = OUTLINED_FUNCTION_26_13();
            [(BWPhotonicEngineNode *)v23 _bufferTypesForCaptureSettings:v24];
            [v22 addOutputSampleBufferRouter:v98 forBufferTypes:? name:?];
            v25 = [MEMORY[0x1E695DF70] array];
            v26 = v25;
            if (v19)
            {
              [v25 addObject:&unk_1F2247B18];
            }

            if (v20)
            {
              [v26 addObject:&unk_1F2247B60];
            }

            if ([v26 count])
            {
              [(BWPhotonicEngineNode *)v2 _ubInferenceInputRouter];
              [OUTLINED_FUNCTION_47() addOutputSampleBufferRouter:? forBufferTypes:? name:?];
              [v15 portType];
              [OUTLINED_FUNCTION_94_5() addInput:? sequenceNumber:? portType:? bufferTypes:?];
            }

            [v15 portType];
            [OUTLINED_FUNCTION_94_5() addInput:? sequenceNumber:? portType:? bufferTypes:?];
            [v22 portType];
            [OUTLINED_FUNCTION_1_15() setObject:v22 forKeyedSubscript:?];
            v27 = [v70 enqueueInputForProcessing:v22 delegate:v2];

            if (v27)
            {
              goto LABEL_50;
            }

            v28 = [objc_msgSend(v1 "captureSettings")] & 0x4200000000;
            if (v28 != 0x200000000)
            {
              [v22 portType];
              OUTLINED_FUNCTION_23_27();
              [BWPhotonicEngineNode _setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings:sequenceNumber:portType:processingPlan:];
              if (v29)
              {
                goto LABEL_49;
              }
            }

            [v22 portType];
            v30 = OUTLINED_FUNCTION_23_27();
            if ([(BWPhotonicEngineNode *)v30 _setupProcessingStateForScalerIfNeededWithSettings:v31 sequenceNumber:v32 portType:v33 preNoiseReductionScaler:0 processingPlan:v0])
            {
              goto LABEL_49;
            }

            v67 = v28;
            if ([objc_msgSend(v1 "captureSettings")])
            {
              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v34 = [objc_msgSend(v1 "captureSettings")];
              OUTLINED_FUNCTION_59_7();
              v36 = [v35 countByEnumeratingWithState:? objects:? count:?];
              if (v36)
              {
                v37 = v36;
                v38 = MEMORY[0];
LABEL_32:
                v39 = 0;
                while (1)
                {
                  OUTLINED_FUNCTION_115_6();
                  if (v40 != v38)
                  {
                    objc_enumerationMutation(v34);
                  }

                  OUTLINED_FUNCTION_24_23();
                  [BWPhotonicEngineNode _setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings:sequenceNumber:portType:processingPlan:];
                  if (v41)
                  {
                    break;
                  }

                  [v22 portType];
                  v42 = OUTLINED_FUNCTION_23_27();
                  if ([(BWPhotonicEngineNode *)v42 _setupProcessingStateForScalerIfNeededWithSettings:v43 sequenceNumber:v44 portType:v45 preNoiseReductionScaler:0 processingPlan:v0])
                  {
                    break;
                  }

                  if (v37 == ++v39)
                  {
                    OUTLINED_FUNCTION_59_7();
                    v37 = OUTLINED_FUNCTION_21_10(v46, v47, v48, v49);
                    if (v37)
                    {
                      goto LABEL_32;
                    }

                    goto LABEL_39;
                  }
                }

LABEL_49:
                OUTLINED_FUNCTION_13_3();
                FigDebugAssert3();
                goto LABEL_50;
              }
            }

LABEL_39:
            [v22 portType];
            OUTLINED_FUNCTION_23_27();
            [BWPhotonicEngineNode _setupProcessingStateForDeepZoomWithSettings:sequenceNumber:portType:processingPlan:];
            if (v50)
            {
              goto LABEL_49;
            }

            if (v67 == 0x200000000)
            {
              [v22 portType];
              OUTLINED_FUNCTION_23_27();
              [BWPhotonicEngineNode _setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings:sequenceNumber:portType:processingPlan:];
              if (v51)
              {
                goto LABEL_49;
              }
            }

            v52 = OUTLINED_FUNCTION_39_13();
            [(BWPhotonicEngineNode *)v52 _setupProcessingStateForStereoPhotoDeepZoomTransferWithSettings:v53 processingPlan:v0, v54, v55, v56, v57, v58, v62, v63, v64, v65, v66, v67, v68, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, *(&v89 + 1), v90, *(&v90 + 1), v91, *(&v91 + 1), v92, *(&v92 + 1), v93[0], v93[1], v93[2], v93[3], v93[4], v93[5], v93[6], v93[7], v93[8], v93[9]];
            v11 = v65;
            v13 = v69;
            if (v59)
            {
              goto LABEL_49;
            }

            [v22 portType];
            v60 = OUTLINED_FUNCTION_23_27();
            v17 = [BWPhotonicEngineNode _setupProcessingStateForSmartStyleWithSettings:v60 sequenceNumber:? portType:? processingPlan:?];
            v9 = &OBJC_IVAR___FigCaptureCinematographyPipeline__videoCaptureOutputIndex;
            v10 = HIDWORD(v64);
            if (v17)
            {
              goto LABEL_49;
            }

LABEL_11:
            ++v14;
          }

          while (v14 != v13);
          v61 = OUTLINED_FUNCTION_37_2(v17, v18, &v94, v93);
          v13 = v61;
        }

        while (v61);
      }
    }
  }

LABEL_50:
  OUTLINED_FUNCTION_81();
}

- (void)_setupProcessingStateForPointCloudDepthIfNeededWithSettings:(uint64_t)a1 processingPlan:
{
  if (a1)
  {
    OUTLINED_FUNCTION_84();
    v3 = v2;
    v5 = v4;
    v7 = v6;
    [OUTLINED_FUNCTION_35_21(v6) workerQueue];
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (([objc_msgSend(v5 "captureSettings")] & 0x200) != 0)
    {
      if ([v7[19] jasperColorStillsExecutorControllerConfiguration])
      {
        v8 = [*(v7 + *(v1 + 1032)) controllerForType:9];
        if (v8)
        {
          v9 = v8;
          [v5 captureSettings];
          v10 = OUTLINED_FUNCTION_3_30();
          v12 = [(BWPhotonicEngineNode *)v10 _bufferTypesForCaptureSettings:v11];
          OUTLINED_FUNCTION_25_16();
          OUTLINED_FUNCTION_149_1(COERCE_DOUBLE(3221225472));
          v55[2] = __99__BWPhotonicEngineNode__setupProcessingStateForPointCloudDepthIfNeededWithSettings_processingPlan___block_invoke;
          v55[3] = &unk_1E7999390;
          v55[4] = v7;
          v55[5] = v9;
          v47 = v9;
          v49 = [MEMORY[0x1E695DF70] array];
          obj = [OUTLINED_FUNCTION_234_0() portTypes];
          v13 = [obj countByEnumeratingWithState:v54 objects:v53 count:16];
          if (v13)
          {
            v14 = v13;
            v48 = v5;
            do
            {
              v15 = 0;
              v50 = v14;
              do
              {
                OUTLINED_FUNCTION_10_18();
                if (!v16)
                {
                  objc_enumerationMutation(obj);
                }

                v17 = *(v54[1] + 8 * v15);
                if ([(BWPhotonicEngineNode *)v7 _processingNeededForSettings:v5 portType:v17])
                {
                  v52 = v15;
                  v18 = -[BWJasperColorStillsExecutorInput initWithSettings:portType:timeOfFlightCameraType:]([BWJasperColorStillsExecutorInput alloc], "initWithSettings:portType:timeOfFlightCameraType:", v5, v17, [objc_msgSend(v7[17] "supplementalPointCloudCaptureDevice")]);
                  OUTLINED_FUNCTION_122();
                  v23 = OUTLINED_FUNCTION_21_10(v19, v20, v21, v22);
                  if (v23)
                  {
                    v24 = v23;
                    do
                    {
                      v25 = 0;
                      do
                      {
                        OUTLINED_FUNCTION_10_18();
                        if (!v16)
                        {
                          objc_enumerationMutation(v12);
                        }

                        v26 = [*(8 * v25) intValue];
                        v27 = [v3 lastAddedInputForSequenceNumber:0 portType:v17 bufferType:v26];
                        if (v27)
                        {
                          if (!ubn_insertOutputRouterForInputAfterPreviousInputForBufferTypeAndName(v55, v18, v27, v26, @"PreviousInput --> Jasper ColorStillsExecutor"))
                          {
                            goto LABEL_37;
                          }

                          [v3 addInput:v18 sequenceNumber:0 portType:v17 bufferType:v26];
                        }

                        ++v25;
                      }

                      while (v24 != v25);
                      OUTLINED_FUNCTION_122();
                      v32 = OUTLINED_FUNCTION_21_10(v28, v29, v30, v31);
                      v24 = v32;
                    }

                    while (v32);
                  }

                  v5 = v48;
                  [objc_msgSend(v48 "captureSettings")];
                  if ([OUTLINED_FUNCTION_47() isEqualToString:?])
                  {
                    [v49 insertObject:v18 atIndex:0];
                  }

                  else
                  {
                    [v49 addObject:v18];
                  }

                  v14 = v50;
                  v15 = v52;
                }

                ++v15;
              }

              while (v15 != v14);
              v14 = [obj countByEnumeratingWithState:v54 objects:v53 count:16];
            }

            while (v14);
          }

          OUTLINED_FUNCTION_59_7();
          v37 = OUTLINED_FUNCTION_13_15(v33, v34, v35, v36);
          if (v37)
          {
            v38 = v37;
            v39 = MEMORY[0];
            do
            {
              for (i = 0; i != v38; ++i)
              {
                OUTLINED_FUNCTION_115_6();
                if (v41 != v39)
                {
                  objc_enumerationMutation(v49);
                }

                v42 = *(8 * i);
                [v47 enqueueInputForProcessing:v42 delegate:v7];
                [v7[65] setObject:v42 forKeyedSubscript:{objc_msgSend(v42, "portType")}];
              }

              OUTLINED_FUNCTION_59_7();
              v38 = OUTLINED_FUNCTION_13_15(v43, v44, v45, v46);
            }

            while (v38);
          }
        }
      }
    }

LABEL_37:
    OUTLINED_FUNCTION_81();
  }
}

- (id)_softISPFusionCaptureOutputSbufRouter
{
  if (result)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_136_4();
    return OUTLINED_FUNCTION_242_0(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, __61__BWPhotonicEngineNode__softISPFusionCaptureOutputSbufRouter__block_invoke, &unk_1E79992C8, v12);
  }

  return result;
}

void __86__BWPhotonicEngineNode__setupProcessingStateForDeepFusionWithSettings_processingPlan___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  [*(*(a1 + 32) + 208) workerQueue];
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  [BWPhotonicEngineNode _waitForAndMergeInferencesIfNeededForSampleBuffer:? processorInput:?];
  if (a5)
  {
    OUTLINED_FUNCTION_24_12();
  }

  else
  {
    if (([objc_msgSend(a4 "captureSettings")] & 0x200000000) == 0)
    {
      v9 = *(a1 + 32);
      [a4 stillImageSettings];
      [BWPhotonicEngineNode _beginStereoPhotoProcessingIfNeededForSettings:v9];
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"buffer of type '%@' requested for '%@'", BWStillImageBufferTypeToShortString(a3), a4];
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_24_12();

    [(BWPhotonicEngineNode *)v10 _emitSampleBuffer:v11 description:v12];
  }
}

- (void)_beginStereoPhotoProcessingIfNeededForSettings:(void *)result
{
  if (result)
  {
    OUTLINED_FUNCTION_54();
    result = [objc_msgSend(v3 "captureSettings")];
    if (result)
    {
      [objc_msgSend(v2 "captureSettings")];
      v4 = [OUTLINED_FUNCTION_7() objectForKeyedSubscript:?];
      [objc_msgSend(objc_msgSend(v2 "captureSettings")];
      v5 = [OUTLINED_FUNCTION_28() objectForKeyedSubscript:?];
      v23 = 0;
      v24 = 0;
      v6 = OUTLINED_FUNCTION_121_4();
      v7 = [(BWPhotonicEngineNodeConfiguration *)v6 sensorConfigurationsByPortType];
      v8 = [OUTLINED_FUNCTION_121_4() stereoPhotoOutputDimensions];
      if (BWPhotonicEngineUtilitiesComputeStereoPhotoDistortionCorrectionProcessorInputConfigurations(v2, v7, v8, v4, v5, &v24, &v23))
      {
        OUTLINED_FUNCTION_1_5();
        return FigDebugAssert3();
      }

      else
      {
        [objc_msgSend(v2 "captureSettings")];
        result = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
        if (result)
        {
          BWPhotonicEngineUtilitiesSetDistortionCorrectionParametersOnDCInput(result, v24);
          [objc_msgSend(objc_msgSend(v2 "captureSettings")];
          result = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
          if (result)
          {
            BWPhotonicEngineUtilitiesSetDistortionCorrectionParametersOnDCInput(result, v23);
            v9 = MEMORY[0x1E695DF70];
            [objc_msgSend(v2 "captureSettings")];
            [OUTLINED_FUNCTION_8() arrayWithArray:?];
            [objc_msgSend(OUTLINED_FUNCTION_18_0() "captureSettings")];
            v10 = [OUTLINED_FUNCTION_8() insertObject:? atIndex:?];
            memset(v22, 0, sizeof(v22));
            obj = v9;
            result = OUTLINED_FUNCTION_64(v10, v11, v22, v21);
            if (result)
            {
              v12 = result;
              do
              {
                v13 = 0;
                do
                {
                  OUTLINED_FUNCTION_89();
                  if (!v14)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v15 = *(*(&v22[0] + 1) + 8 * v13);
                  v16 = [OUTLINED_FUNCTION_181_0(568) objectForKeyedSubscript:?];
                  if (v16)
                  {
                    v17 = CFRetain(v16);
                  }

                  else
                  {
                    v17 = 0;
                  }

                  [*(v1 + 568) setObject:0 forKeyedSubscript:v15];
                  v18 = [*(v1 + 208) workerQueue];
                  v20[0] = MEMORY[0x1E69E9820];
                  v20[1] = 3221225472;
                  v20[2] = __71__BWPhotonicEngineNode__beginStereoPhotoProcessingIfNeededForSettings___block_invoke;
                  v20[3] = &unk_1E7990178;
                  v20[4] = v1;
                  v20[5] = v17;
                  ubn_dispatch_async(v18, v20);
                  v13 = v13 + 1;
                }

                while (v12 != v13);
                result = [obj countByEnumeratingWithState:v22 objects:v21 count:16];
                v12 = result;
              }

              while (result);
            }
          }
        }
      }
    }
  }

  return result;
}

- (void)_setupProcessingStateForStereoPhotoDeepZoomTransferWithSettings:(uint64_t)a3 processingPlan:(uint64_t)a4
{
  OUTLINED_FUNCTION_227_0();
  a51 = v52;
  a52 = v56;
  v57 = v53;
  if (v53)
  {
    v58 = v55;
    v59 = v54;
    [*(v53 + 208) workerQueue];
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_2_9();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if ([OUTLINED_FUNCTION_181_0(152) isDeepZoomSupportedForStereoPhotosWithSettings:?])
    {
      OUTLINED_FUNCTION_1_50();
      a36 = 3221225472;
      a37 = __103__BWPhotonicEngineNode__setupProcessingStateForStereoPhotoDeepZoomTransferWithSettings_processingPlan___block_invoke;
      a38 = &unk_1E79992C8;
      a39 = v57;
      v60 = -[BWStillImageProcessorControllerInput initWithSettings:portType:]([BWDeepZoomProcessorInput alloc], "initWithSettings:portType:", v59, [objc_msgSend(objc_msgSend(v59 "captureSettings")]);
      v61 = [objc_msgSend(v59 "captureSettings")];
      OUTLINED_FUNCTION_17_20();
      v63 = [v62 countByEnumeratingWithState:? objects:? count:?];
      if (v63)
      {
        v64 = v63;
LABEL_7:
        v65 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_142_0();
          if (!v66)
          {
            objc_enumerationMutation(v61);
          }

          v67 = *(8 * v65);
          v68 = [v58 lastAddedInputForSequenceNumber:0 portType:v67 bufferType:38];
          if (!v68 || !ubn_insertOutputRouterForInputAfterPreviousInputForBufferTypeAndName(&a35, v60, v68, 38, @"StereoPhoto PreviousInput --> DeepTransfer"))
          {
            break;
          }

          [v58 addInput:v60 sequenceNumber:0 portType:v67 bufferType:38];
          if (v64 == ++v65)
          {
            OUTLINED_FUNCTION_17_20();
            v64 = OUTLINED_FUNCTION_1_0(v69, v70, v71, v72);
            if (v64)
            {
              goto LABEL_7;
            }

            goto LABEL_14;
          }
        }
      }

      else
      {
LABEL_14:
        [OUTLINED_FUNCTION_60_9(440) setObject:? forKeyedSubscript:?];
      }
    }

    else
    {
      v60 = 0;
    }
  }

  OUTLINED_FUNCTION_226();
}

- (id)_nextNRInputForPortType:(id)result
{
  if (result)
  {
    memset(v10, 0, sizeof(v10));
    v1 = [OUTLINED_FUNCTION_217_0(result 304)];
    v2 = [v1 countByEnumeratingWithState:v10 objects:v9 count:16];
    if (v2)
    {
      v3 = v2;
LABEL_4:
      v4 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_49_7();
        if (!v5)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10[0] + 1) + 8 * v4);
        if (![v6 receivedAllFrames])
        {
          break;
        }

        v7 = [v6 remainingProcessingCount];
        if (v7 > 1)
        {
          break;
        }

        if (v3 == ++v4)
        {
          v3 = OUTLINED_FUNCTION_1_18(v7, v8, v10, v9);
          v6 = 0;
          if (v3)
          {
            goto LABEL_4;
          }

          return v6;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }

  return result;
}

- (id)_bufferTypesExcludingErrorRecoveryTypesForCaptureSettings:(id)result
{
  if (result)
  {
    [(BWPhotonicEngineNode *)result _bufferTypesForCaptureSettings:a2];
    v2 = [OUTLINED_FUNCTION_4() arrayWithArray:?];
    v3 = OUTLINED_FUNCTION_3_19();
    [BWPhotonicEngineNode _errorRecoveryBufferTypesForBufferTypes:v3];
    [OUTLINED_FUNCTION_4() removeObjectsInArray:?];
    v4 = [v2 copy];

    return v4;
  }

  return result;
}

- (void)_errorRecoveryBufferTypesForBufferTypes:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_59_0();
    v2 = v1;
    v3 = [MEMORY[0x1E695DF70] array];
    OUTLINED_FUNCTION_43();
    v8 = OUTLINED_FUNCTION_1_18(v4, v5, v6, v7);
    if (!v8)
    {
      goto LABEL_24;
    }

    v9 = v8;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        OUTLINED_FUNCTION_21_20();
        if (!v12)
        {
          objc_enumerationMutation(v2);
        }

        v11 = [*(8 * i) intValue];
        if ((v11 - 51) < 2)
        {
          v13 = &unk_1F224A710;
        }

        else if (v11 == 2)
        {
          v13 = &unk_1F224A6C8;
        }

        else if (v11 == 33)
        {
          v13 = &unk_1F224A728;
        }

        else
        {
          v12 = v11 == 7 || v11 == 13;
          if (v12)
          {
            v13 = &unk_1F224A6F8;
          }

          else
          {
            if (v11 != 5)
            {
              continue;
            }

            v13 = &unk_1F224A6E0;
          }
        }

        [v3 addObjectsFromArray:v13];
      }

      OUTLINED_FUNCTION_43();
      v9 = OUTLINED_FUNCTION_1_18(v14, v15, v16, v17);
      if (!v9)
      {
LABEL_24:
        v18 = [v3 copy];
        OUTLINED_FUNCTION_58_0();
        return;
      }
    }
  }
}

- (uint64_t)_ensureDeepZoomInputEnqueued:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    [OUTLINED_FUNCTION_35_21(v4) workerQueue];
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_2_9();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if ([v1 isEnqueued])
    {
      return 0;
    }

    if (!v1)
    {
      return 4294954516;
    }

    v5 = [*(v2 + *(v3 + 1032)) waitAndSafelyGetProcessorControllerForType:10];
    if (!v5)
    {
      return 4294954510;
    }

    result = [v5 enqueueInputForProcessing:v1 delegate:v2];
    if (!result)
    {
      [v1 setEnqueued:1];
      return 0;
    }
  }

  return result;
}

- (void)_ensureSmartStyleRenderingInputEnqueued:(void *)result
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    [OUTLINED_FUNCTION_35_21(v4) workerQueue];
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_2_9();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v5 = [v1 isEnqueued];
    result = 0;
    if (v1)
    {
      if ((v5 & 1) == 0)
      {
        result = [*(v2 + *(v3 + 1032)) controllerForType:16];
        if (result)
        {
          [result updateSmartStyleProcessorConfigurationIfNeededForApplyOnly:objc_msgSend(v1 aspectRatio:{"applyOnly"), objc_msgSend(objc_msgSend(v1, "settings"), "aspectRatio")}];
          result = [OUTLINED_FUNCTION_8_8() enqueueInputForProcessing:? delegate:?];
          if (!result)
          {
            [v1 setEnqueued:1];
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void __104__BWPhotonicEngineNode__setupProcessingStateForInferenceWithSettings_portType_inferenceInputBufferType___block_invoke_2_706(uint64_t a1)
{
  v2 = [(BWPhotonicEngineNode *)*(a1 + 32) _ubRERRouter];
  (*(v2 + 2))(v2, *(a1 + 48), 1, *(a1 + 40), 0);
  v3 = *(a1 + 48);
  if (v3)
  {

    CFRelease(v3);
  }
}

- (unint64_t)_softISPProcessingModeForSettings:(unint64_t)result captureFrameFlags:
{
  if (result)
  {
    OUTLINED_FUNCTION_59_12();
    if ([OUTLINED_FUNCTION_217_0(v3 152)])
    {
      return ([objc_msgSend(v2 "captureSettings")] >> 30) & 4;
    }

    else
    {
      v4 = [OUTLINED_FUNCTION_41_15() isDeferredRawLearnedNRCapture:?];
      v5 = [v2 captureSettings];
      if (v4)
      {
        if (([v5 captureFlags] & 0x100000000) != 0)
        {
          return 5;
        }

        else
        {
          return 1;
        }
      }

      else
      {
        return ([v5 captureType] == 11) & (v1 >> 5);
      }
    }
  }

  return result;
}

- (uint64_t)_serviceNextSoftISPInputWithSampleBuffer:(unint64_t)a3 processingMode:(uint64_t)a4 transferOwnership:
{
  if (!a1)
  {
    return 0;
  }

  [*(a1 + 208) workerQueue];
  if (_FigIsCurrentDispatchQueue())
  {
    if (a2)
    {
      goto LABEL_4;
    }

    return 4294954516;
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  FigDebugAssert3();
  if (!a2)
  {
    return 4294954516;
  }

LABEL_4:
  v8 = CMGetAttachment(a2, @"StillSettings", 0);
  PortType = BWSampleBufferGetPortType(a2);
  if (![(BWPhotonicEngineNode *)a1 _processingNeededForSettings:v8 portType:PortType])
  {
    return 0;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = [*(a1 + 232) objectForKeyedSubscript:PortType];
  OUTLINED_FUNCTION_47_0();
  v12 = [v11 countByEnumeratingWithState:? objects:? count:?];
  if (v12)
  {
    v13 = v12;
    v14 = a2;
LABEL_7:
    v15 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_10_18();
      if (!v16)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v30 + 1) + 8 * v15);
      if (![v17 frame])
      {
        break;
      }

      if (v13 == ++v15)
      {
        OUTLINED_FUNCTION_47_0();
        v13 = OUTLINED_FUNCTION_37_2(v18, v19, v20, v21);
        if (v13)
        {
          goto LABEL_7;
        }

        v22 = 4294954516;
        a2 = v14;
        goto LABEL_22;
      }
    }

    a2 = v14;
    if (!a3)
    {
      BWStillImageCaptureFrameFlagsForSampleBuffer(v14);
      v28 = OUTLINED_FUNCTION_8();
      a3 = [BWPhotonicEngineNode _softISPProcessingModeForSettings:v28 captureFrameFlags:?];
    }

    [v17 addFrame:v14 processingMode:a3 transferOwnership:a4];
    if (v17)
    {
      if ([*(a1 + 232) count] < 2)
      {
        v29[0] = PortType;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      }

      else
      {
        [BWPhotonicEngineNode _processingOrderByPortTypeForSettings:a1];
      }

      while (1)
      {
        [BWPhotonicEngineNode _copyNextSoftISPInputUsingProcessingOrderByPortType:processingMode:];
        if (!v23)
        {
          return 0;
        }

        v24 = v23;
        v25 = objc_autoreleasePoolPush();
        [BWPhotonicEngineNode _enqueueSoftISPInput:a1];
        v22 = v26;
        objc_autoreleasePoolPop(v25);

        if (v22)
        {
          goto LABEL_22;
        }
      }
    }

    v22 = 4294954516;
LABEL_22:
    if ((a4 & 1) == 0)
    {
      return v22;
    }

    goto LABEL_29;
  }

  v22 = 4294954516;
  if (a4)
  {
LABEL_29:
    CFRelease(a2);
  }

  return v22;
}

- (void)_copyNextSoftISPInputUsingProcessingOrderByPortType:processingMode:
{
  OUTLINED_FUNCTION_59_0();
  if (!v0)
  {
    goto LABEL_37;
  }

  v3 = v2;
  v4 = v1;
  [*(v0 + 208) workerQueue];
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  if (![v4 count])
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_17_20();
  v9 = OUTLINED_FUNCTION_64(v5, v6, v7, v8);
  if (!v9)
  {
    goto LABEL_37;
  }

  v10 = v9;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      OUTLINED_FUNCTION_89();
      if (!v12)
      {
        objc_enumerationMutation(v4);
      }

      v13 = *(8 * i);
      if ([objc_msgSend(OUTLINED_FUNCTION_123(232) "objectForKeyedSubscript:"count"")])
      {
        if (!v13)
        {
          goto LABEL_37;
        }

        v18 = [objc_msgSend(OUTLINED_FUNCTION_123(232) "objectForKeyedSubscript:"firstObject"")];
        if (![v18 frame])
        {
          goto LABEL_37;
        }

        if (([objc_msgSend(v18 "captureStreamSettings")] & 0x8000000000) != 0)
        {
          [v18 portType];
          if ([objc_msgSend(OUTLINED_FUNCTION_7() "objectForKeyedSubscript:"count"")])
          {
            CMGetAttachment([v18 frame], *off_1E798A3C8, 0);
            [OUTLINED_FUNCTION_123(296) objectForKeyedSubscript:?];
            [OUTLINED_FUNCTION_7() addEntriesFromDictionary:?];
          }

          else if ([objc_msgSend(v18 "captureStreamSettings")] != 1 && (objc_msgSend(objc_msgSend(v18, "captureStreamSettings"), "referenceFrameIndex") & 0x80000000) == 0 && (BWStillImageCaptureFrameFlagsForSampleBuffer(objc_msgSend(v18, "frame")) & 0x10) == 0)
          {
            if ([objc_msgSend(OUTLINED_FUNCTION_123(232) "objectForKeyedSubscript:"count"")] < 2)
            {
              goto LABEL_37;
            }

            v22 = 1;
            while (1)
            {
              v18 = [objc_msgSend(OUTLINED_FUNCTION_123(232) "objectForKeyedSubscript:{"objectAtIndexedSubscript:", v22}")];
              if ((BWStillImageCaptureFrameFlagsForSampleBuffer([v18 frame]) & 0x10) != 0)
              {
                break;
              }

              if ([objc_msgSend(OUTLINED_FUNCTION_123(232) "objectForKeyedSubscript:"count"")] <= ++v22)
              {
                LODWORD(v22) = 0;
                v18 = 0;
                break;
              }
            }

            v20 = v22;
            goto LABEL_35;
          }
        }

        else
        {
          v19 = [objc_msgSend(v18 "captureSettings")];
          v20 = 0;
          if (v3 != 6 || !v19)
          {
LABEL_35:
            if (v18)
            {
              v23 = v18;
              [objc_msgSend(OUTLINED_FUNCTION_123(232) "objectForKeyedSubscript:{"removeObjectAtIndex:", v20}")];
            }

            goto LABEL_37;
          }

          [objc_msgSend(v18 "captureSettings")];
          if (([OUTLINED_FUNCTION_133() isEqualToString:v3] & 1) == 0 && objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_89_4(296), "objectForKeyedSubscript:"), "count"))
          {
            v21 = CMGetAttachment([v18 frame], *off_1E798A3C8, 0);
            [objc_msgSend(MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v21, "objectForKeyedSubscript:", *off_1E798A940)), "setObject:forKeyedSubscript:", objc_msgSend(OUTLINED_FUNCTION_89_4(296), "objectForKeyedSubscript:"), *off_1E798AA20}];
            [OUTLINED_FUNCTION_98_7() setObject:? forKeyedSubscript:?];
          }
        }

        v20 = 0;
        goto LABEL_35;
      }
    }

    OUTLINED_FUNCTION_17_20();
    v10 = OUTLINED_FUNCTION_64(v14, v15, v16, v17);
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_37:
  OUTLINED_FUNCTION_58_0();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.1()
{
  OUTLINED_FUNCTION_113();
  v2 = v1;
  v4 = CMGetAttachment(v3, @"StillSettings", 0);
  v5 = [BWNodeError newError:v2 sourceNode:v0 stillImageSettings:v4 metadata:OUTLINED_FUNCTION_239(v4, *off_1E798A3C8)];
  return [OUTLINED_FUNCTION_4() handleNodeError:? forInput:?];
}

- (uint64_t)handleNodeError:forInput:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingSampleBuffer:type:processorInput:err:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingSampleBuffer:type:processorInput:err:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (void)processorController:didFinishProcessingSampleBuffer:type:processorInput:err:.cold.3()
{
  OUTLINED_FUNCTION_80();
  [v0 portType];
  [objc_msgSend(OUTLINED_FUNCTION_18_0() "settings")];
  OUTLINED_FUNCTION_70();
  [BWPhotonicEngineNode _processorControllerDidFinishProcessingInputForPortType:processorType:captureRequestIdentifier:];
}

- (uint64_t)processorController:didFinishProcessingSampleBuffer:type:processorInput:err:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingSampleBuffer:type:processorInput:err:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingSampleBuffer:type:processorInput:err:.cold.6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

void __73__BWPhotonicEngineNode_processorController_didFinishProcessingInput_err___block_invoke_3_cold_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __int16 a32, char a33, os_log_type_t a34, int a35)
{
  [BWPhotonicEngineNode _processorControllerDidFinishProcessingInputForPortType:processorType:captureRequestIdentifier:];
  if ([objc_msgSend(*(a1 + 64) "captureSettings")] == 12 || objc_msgSend(objc_msgSend(*(a1 + 64), "captureSettings"), "captureType") == 13)
  {
    [*(a1 + 40) portType];
    [objc_msgSend(OUTLINED_FUNCTION_8() "objectForKeyedSubscript:"allInferencesDelivered"")];
  }

  v44 = *a3;

  [(BWPhotonicEngineNode *)v44 _resetProcessingStateIfDone:v37];
}

- (uint64_t)processorController:newInferencesForProcessorInput:inferenceInputBufferType:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didDetermineReferenceFrame:processorInput:err:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingInferenceBuffer:metadata:inferenceAttachedMediaKey:processorInput:err:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingInference:inferenceAttachmentKey:processorInput:err:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingInferenceAttachedMediaMetadata:processorInput:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingBuffer:metadata:type:captureFrameFlags:processorInput:err:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:didFinishProcessingBuffer:metadata:type:captureFrameFlags:processorInput:err:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

- (uint64_t)processorController:(uint64_t)a1 willProcessRedEyeReductionForProcessorInput:.cold.1(uint64_t a1)
{
  v1 = [*(a1 + 208) controllerForType:4];

  return [v1 cancelProcessing];
}

uint64_t __117__BWPhotonicEngineNode__processRawErrorRecoveryFrameWithNRFProcessorInput_processErrorRecoveryProxy_failureMetadata___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

void __79__BWPhotonicEngineNode__handleSampleBufferForFocusPixelDisparityInputIfNeeded___block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void (*a13)(uint64_t a1), void *a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int16 a37, char a38, char a39, int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v53 = a1[5];
  v54 = a1[6];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"SoftISP focus pixel disparity input frame for '%@'", a1[7]];
  v55 = OUTLINED_FUNCTION_113_4();

  [(BWPhotonicEngineNode *)v55 _emitError:v53 stillImageSettings:v54 metadata:v56 description:v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53];
}

uint64_t __97__BWPhotonicEngineNode__setupSoftISPProcessingStateIfNeededWithSettings_portType_processingPlan___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __94__BWPhotonicEngineNode__setupProcessingStateForSingleImageCaptureWithSettings_processingPlan___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

void __94__BWPhotonicEngineNode__setupProcessingStateForSingleImageCaptureWithSettings_processingPlan___block_invoke_cold_2(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_75_7(a1, a2);
  v2 = OUTLINED_FUNCTION_44_11();
  v3 = [BWPhotonicEngineNode _nextNRInputForPortType:v2];
  OUTLINED_FUNCTION_241_0(v3, v4);
  OUTLINED_FUNCTION_245();
}

uint64_t __94__BWPhotonicEngineNode__setupProcessingStateForSingleImageCaptureWithSettings_processingPlan___block_invoke_575_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __88__BWPhotonicEngineNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __88__BWPhotonicEngineNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke_583_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __88__BWPhotonicEngineNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __88__BWPhotonicEngineNode__setupProcessingStateForFlashCaptureWithSettings_processingPlan___block_invoke_584_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __97__BWPhotonicEngineNode__setupProcessingStateForColorConstancyCaptureWithSettings_processingPlan___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __97__BWPhotonicEngineNode__setupProcessingStateForColorConstancyCaptureWithSettings_processingPlan___block_invoke_626_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

void __97__BWPhotonicEngineNode__setupProcessingStateForColorConstancyCaptureWithSettings_processingPlan___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_80();
  [*(v2 + 32) portType];
  v3 = OUTLINED_FUNCTION_44_11();
  v4 = [BWPhotonicEngineNode _nextNRInputForPortType:v3];
  [v4 addFrame:*v0];
  [(BWPhotonicEngineNode *)*(v1 + 40) _checkIfProcessingCompletedForNRFProcessorInput:v4];
}

uint64_t __139__BWPhotonicEngineNode__setupProcessingStateForIntelligentDistortionCorrectionIfNeededWithSettings_sequenceNumber_portType_processingPlan___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __108__BWPhotonicEngineNode__setupProcessingStateForDeepZoomWithSettings_sequenceNumber_portType_processingPlan___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __108__BWPhotonicEngineNode__setupProcessingStateForDeepZoomWithSettings_sequenceNumber_portType_processingPlan___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_159_0();
  BWSampleBufferRemoveAttachedMedia(*v3, 0x1F219EC90);
  BWSampleBufferRemoveAttachedMedia(*v2, 0x1F21AAF50);
  [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:13];
  v4 = OUTLINED_FUNCTION_7();
  CMSetAttachment(v4, @"StillImageBufferFrameType", v5, 1u);
  [(BWPhotonicEngineNode *)*v0 _emitSampleBuffer:@"Deep Fusion 12MP" description:?];
  if (*v2)
  {
    CFRelease(*v2);
  }

  result = BWCIFilterArrayContainsPortraitFilters([objc_msgSend(*(v1 + 40) "requestedSettings")]);
  if (result)
  {
    return [*(*v0 + 208) createAndWaitOnEnhancedResolutionPortraitSemaphore];
  }

  return result;
}

void *__108__BWPhotonicEngineNode__setupProcessingStateForDeepZoomWithSettings_sequenceNumber_portType_processingPlan___block_invoke_cold_3(uint64_t a1, void *a2)
{
  [a2 stillImageSettings];
  v2 = OUTLINED_FUNCTION_3_30();
  return [BWPhotonicEngineNode _beginStereoPhotoProcessingIfNeededForSettings:v2];
}

uint64_t __108__BWPhotonicEngineNode__setupProcessingStateForDeepZoomWithSettings_sequenceNumber_portType_processingPlan___block_invoke_657_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __138__BWPhotonicEngineNode__setupProcessingStateForScalerIfNeededWithSettings_sequenceNumber_portType_preNoiseReductionScaler_processingPlan___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_59_12();
  v7 = *(v6 + 32);
  if (v7)
  {
    if ([*(v7 + 440) objectForKeyedSubscript:*(v4 + 40)])
    {
      OUTLINED_FUNCTION_134_5();
      LODWORD(v7) = [v8 applyingZoomBeforeDeepZoomAllowedWithSampleBuffer:? bufferType:? portType:?];
    }

    else
    {
      LODWORD(v7) = 1;
    }
  }

  v9 = [objc_msgSend(objc_msgSend(*(v4 + 48) "requestedSettings")];
  v10 = 1;
  if (v7 && !v9)
  {
    v10 = *(v4 + 56);
  }

  v11 = [objc_msgSend(*(*(v4 + 32) + 448) objectForKeyedSubscript:{objc_msgSend(a4, "portType")), "firstObject"}];
  if (!v11)
  {
    return 1;
  }

  v12 = v11;
  [v11 setResolvedProcessingResolutionFlavor:{objc_msgSend(*(*(v4 + 32) + 152), "resolvedProcessingResolutionFlavorForSettings:portType:", *(v4 + 48), *(v4 + 40))}];
  [v12 setProcessingMode:v10];
  OUTLINED_FUNCTION_134_5();
  [v13 addFrame:? bufferType:?];
  return 0;
}

uint64_t __138__BWPhotonicEngineNode__setupProcessingStateForScalerIfNeededWithSettings_sequenceNumber_portType_preNoiseReductionScaler_processingPlan___block_invoke_677_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __104__BWPhotonicEngineNode__setupProcessingStateForInferenceWithSettings_portType_inferenceInputBufferType___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __99__BWPhotonicEngineNode__setupProcessingStateForJasperDisparityIfNeededWithSettings_processingPlan___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __99__BWPhotonicEngineNode__setupProcessingStateForPointCloudDepthIfNeededWithSettings_processingPlan___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __61__BWPhotonicEngineNode__softISPFusionCaptureOutputSbufRouter__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __44__BWPhotonicEngineNode__nrfOutputSbufRouter__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __47__BWPhotonicEngineNode__ubInferenceInputRouter__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __47__BWPhotonicEngineNode__ubInferenceInputRouter__block_invoke_cold_2(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_msgSend(a1 "stillImageSettings")];
  [a1 stillImageSettings];
  v7 = [OUTLINED_FUNCTION_28() isSemanticRenderingCapture:?];
  if ([v6 captureType] == 12 || (result = objc_msgSend(v6, "captureType"), result == 13))
  {
    result = [v6 deliverDeferredPhotoProxyImage];
    if (v7)
    {
      if ((result & 1) == 0)
      {
        v9 = [*(*a2 + 344) objectForKeyedSubscript:a3];

        return [v9 allInferencesDelivered];
      }
    }
  }

  return result;
}

uint64_t __36__BWPhotonicEngineNode__ubRERRouter__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __65__BWPhotonicEngineNode__standardNROutputRouterWithExpectedQueue___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __65__BWPhotonicEngineNode__standardNROutputRouterWithExpectedQueue___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_59_12();
  [objc_msgSend(CMGetAttachment(v1 *off_1E798A3C8];
  [objc_msgSend(v0 "settings")];
  [objc_msgSend(OUTLINED_FUNCTION_206_0() "settings")];
  v2 = OUTLINED_FUNCTION_17_26();
  return [BWPhotonicEngineNode _propagateSushiRawDNGDictionaryWithOutputSampleBuffer:v2 requestedDimensions:? aspectRatio:? gdcRequested:?];
}

@end