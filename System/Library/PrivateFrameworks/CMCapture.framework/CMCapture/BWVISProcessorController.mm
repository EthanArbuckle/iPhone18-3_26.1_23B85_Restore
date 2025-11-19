@interface BWVISProcessorController
- (int)enqueueBufferForProcessing:(opaqueCMSampleBuffer *)a3;
- (int)finishPendingProcessing;
- (int)prepareToProcess;
- (uint64_t)prepareToProcess;
- (void)dealloc;
- (void)didCompleteProcessingOfBuffer:(opaqueCMSampleBuffer *)a3 withStatus:(int)a4;
- (void)willStartProcessingBuffer:(opaqueCMSampleBuffer *)a3 withStatus:(int)a4;
@end

@implementation BWVISProcessorController

- (int)prepareToProcess
{
  if (self->_buffersEnqueued)
  {
    goto LABEL_28;
  }

  if (!self->_configuration)
  {
    goto LABEL_30;
  }

  visProcessor = self->_visProcessor;
  if (visProcessor)
  {
    [(VISProcessor *)visProcessor finishProcessing];
    [(VISProcessor *)self->_visProcessor purgeResources];
    goto LABEL_10;
  }

  v4 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters videoStabilizationProcessorVersion];
  if (!v4)
  {
LABEL_30:
    v24 = -12780;
    goto LABEL_32;
  }

  v5 = v4;
  v6 = BWLoadProcessorBundle(@"VideoStabilization", v4);
  if (!v6)
  {
LABEL_29:
    v24 = -12786;
    goto LABEL_32;
  }

  v7 = v6;
  v8 = objc_alloc_init([v6 classNamed:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"VISConfigurationV%d", v5)}]);
  self->_visConfiguration = v8;
  if (!v8 || (v9 = objc_alloc_init([v7 classNamed:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"VISProcessorV%d", v5)}]), (self->_visProcessor = v9) == 0))
  {
LABEL_28:
    v24 = -12782;
LABEL_32:

    self->_visProcessor = 0;
    self->_visConfiguration = 0;
    return v24;
  }

  [(VISProcessor *)v9 setDelegate:self];
LABEL_10:
  [(VISConfiguration *)self->_visConfiguration setIspProcessingSession:[(BWFigCaptureISPProcessingSession *)[(BWVISProcessorControllerConfiguration *)self->_configuration ispProcessingSession] figCaptureISPProcessingSession]];
  [(VISConfiguration *)self->_visConfiguration setExtendedOutputRowsToFill:[(BWVISProcessorControllerConfiguration *)self->_configuration extendedOutputRowsToFill]];
  [(VISConfiguration *)self->_visConfiguration setInputPixelBufferAttributes:[(BWVISProcessorControllerConfiguration *)self->_configuration inputPixelBufferAttributes]];
  [(VISConfiguration *)self->_visConfiguration setOutputPixelBufferAttributes:[(BWVISProcessorControllerConfiguration *)self->_configuration outputPixelBufferAttributes]];
  [(VISConfiguration *)self->_visConfiguration setTransformPlatform:*(&xmmword_1ACF06180 + [(BWVISProcessorControllerConfiguration *)self->_configuration transformPlatform])];
  [(VISConfiguration *)self->_visConfiguration setBlurBorderPixels:[(BWVISProcessorControllerConfiguration *)self->_configuration blurBorderPixels]];
  [(VISConfiguration *)self->_visConfiguration setSmoothingMethod:dword_1ACF06190[[(BWVISProcessorControllerConfiguration *)self->_configuration smoothingMethod]]];
  [(VISConfiguration *)self->_visConfiguration setMotionBlurShimmerMitigationMethod:dword_1ACF061A8[[(BWVISProcessorControllerConfiguration *)self->_configuration motionBlurShimmerMitigationMethod]]];
  [(VISConfiguration *)self->_visConfiguration setSphereCorrectionEnabled:[(BWVISProcessorControllerConfiguration *)self->_configuration sphereCorrectionEnabled]];
  [(VISConfiguration *)self->_visConfiguration setUseISPMotionData:[(BWVISProcessorControllerConfiguration *)self->_configuration useISPMotionData]];
  [(VISConfiguration *)self->_visConfiguration setCinematicLookAheadFrameCount:[(BWVISProcessorControllerConfiguration *)self->_configuration cinematicLookAheadFrameCount]];
  [(BWVISProcessorControllerConfiguration *)self->_configuration cinematicLookAheadTime];
  [(VISConfiguration *)self->_visConfiguration setCinematicLookAheadTime:?];
  [(BWVISProcessorControllerConfiguration *)self->_configuration livePhotoCleanOutputRect];
  [(VISConfiguration *)self->_visConfiguration setLivePhotoCleanOutputRect:?];
  [(VISConfiguration *)self->_visConfiguration setAttachStabilizedOutputCameraTrajectory:[(BWVISProcessorControllerConfiguration *)self->_configuration attachStabilizedOutputCameraTrajectory]];
  [(VISConfiguration *)self->_visConfiguration setAttachStabilizedTrajectoryHomography:[(BWVISProcessorControllerConfiguration *)self->_configuration attachStabilizedTrajectoryHomography]];
  [(VISConfiguration *)self->_visConfiguration setAttachEstimatedMotionVector:[(BWVISProcessorControllerConfiguration *)self->_configuration attachEstimatedMotionVector]];
  [(VISConfiguration *)self->_visConfiguration setOnlyGenerateTransformsParameters:[(BWVISProcessorControllerConfiguration *)self->_configuration onlyGenerateTransformsParameters]];
  [(VISConfiguration *)self->_visConfiguration setEmitSampleBufferSemaphore:[(BWVISProcessorControllerConfiguration *)self->_configuration emitSampleBufferSemaphore]];
  [(VISConfiguration *)self->_visConfiguration setSensorIDDict:[(BWVISProcessorControllerConfiguration *)self->_configuration sensorIDDict]];
  [(VISConfiguration *)self->_visConfiguration setCameraInfoByPortType:[(BWVISProcessorControllerConfiguration *)self->_configuration cameraInfoByPortType]];
  [(VISConfiguration *)self->_visConfiguration setSphereVideoEnabled:[(BWVISProcessorControllerConfiguration *)self->_configuration sphereVideoEnabled]];
  [(VISConfiguration *)self->_visConfiguration setFrameRateConversionEnabled:[(BWVISProcessorControllerConfiguration *)self->_configuration frameRateConversionEnabled]];
  [(VISConfiguration *)self->_visConfiguration setSmartStyleRenderingEnabled:[(BWVISProcessorControllerConfiguration *)self->_configuration smartStyleRenderingEnabled]];
  [(VISConfiguration *)self->_visConfiguration setSmartStyleReversibilityEnabled:[(BWVISProcessorControllerConfiguration *)self->_configuration smartStyleReversibilityEnabled]];
  [(VISConfiguration *)self->_visConfiguration setSmartStyleConfigurationDict:[(BWVISProcessorControllerConfiguration *)self->_configuration smartStyleConfigurationDict]];
  [(VISConfiguration *)self->_visConfiguration setSmartStyleMemoryPoolId:[(BWVISProcessorControllerConfiguration *)self->_configuration smartStyleMemoryPoolId]];
  [(VISConfiguration *)self->_visConfiguration setVideoStabilizationDisabled:[(BWVISProcessorControllerConfiguration *)self->_configuration videoStabilizationDisabled]];
  [(VISConfiguration *)self->_visConfiguration setP3ToBT2020ConversionEnabled:[(BWVISProcessorControllerConfiguration *)self->_configuration p3ToBT2020ConversionEnabled]];
  [(VISConfiguration *)self->_visConfiguration setGpuPriority:[(BWVISProcessorControllerConfiguration *)self->_configuration gpuPriority]];
  [(VISConfiguration *)self->_visConfiguration setMetalSubmissionAndCompletionQueuePriority:[(BWVISProcessorControllerConfiguration *)self->_configuration metalSubmissionAndCompletionQueuePriority]];
  [(VISConfiguration *)self->_visConfiguration setOutputPixelBufferPool:[(BWPixelBufferPool *)[(BWVISProcessorControllerConfiguration *)self->_configuration outputPixelBufferPool] cvPixelBufferPool]];
  [(VISConfiguration *)self->_visConfiguration setOutputAuxAttributes:[(BWPixelBufferPool *)[(BWVISProcessorControllerConfiguration *)self->_configuration outputPixelBufferPool] cvPixelBufferPoolAuxAttributes]];
  [(VISConfiguration *)self->_visConfiguration setOutputDepthPixelBufferPool:[(BWPixelBufferPool *)[(BWVISProcessorControllerConfiguration *)self->_configuration outputDepthPixelBufferPool] cvPixelBufferPool]];
  [(VISConfiguration *)self->_visConfiguration setOutputDepthAuxAttributes:[(BWPixelBufferPool *)[(BWVISProcessorControllerConfiguration *)self->_configuration outputDepthPixelBufferPool] cvPixelBufferPoolAuxAttributes]];
  [(VISConfiguration *)self->_visConfiguration setGeneratedTransformsOutputDimensionsOverride:[(BWVISProcessorControllerConfiguration *)self->_configuration generatedTransformsOutputDimensionsOverride]];
  [(VISConfiguration *)self->_visConfiguration setDistortionCorrectionEnabledPortTypes:[(BWVISProcessorControllerConfiguration *)self->_configuration distortionCorrectionEnabledPortTypes]];
  [(VISConfiguration *)self->_visConfiguration setDistortionCompensationEnabledPortTypes:[(BWVISProcessorControllerConfiguration *)self->_configuration distortionCompensationEnabledPortTypes]];
  [(BWVISProcessorControllerConfiguration *)self->_configuration minDistanceForBravoParallaxShift];
  [(VISConfiguration *)self->_visConfiguration setMinDistanceForBravoParallaxShift:?];
  [(VISConfiguration *)self->_visConfiguration setVideoSTFParameters:[(BWVISProcessorControllerConfiguration *)self->_configuration videoSTFParameters]];
  [(VISConfiguration *)self->_visConfiguration setVideoGreenGhostMitigationParameters:[(BWVISProcessorControllerConfiguration *)self->_configuration videoGreenGhostMitigationParameters]];
  [(VISConfiguration *)self->_visConfiguration setCameraExtrinsicMatrix:[(BWVISProcessorControllerConfiguration *)self->_configuration cameraExtrinsicMatrix]];
  [(VISConfiguration *)self->_visConfiguration setEnableRollingShutterCorrectionOnly:[(BWVISProcessorControllerConfiguration *)self->_configuration enableRollingShutterCorrectionOnly]];
  [(VISConfiguration *)self->_visConfiguration setDisableTransformLimitsForPredeterminedTrajectory:[(BWVISProcessorControllerConfiguration *)self->_configuration disableTransformLimitsForPredeterminedTrajectory]];
  [(VISConfiguration *)self->_visConfiguration setUseCameraGeometry:[(BWVISProcessorControllerConfiguration *)self->_configuration useCameraGeometry]];
  [(VISConfiguration *)self->_visConfiguration setFaceStabilizationEnabled:[(BWVISProcessorControllerConfiguration *)self->_configuration faceStabilizationEnabled]];
  [(BWVISProcessorControllerConfiguration *)self->_configuration faceStabilizationSigmaMultiplierForFaceFiltering];
  [(VISConfiguration *)self->_visConfiguration setFaceStabilizationSigmaMultiplierForFaceFiltering:?];
  [(BWVISProcessorControllerConfiguration *)self->_configuration faceStabilizationSigmaMultiplierForBiasTracking];
  [(VISConfiguration *)self->_visConfiguration setFaceStabilizationSigmaMultiplierForBiasTracking:?];
  [(BWVISProcessorControllerConfiguration *)self->_configuration faceStabilizationSigmaModulationExponent];
  [(VISConfiguration *)self->_visConfiguration setFaceStabilizationSigmaModulationExponent:?];
  [(BWVISProcessorControllerConfiguration *)self->_configuration faceStabilizationSigmaModulationSmoothTransitionMultiplier];
  [(VISConfiguration *)self->_visConfiguration setFaceStabilizationSigmaModulationSmoothTransitionMultiplier:?];
  if (![(NSDictionary *)[(BWVISProcessorControllerConfiguration *)self->_configuration outputAttachmentsPixelBufferPools] count])
  {
    goto LABEL_21;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!v10)
  {
    goto LABEL_29;
  }

  v11 = v10;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = v12;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = [(BWVISProcessorControllerConfiguration *)self->_configuration outputAttachmentsPixelBufferPools];
  v15 = [(NSDictionary *)v14 countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        v20 = [(NSDictionary *)[(BWVISProcessorControllerConfiguration *)self->_configuration outputAttachmentsPixelBufferPools] objectForKeyedSubscript:v19];
        [v11 setObject:objc_msgSend(v20 forKeyedSubscript:{"cvPixelBufferPool"), v19}];
        [v13 setObject:objc_msgSend(v20 forKeyedSubscript:{"cvPixelBufferPoolAuxAttributes"), v19}];
      }

      v16 = [(NSDictionary *)v14 countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v16);
  }

  [(VISConfiguration *)self->_visConfiguration setOutputAttachmentsPixelBufferPools:v11];
  [(VISConfiguration *)self->_visConfiguration setOutputAttachmentsAuxAttributes:v13];

LABEL_21:
  if ([(BWVISProcessorControllerConfiguration *)self->_configuration videoStabilizationStrength]>= 3)
  {
    [(VISConfiguration *)self->_visConfiguration setMotionBlurShimmerMitigationMethod:3];
    LODWORD(v21) = 1113325568;
    [(VISConfiguration *)self->_visConfiguration setHorizonCorrectionThreshold:v21];
    if ([(BWVISProcessorControllerConfiguration *)self->_configuration videoStabilizationStrength]== 4)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    [(VISConfiguration *)self->_visConfiguration setHorizonCorrectionMode:v22];
  }

  [(VISConfiguration *)self->_visConfiguration setZoomSmoothingEnabled:[(BWVISProcessorControllerConfiguration *)self->_configuration zoomSmoothingEnabled]];
  [(VISConfiguration *)self->_visConfiguration setApplyFrameCropOffset:[(BWVISProcessorControllerConfiguration *)self->_configuration applyFrameCropOffset]];
  [(VISProcessor *)self->_visProcessor setConfiguration:self->_visConfiguration];
  v23 = [(VISProcessor *)self->_visProcessor prepareToProcess:0];
  v24 = 0;
  if (v23)
  {
    v26 = v23;
    [BWVISProcessorController prepareToProcess];
    v24 = v26;
    goto LABEL_32;
  }

  return v24;
}

- (void)dealloc
{
  [(VISProcessor *)self->_visProcessor finishProcessing];
  [(VISProcessor *)self->_visProcessor purgeResources];

  v3.receiver = self;
  v3.super_class = BWVISProcessorController;
  [(BWVISProcessorController *)&v3 dealloc];
}

- (void)willStartProcessingBuffer:(opaqueCMSampleBuffer *)a3 withStatus:(int)a4
{
  v4 = *&a4;
  Weak = objc_loadWeak(&self->_delegate);

  [Weak willStartProcessingBuffer:a3 withStatus:v4];
}

- (void)didCompleteProcessingOfBuffer:(opaqueCMSampleBuffer *)a3 withStatus:(int)a4
{
  v4 = *&a4;
  Weak = objc_loadWeak(&self->_delegate);

  [Weak didCompleteProcessingOfBuffer:a3 withStatus:v4];
}

- (int)enqueueBufferForProcessing:(opaqueCMSampleBuffer *)a3
{
  if (!self->_visProcessor)
  {
    return -12780;
  }

  Weak = objc_loadWeak(&self->_delegate);
  v6 = -12780;
  if (a3 && Weak)
  {
    if (!self->_buffersEnqueued)
    {
      [(VISProcessor *)self->_visProcessor setLongPressModeEnabled:self->_longPressModeEnabled];
      [(VISProcessor *)self->_visProcessor setFlipHorizontalOrientationEnabled:self->_flipHorizontalOrientationEnabled];
      [(VISProcessor *)self->_visProcessor setSmartStyleReversibilityProcessingEnabled:self->_smartStyleReversibilityProcessingEnabled];
    }

    v6 = [(VISProcessor *)self->_visProcessor enqueueBufferForProcessing:a3];
    if (v6)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_1();
      FigDebugAssert3();
    }

    else
    {
      self->_buffersEnqueued = 1;
    }
  }

  return v6;
}

- (int)finishPendingProcessing
{
  if (!objc_loadWeak(&self->_delegate))
  {
    return -12780;
  }

  v3 = [(VISProcessor *)self->_visProcessor finishProcessing];
  if (v3)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
  }

  else
  {
    self->_buffersEnqueued = 0;
  }

  return v3;
}

- (uint64_t)prepareToProcess
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

@end