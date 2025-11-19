@interface FigCaptureMovieFileSinkPipelineConfiguration
- (__n128)setLensSmudgeDetectionConfiguration:(uint64_t)a1;
- (uint64_t)audioConnectionConfiguration;
- (uint64_t)boxedMetadataPostVISEnabled;
- (uint64_t)captureDeviceHasOverCaptureEnabled;
- (uint64_t)primaryCameraConfiguration;
- (uint64_t)setBoxedMetadataPostVISEnabled:(uint64_t)result;
- (uint64_t)setCaptureDeviceHasOverCaptureEnabled:(uint64_t)result;
- (uint64_t)setCinematicAudioEnabled:(uint64_t)result;
- (uint64_t)setDepthDataDeliveryEnabled:(uint64_t)result;
- (uint64_t)setDepthOutputDimensions:(uint64_t)result;
- (uint64_t)setFrameReconstructionEnabled:(uint64_t)result;
- (uint64_t)setIspFastSwitchEnabled:(uint64_t)result;
- (uint64_t)setLightSourceMaskAndKeypointDescriptorDataEnabled:(uint64_t)result;
- (uint64_t)setLowLatencyStabilizationEnabled:(uint64_t)result;
- (uint64_t)setLowResImageUsedByVideoEncoderEnabled:(uint64_t)result;
- (uint64_t)setMaxLossyCompressionLevel:(uint64_t)result;
- (uint64_t)setMaximumAllowedInFlightCompressedBytes:(uint64_t)result;
- (uint64_t)setOfflineVISEnabled:(uint64_t)result;
- (uint64_t)setOverCaptureEnabled:(uint64_t)result;
- (uint64_t)setP3ToBT2020ConversionEnabled:(uint64_t)result;
- (uint64_t)setProResRawCaptureEnabled:(uint64_t)result;
- (uint64_t)setSemanticStyleRenderingEnabled:(uint64_t)result;
- (uint64_t)setSmartCameraPipelineVersion:(uint64_t)result;
- (uint64_t)setSmartStyleRenderingEnabled:(uint64_t)result;
- (uint64_t)setSmartStyleRenderingMethod:(uint64_t)result;
- (uint64_t)setSmartStyleReversibilityEnabled:(uint64_t)result;
- (uint64_t)setTrueVideoCaptureEnabled:(uint64_t)result;
- (uint64_t)setVideoGreenGhostMitigationEnabled:(uint64_t)result;
- (uint64_t)setVideoGreenGhostOfflineLightSourceMaskEnabled:(uint64_t)result;
- (uint64_t)setVideoGreenGhostOfflineMetadataEnabled:(uint64_t)result;
- (uint64_t)setVideoSTFEnabled:(uint64_t)result;
- (uint64_t)setVideoSourceCaptureTransform:(uint64_t)a3;
- (uint64_t)setVitalityScoringEnabled:(uint64_t)result;
- (uint64_t)smartStyleRenderingEnabled;
- (uint64_t)trueVideoCaptureEnabled;
- (uint64_t)videoConnectionConfigurations;
- (uint64_t)videoGreenGhostOfflineMetadataEnabled;
- (uint64_t)videoSourceCaptureTransform;
- (void)dealloc;
- (void)setAudioConnectionConfiguration:(void *)a1;
- (void)setCameraDebugInfoMetadataConnectionConfiguration:(void *)a1;
- (void)setClientApplicationID:(void *)a1;
- (void)setDepthDataConnectionConfiguration:(void *)a1;
- (void)setDetectedObjectMetadataConnectionConfigurations:(void *)a1;
- (void)setPortTypesWithGeometricDistortionCorrectionInVISEnabled:(void *)a1;
- (void)setPrimaryCameraConfiguration:(void *)a1;
- (void)setPrimaryVideoConnectionConfiguration:(void *)a1;
- (void)setSceneClassifierConnectionConfiguration:(void *)a1;
- (void)setStillImageConnectionConfiguration:(void *)a1;
- (void)setVideoConnectionConfigurations:(void *)a1;
- (void)setVisConfigurationsByConnectionID:(void *)a1;
@end

@implementation FigCaptureMovieFileSinkPipelineConfiguration

- (uint64_t)primaryCameraConfiguration
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)audioConnectionConfiguration
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)captureDeviceHasOverCaptureEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 137));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)smartStyleRenderingEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 210));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)videoConnectionConfigurations
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)videoSourceCaptureTransform
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (uint64_t)boxedMetadataPostVISEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 112));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)trueVideoCaptureEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 151));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMovieFileSinkPipelineConfiguration;
  [(FigCaptureMovieFileSinkPipelineConfiguration *)&v3 dealloc];
}

- (void)setPrimaryCameraConfiguration:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic(a1, newValue, newValue, 8);
  }
}

- (void)setPrimaryVideoConnectionConfiguration:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic(a1, newValue, newValue, 16);
  }
}

- (void)setVideoConnectionConfigurations:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic(a1, newValue, newValue, 24);
  }
}

- (void)setAudioConnectionConfiguration:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic(a1, newValue, newValue, 32);
  }
}

- (void)setCameraDebugInfoMetadataConnectionConfiguration:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic(a1, newValue, newValue, 40);
  }
}

- (void)setDetectedObjectMetadataConnectionConfigurations:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic(a1, newValue, newValue, 48);
  }
}

- (void)setDepthDataConnectionConfiguration:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic(a1, newValue, newValue, 56);
  }
}

- (uint64_t)setDepthOutputDimensions:(uint64_t)result
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

- (void)setStillImageConnectionConfiguration:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic(a1, newValue, newValue, 72);
  }
}

- (void)setSceneClassifierConnectionConfiguration:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic(a1, newValue, newValue, 80);
  }
}

- (uint64_t)setVideoSourceCaptureTransform:(uint64_t)a3
{
  if (result)
  {
    *(result + 88) = a2;
    *(result + 96) = a3;
  }

  return result;
}

- (void)setVisConfigurationsByConnectionID:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 104);
  }
}

- (uint64_t)setBoxedMetadataPostVISEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 112) = a2;
  }

  return result;
}

- (uint64_t)setSmartCameraPipelineVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 114) = a2;
    *(result + 118) = WORD2(a2);
  }

  return result;
}

- (uint64_t)setOfflineVISEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 120) = a2;
  }

  return result;
}

- (void)setPortTypesWithGeometricDistortionCorrectionInVISEnabled:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic(a1, newValue, newValue, 128);
  }
}

- (uint64_t)setP3ToBT2020ConversionEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 141) = a2;
  }

  return result;
}

- (uint64_t)setMaxLossyCompressionLevel:(uint64_t)result
{
  if (result)
  {
    *(result + 144) = a2;
  }

  return result;
}

- (uint64_t)setVideoSTFEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 148) = a2;
  }

  return result;
}

- (uint64_t)setVideoGreenGhostMitigationEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 149) = a2;
  }

  return result;
}

- (uint64_t)setVitalityScoringEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 136) = a2;
  }

  return result;
}

- (uint64_t)setCaptureDeviceHasOverCaptureEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 137) = a2;
  }

  return result;
}

- (uint64_t)setOverCaptureEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 138) = a2;
  }

  return result;
}

- (uint64_t)setDepthDataDeliveryEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 208) = a2;
  }

  return result;
}

- (uint64_t)setFrameReconstructionEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 139) = a2;
  }

  return result;
}

- (uint64_t)setSemanticStyleRenderingEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 140) = a2;
  }

  return result;
}

- (uint64_t)setIspFastSwitchEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 150) = a2;
  }

  return result;
}

- (uint64_t)setTrueVideoCaptureEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 151) = a2;
  }

  return result;
}

- (uint64_t)setCinematicAudioEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 152) = a2;
  }

  return result;
}

- (void)setClientApplicationID:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic(a1, newValue, newValue, 160);
  }
}

- (uint64_t)setMaximumAllowedInFlightCompressedBytes:(uint64_t)result
{
  if (result)
  {
    *(result + 168) = a2;
  }

  return result;
}

- (uint64_t)setLightSourceMaskAndKeypointDescriptorDataEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 176) = a2;
  }

  return result;
}

- (uint64_t)setLowResImageUsedByVideoEncoderEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 209) = a2;
  }

  return result;
}

- (__n128)setLensSmudgeDetectionConfiguration:(uint64_t)a1
{
  if (a1)
  {
    result = *a2;
    *(a1 + 192) = *(a2 + 12);
    *(a1 + 180) = result;
  }

  return result;
}

- (uint64_t)setSmartStyleRenderingEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 210) = a2;
  }

  return result;
}

- (uint64_t)setSmartStyleReversibilityEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 211) = a2;
  }

  return result;
}

- (uint64_t)setSmartStyleRenderingMethod:(uint64_t)result
{
  if (result)
  {
    *(result + 216) = a2;
  }

  return result;
}

- (uint64_t)videoGreenGhostOfflineMetadataEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 212));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)setVideoGreenGhostOfflineMetadataEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 212) = a2;
  }

  return result;
}

- (uint64_t)setVideoGreenGhostOfflineLightSourceMaskEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 213) = a2;
  }

  return result;
}

- (uint64_t)setLowLatencyStabilizationEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 214) = a2;
  }

  return result;
}

- (uint64_t)setProResRawCaptureEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 215) = a2;
  }

  return result;
}

@end