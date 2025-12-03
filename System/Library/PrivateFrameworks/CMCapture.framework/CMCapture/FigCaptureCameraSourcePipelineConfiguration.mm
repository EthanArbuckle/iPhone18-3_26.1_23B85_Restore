@interface FigCaptureCameraSourcePipelineConfiguration
- (__n128)setMaxExposureDurationClientOverride:(uint64_t)override;
- (__n128)setMaxExposureDurationFrameworkOverride:(__n128 *)override;
- (uint64_t)RGBIRStereoFusionEnabled;
- (uint64_t)cameraConfiguration;
- (uint64_t)configureForSIFRStillImageCaptureIfAvailable;
- (uint64_t)depthType;
- (uint64_t)lowLatencyStabilizationEnabledInSourcePipeline;
- (uint64_t)midFrameSynchronizationEnabled;
- (uint64_t)preLTMThumbnailEnabled;
- (uint64_t)setActionCameraEnabled:(uint64_t)result;
- (uint64_t)setAdditionalVISOverscanWhenRecording:(uint64_t)result;
- (uint64_t)setAudioMixWithOthersEnabled:(uint64_t)result;
- (uint64_t)setAutoImageControlMode:(uint64_t)result;
- (uint64_t)setCaptureDimensionsForFSDNetSecondary:(uint64_t)result;
- (uint64_t)setClientIsCameraOrDerivative:(uint64_t)result;
- (uint64_t)setClientIsVOIP:(uint64_t)result;
- (uint64_t)setClockSynchronizationEnabled:(uint64_t)result;
- (uint64_t)setConfigureForDepthDataDeliverySupport:(uint64_t)result;
- (uint64_t)setConfigureForSIFRStillImageCaptureIfAvailable:(uint64_t)result;
- (uint64_t)setConfigureForSoftISPSupport:(uint64_t)result;
- (uint64_t)setConfigureForStereoPhotoCaptureSupport:(uint64_t)result;
- (uint64_t)setConfigureForZeroShutterLagSupport:(uint64_t)result;
- (uint64_t)setContinuityCameraClientDeviceClass:(uint64_t)result;
- (uint64_t)setContinuityCameraIsWired:(uint64_t)result;
- (uint64_t)setCoreMediaFaceTrackingEnabled:(uint64_t)result;
- (uint64_t)setDeferredTimeOfFlightNodePrepareEnabled:(uint64_t)result;
- (uint64_t)setDepthConversionEnabled:(uint64_t)result;
- (uint64_t)setDepthDimensionsOverride:(uint64_t)result;
- (uint64_t)setDepthOutputEnabled:(uint64_t)result;
- (uint64_t)setDepthType:(uint64_t)result;
- (uint64_t)setEnableStillImageSensorOverscanIfAvailable:(uint64_t)result;
- (uint64_t)setGraphContainsMultipleVideoSources:(uint64_t)result;
- (uint64_t)setIspFaceTrackingEnabled:(uint64_t)result;
- (uint64_t)setLowLatencyStabilizationEnabledInSourcePipeline:(uint64_t)result;
- (uint64_t)setLtmThumbnailOutputDimensions:(uint64_t)result;
- (uint64_t)setLumaHistogramsEnabled:(uint64_t)result;
- (uint64_t)setMaxContinuousZoomFactorForDepthDataDelivery:(uint64_t)result;
- (uint64_t)setMidFrameSynchronizationEnabled:(uint64_t)result;
- (uint64_t)setMotionAttachmentsSource:(uint64_t)result;
- (uint64_t)setMovieFileMaxLossyCompressionLevel:(uint64_t)result;
- (uint64_t)setMultiCamClientCompositingPrimaryCameraVideoStabilizationStrength:(uint64_t)result;
- (uint64_t)setOfflineVISEnabled:(uint64_t)result;
- (uint64_t)setOverCapturePercentage:(uint64_t)result;
- (uint64_t)setPostColorProcessingThumbnailEnabled:(uint64_t)result;
- (uint64_t)setPostLTMThumbnailEnabled:(uint64_t)result;
- (uint64_t)setPreLTMThumbnailEnabled:(uint64_t)result;
- (uint64_t)setPreviewGeometricDistortionCorrectionEnabled:(uint64_t)result;
- (uint64_t)setPreviewMaxLossyCompressionLevel:(uint64_t)result;
- (uint64_t)setRGBIRStereoFusionEnabled:(uint64_t)result;
- (uint64_t)setRGBIRStereoFusionFixedDepthThresholdMM:(uint64_t)result;
- (uint64_t)setRGBIRStereoFusionFixedDepthValueMM:(uint64_t)result;
- (uint64_t)setRGBIRStereoFusionMaxDepthThresholdMM:(uint64_t)result;
- (uint64_t)setRGBIRStereoFusionMinDepthThresholdMM:(uint64_t)result;
- (uint64_t)setRebuildingGraphForTrueVideoTransition:(uint64_t)result;
- (uint64_t)setSensorRawStillImageOutputsEnabledIfAvailable:(uint64_t)result;
- (uint64_t)setSmartFramingEnabled:(uint64_t)result;
- (uint64_t)setSmartStyleLearningEnabled:(uint64_t)result;
- (uint64_t)setSmartStyleReversibilityEnabled:(uint64_t)result;
- (uint64_t)setSoftISPEnabled:(uint64_t)result;
- (uint64_t)setStereoVideoCaptureEnabled:(uint64_t)result;
- (uint64_t)setStillImageFocusPixelDataRetainedBufferCount:(uint64_t)result;
- (uint64_t)setStillImageGeometricDistortionCorrectionEnabled:(uint64_t)result;
- (uint64_t)setStillImageGeometricDistortionCorrectionExpansionCoversOverscan:(uint64_t)result;
- (uint64_t)setStillImageLocalHistogramClippingDataMetadataEnabled:(uint64_t)result;
- (uint64_t)setStillImageMaxLossyCompressionLevel:(uint64_t)result;
- (uint64_t)setStillImageOutputRetainedBufferCountOverride:(uint64_t)result;
- (uint64_t)setStillImageOutputSushiRawAttachmentOptionEnabled:(uint64_t)result;
- (uint64_t)setStillImageSashimiRawRetainedBufferCount:(uint64_t)result;
- (uint64_t)setStillImageSensorInterfaceRawRetainedBufferCount:(uint64_t)result;
- (uint64_t)setStreamingCameraCalibrationDataDeliveryEnabled:(uint64_t)result;
- (uint64_t)setStreamingForegroundSegmentationEnabled:(uint64_t)result;
- (uint64_t)setStrictDepthModePreferred:(uint64_t)result;
- (uint64_t)setStructuredLightAFAssistEnabled:(uint64_t)result;
- (uint64_t)setSuppressVideoEffects:(uint64_t)result;
- (uint64_t)setTargetFrameRateWhenNotRecording:(uint64_t)result;
- (uint64_t)setTemporalNoiseReductionStrengthHighEnabled:(uint64_t)result;
- (uint64_t)setTrueVideoTransitionPreviousPhotoGraphZoomFactor:(uint64_t)result;
- (uint64_t)setVideoCaptureGeometricDistortionCorrectionEnabled:(uint64_t)result;
- (uint64_t)setVideoDataMaxLossyCompressionLevel:(uint64_t)result;
- (uint64_t)setVideoHDRImageStatisticsEnabled:(uint64_t)result;
- (uint64_t)setVideoSTFMetadataEnabled:(uint64_t)result;
- (uint64_t)setWeightSegmentMapEnabled:(uint64_t)result;
- (uint64_t)setWeightSegmentMapNumberOfSegments:(uint64_t)result;
- (uint64_t)setWeightSegmentMapOutputDimensions:(uint64_t)result;
- (uint64_t)setWeightSegmentMapSmoothingSigma:(uint64_t)result;
- (uint64_t)setZeroShutterLagEnabled:(uint64_t)result;
- (uint64_t)setZoomPIPMinimumUIZoomFactor:(uint64_t)result;
- (uint64_t)setZoomPIPSingleStreamModeEnabled:(uint64_t)result;
- (uint64_t)setZoomPIPSlaveStreamingFrameRate:(uint64_t)result;
- (uint64_t)smartStyleLearningEnabled;
- (uint64_t)softISPEnabled;
- (uint64_t)stereoVideoCaptureEnabled;
- (void)dealloc;
- (void)setCameraConfiguration:(void *)configuration;
- (void)setConnectionConfigurations:(void *)configurations;
- (void)setDepthDataConnectionConfiguration:(void *)configuration;
- (void)setMetadataObjectConnectionConfigurations:(void *)configurations;
- (void)setMovieFileDetectedObjectMetadataConnectionConfigurations:(void *)configurations;
- (void)setPointCloudDataConnectionConfigurations:(void *)configurations;
- (void)setPreferredMasterPortType:(void *)type;
- (void)setPreviewDerivedConnectionConfigurations:(void *)configurations;
- (void)setSmartStyle:(void *)style;
- (void)setStillImageConnectionConfiguration:(void *)configuration;
- (void)setVideoCaptureConnectionConfigurations:(void *)configurations;
- (void)setVideoPreviewSinkConnectionConfiguration:(void *)configuration;
- (void)setVisionDataConnectionConfigurations:(void *)configurations;
@end

@implementation FigCaptureCameraSourcePipelineConfiguration

- (uint64_t)softISPEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 132));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)configureForSIFRStillImageCaptureIfAvailable
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 131));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)RGBIRStereoFusionEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 68));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)stereoVideoCaptureEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 354));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)smartStyleLearningEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 320));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureCameraSourcePipelineConfiguration;
  [(FigCaptureCameraSourcePipelineConfiguration *)&v3 dealloc];
}

- (uint64_t)setMotionAttachmentsSource:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setActionCameraEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

- (uint64_t)setMultiCamClientCompositingPrimaryCameraVideoStabilizationStrength:(uint64_t)result
{
  if (result)
  {
    *(result + 28) = a2;
  }

  return result;
}

- (uint64_t)depthType
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)setDepthType:(uint64_t)result
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

- (uint64_t)setMaxContinuousZoomFactorForDepthDataDelivery:(uint64_t)result
{
  if (result)
  {
    *(result + 36) = a2;
  }

  return result;
}

- (uint64_t)setStrictDepthModePreferred:(uint64_t)result
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

- (uint64_t)setRGBIRStereoFusionMinDepthThresholdMM:(uint64_t)result
{
  if (result)
  {
    *(result + 52) = a2;
  }

  return result;
}

- (uint64_t)setRGBIRStereoFusionMaxDepthThresholdMM:(uint64_t)result
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

- (uint64_t)setRGBIRStereoFusionFixedDepthThresholdMM:(uint64_t)result
{
  if (result)
  {
    *(result + 60) = a2;
  }

  return result;
}

- (uint64_t)setRGBIRStereoFusionFixedDepthValueMM:(uint64_t)result
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

- (uint64_t)setRGBIRStereoFusionEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 68) = a2;
  }

  return result;
}

- (uint64_t)setDepthDimensionsOverride:(uint64_t)result
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

- (__n128)setMaxExposureDurationClientOverride:(uint64_t)override
{
  if (override)
  {
    result = *a2;
    *(override + 88) = a2[1].n128_u64[0];
    *(override + 72) = result;
  }

  return result;
}

- (__n128)setMaxExposureDurationFrameworkOverride:(__n128 *)override
{
  if (override)
  {
    result = *a2;
    override[7].n128_u64[0] = a2[1].n128_u64[0];
    override[6] = result;
  }

  return result;
}

- (uint64_t)setCoreMediaFaceTrackingEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 121) = a2;
  }

  return result;
}

- (uint64_t)setIspFaceTrackingEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 122) = a2;
  }

  return result;
}

- (uint64_t)setStillImageGeometricDistortionCorrectionEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 123) = a2;
  }

  return result;
}

- (uint64_t)setVideoCaptureGeometricDistortionCorrectionEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 124) = a2;
  }

  return result;
}

- (uint64_t)setPreviewGeometricDistortionCorrectionEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 125) = a2;
  }

  return result;
}

- (uint64_t)setStillImageGeometricDistortionCorrectionExpansionCoversOverscan:(uint64_t)result
{
  if (result)
  {
    *(result + 126) = a2;
  }

  return result;
}

- (uint64_t)setStillImageLocalHistogramClippingDataMetadataEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 127) = a2;
  }

  return result;
}

- (uint64_t)setOfflineVISEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 128) = a2;
  }

  return result;
}

- (uint64_t)setZeroShutterLagEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 129) = a2;
  }

  return result;
}

- (uint64_t)setConfigureForZeroShutterLagSupport:(uint64_t)result
{
  if (result)
  {
    *(result + 130) = a2;
  }

  return result;
}

- (uint64_t)setConfigureForSIFRStillImageCaptureIfAvailable:(uint64_t)result
{
  if (result)
  {
    *(result + 131) = a2;
  }

  return result;
}

- (uint64_t)setSoftISPEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 132) = a2;
  }

  return result;
}

- (uint64_t)setSensorRawStillImageOutputsEnabledIfAvailable:(uint64_t)result
{
  if (result)
  {
    *(result + 133) = a2;
  }

  return result;
}

- (uint64_t)setEnableStillImageSensorOverscanIfAvailable:(uint64_t)result
{
  if (result)
  {
    *(result + 134) = a2;
  }

  return result;
}

- (uint64_t)setOverCapturePercentage:(uint64_t)result
{
  if (result)
  {
    *(result + 136) = a2;
  }

  return result;
}

- (uint64_t)setConfigureForSoftISPSupport:(uint64_t)result
{
  if (result)
  {
    *(result + 142) = a2;
  }

  return result;
}

- (uint64_t)setConfigureForDepthDataDeliverySupport:(uint64_t)result
{
  if (result)
  {
    *(result + 143) = a2;
  }

  return result;
}

- (uint64_t)setConfigureForStereoPhotoCaptureSupport:(uint64_t)result
{
  if (result)
  {
    *(result + 144) = a2;
  }

  return result;
}

- (uint64_t)setClockSynchronizationEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 145) = a2;
  }

  return result;
}

- (uint64_t)setDepthConversionEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 146) = a2;
  }

  return result;
}

- (uint64_t)midFrameSynchronizationEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 147));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setMidFrameSynchronizationEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 147) = a2;
  }

  return result;
}

- (uint64_t)setStillImageFocusPixelDataRetainedBufferCount:(uint64_t)result
{
  if (result)
  {
    *(result + 148) = a2;
  }

  return result;
}

- (uint64_t)setStillImageSashimiRawRetainedBufferCount:(uint64_t)result
{
  if (result)
  {
    *(result + 152) = a2;
  }

  return result;
}

- (uint64_t)setStillImageSensorInterfaceRawRetainedBufferCount:(uint64_t)result
{
  if (result)
  {
    *(result + 156) = a2;
  }

  return result;
}

- (uint64_t)setStillImageOutputRetainedBufferCountOverride:(uint64_t)result
{
  if (result)
  {
    *(result + 160) = a2;
  }

  return result;
}

- (uint64_t)setStillImageOutputSushiRawAttachmentOptionEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 164) = a2;
  }

  return result;
}

- (uint64_t)setStreamingForegroundSegmentationEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 165) = a2;
  }

  return result;
}

- (uint64_t)setStreamingCameraCalibrationDataDeliveryEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 166) = a2;
  }

  return result;
}

- (uint64_t)setAutoImageControlMode:(uint64_t)result
{
  if (result)
  {
    *(result + 168) = a2;
  }

  return result;
}

- (uint64_t)cameraConfiguration
{
  if (result)
  {
    return *(result + 176);
  }

  return result;
}

- (void)setCameraConfiguration:(void *)configuration
{
  if (configuration)
  {
    objc_setProperty_nonatomic(configuration, newValue, newValue, 176);
  }
}

- (void)setConnectionConfigurations:(void *)configurations
{
  if (configurations)
  {
    objc_setProperty_nonatomic(configurations, newValue, newValue, 184);
  }
}

- (void)setVideoPreviewSinkConnectionConfiguration:(void *)configuration
{
  if (configuration)
  {
    objc_setProperty_nonatomic(configuration, newValue, newValue, 192);
  }
}

- (void)setPreviewDerivedConnectionConfigurations:(void *)configurations
{
  if (configurations)
  {
    objc_setProperty_nonatomic(configurations, newValue, newValue, 200);
  }
}

- (void)setVideoCaptureConnectionConfigurations:(void *)configurations
{
  if (configurations)
  {
    objc_setProperty_nonatomic(configurations, newValue, newValue, 208);
  }
}

- (void)setStillImageConnectionConfiguration:(void *)configuration
{
  if (configuration)
  {
    objc_setProperty_nonatomic(configuration, newValue, newValue, 216);
  }
}

- (void)setDepthDataConnectionConfiguration:(void *)configuration
{
  if (configuration)
  {
    objc_setProperty_nonatomic(configuration, newValue, newValue, 224);
  }
}

- (void)setVisionDataConnectionConfigurations:(void *)configurations
{
  if (configurations)
  {
    objc_setProperty_nonatomic(configurations, newValue, newValue, 232);
  }
}

- (void)setMetadataObjectConnectionConfigurations:(void *)configurations
{
  if (configurations)
  {
    objc_setProperty_nonatomic(configurations, newValue, newValue, 240);
  }
}

- (void)setMovieFileDetectedObjectMetadataConnectionConfigurations:(void *)configurations
{
  if (configurations)
  {
    objc_setProperty_nonatomic(configurations, newValue, newValue, 248);
  }
}

- (void)setPointCloudDataConnectionConfigurations:(void *)configurations
{
  if (configurations)
  {
    objc_setProperty_nonatomic(configurations, newValue, newValue, 256);
  }
}

- (uint64_t)setClientIsCameraOrDerivative:(uint64_t)result
{
  if (result)
  {
    *(result + 264) = a2;
  }

  return result;
}

- (uint64_t)setDeferredTimeOfFlightNodePrepareEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 265) = a2;
  }

  return result;
}

- (uint64_t)setVideoHDRImageStatisticsEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 266) = a2;
  }

  return result;
}

- (uint64_t)setAdditionalVISOverscanWhenRecording:(uint64_t)result
{
  if (result)
  {
    *(result + 268) = a2;
  }

  return result;
}

- (uint64_t)setVideoSTFMetadataEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 272) = a2;
  }

  return result;
}

- (uint64_t)setPreviewMaxLossyCompressionLevel:(uint64_t)result
{
  if (result)
  {
    *(result + 276) = a2;
  }

  return result;
}

- (uint64_t)setVideoDataMaxLossyCompressionLevel:(uint64_t)result
{
  if (result)
  {
    *(result + 280) = a2;
  }

  return result;
}

- (uint64_t)setMovieFileMaxLossyCompressionLevel:(uint64_t)result
{
  if (result)
  {
    *(result + 284) = a2;
  }

  return result;
}

- (uint64_t)setStillImageMaxLossyCompressionLevel:(uint64_t)result
{
  if (result)
  {
    *(result + 288) = a2;
  }

  return result;
}

- (uint64_t)setDepthOutputEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 292) = a2;
  }

  return result;
}

- (uint64_t)setLumaHistogramsEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 293) = a2;
  }

  return result;
}

- (uint64_t)setContinuityCameraIsWired:(uint64_t)result
{
  if (result)
  {
    *(result + 294) = a2;
  }

  return result;
}

- (uint64_t)setContinuityCameraClientDeviceClass:(uint64_t)result
{
  if (result)
  {
    *(result + 296) = a2;
  }

  return result;
}

- (uint64_t)setClientIsVOIP:(uint64_t)result
{
  if (result)
  {
    *(result + 300) = a2;
  }

  return result;
}

- (uint64_t)setSuppressVideoEffects:(uint64_t)result
{
  if (result)
  {
    *(result + 301) = a2;
  }

  return result;
}

- (uint64_t)setZoomPIPSingleStreamModeEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 302) = a2;
  }

  return result;
}

- (uint64_t)setZoomPIPMinimumUIZoomFactor:(uint64_t)result
{
  if (result)
  {
    *(result + 304) = a2;
  }

  return result;
}

- (uint64_t)setZoomPIPSlaveStreamingFrameRate:(uint64_t)result
{
  if (result)
  {
    *(result + 308) = a2;
  }

  return result;
}

- (void)setPreferredMasterPortType:(void *)type
{
  if (type)
  {
    objc_setProperty_nonatomic(type, newValue, newValue, 312);
  }
}

- (uint64_t)setSmartStyleLearningEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 320) = a2;
  }

  return result;
}

- (uint64_t)setSmartStyleReversibilityEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 321) = a2;
  }

  return result;
}

- (void)setSmartStyle:(void *)style
{
  if (style)
  {
    objc_setProperty_nonatomic(style, newValue, newValue, 328);
  }
}

- (uint64_t)setRebuildingGraphForTrueVideoTransition:(uint64_t)result
{
  if (result)
  {
    *(result + 336) = a2;
  }

  return result;
}

- (uint64_t)setTrueVideoTransitionPreviousPhotoGraphZoomFactor:(uint64_t)result
{
  if (result)
  {
    *(result + 340) = a2;
  }

  return result;
}

- (uint64_t)setTargetFrameRateWhenNotRecording:(uint64_t)result
{
  if (result)
  {
    *(result + 344) = a2;
  }

  return result;
}

- (uint64_t)preLTMThumbnailEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 348));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setPreLTMThumbnailEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 348) = a2;
  }

  return result;
}

- (uint64_t)setPostLTMThumbnailEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 349) = a2;
  }

  return result;
}

- (uint64_t)setLtmThumbnailOutputDimensions:(uint64_t)result
{
  if (result)
  {
    *(result + 368) = a2;
  }

  return result;
}

- (uint64_t)setPostColorProcessingThumbnailEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 350) = a2;
  }

  return result;
}

- (uint64_t)setWeightSegmentMapEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 351) = a2;
  }

  return result;
}

- (uint64_t)setWeightSegmentMapNumberOfSegments:(uint64_t)result
{
  if (result)
  {
    *(result + 360) = a2;
  }

  return result;
}

- (uint64_t)setWeightSegmentMapSmoothingSigma:(uint64_t)result
{
  if (result)
  {
    *(result + 364) = a2;
  }

  return result;
}

- (uint64_t)setWeightSegmentMapOutputDimensions:(uint64_t)result
{
  if (result)
  {
    *(result + 376) = a2;
  }

  return result;
}

- (uint64_t)setSmartFramingEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 352) = a2;
  }

  return result;
}

- (uint64_t)lowLatencyStabilizationEnabledInSourcePipeline
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 353));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setLowLatencyStabilizationEnabledInSourcePipeline:(uint64_t)result
{
  if (result)
  {
    *(result + 353) = a2;
  }

  return result;
}

- (uint64_t)setStereoVideoCaptureEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 354) = a2;
  }

  return result;
}

- (uint64_t)setCaptureDimensionsForFSDNetSecondary:(uint64_t)result
{
  if (result)
  {
    *(result + 384) = a2;
  }

  return result;
}

- (uint64_t)setGraphContainsMultipleVideoSources:(uint64_t)result
{
  if (result)
  {
    *(result + 355) = a2;
  }

  return result;
}

- (uint64_t)setStructuredLightAFAssistEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 356) = a2;
  }

  return result;
}

- (uint64_t)setTemporalNoiseReductionStrengthHighEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 357) = a2;
  }

  return result;
}

- (uint64_t)setAudioMixWithOthersEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 358) = a2;
  }

  return result;
}

@end