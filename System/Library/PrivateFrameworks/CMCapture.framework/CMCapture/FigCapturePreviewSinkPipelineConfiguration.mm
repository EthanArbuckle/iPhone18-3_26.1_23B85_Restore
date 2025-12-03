@interface FigCapturePreviewSinkPipelineConfiguration
- (__n128)setClientAuditToken:(uint64_t)token;
- (__n128)setLensSmudgeDetectionConfiguration:(uint64_t)configuration;
- (uint64_t)setCinematicVideoEnabled:(uint64_t)result;
- (uint64_t)setClientIsCameraOrDerivative:(uint64_t)result;
- (uint64_t)setCoreMediaFaceTrackingEnabled:(uint64_t)result;
- (uint64_t)setDeferredPrepareEnabled:(uint64_t)result;
- (uint64_t)setFocusBlurMapForDepthFiltersEnabled:(uint64_t)result;
- (uint64_t)setGeneratesHistogram:(uint64_t)result;
- (uint64_t)setIspFastSwitchEnabled:(uint64_t)result;
- (uint64_t)setLowLatencyStabilizationEnabled:(uint64_t)result;
- (uint64_t)setMaxLossyCompressionLevel:(uint64_t)result;
- (uint64_t)setParallelGraphRebuildEnabled:(uint64_t)result;
- (uint64_t)setPocketDetectionEnabled:(uint64_t)result;
- (uint64_t)setPreallocatePreviewStitcherOutputBufferPool:(uint64_t)result;
- (uint64_t)setPreviewStabilizationEnabled:(uint64_t)result;
- (uint64_t)setRebuildingGraphForTrueVideoTransition:(uint64_t)result;
- (uint64_t)setSceneClassifierPipelineVersion:(uint64_t)result;
- (uint64_t)setSmartCameraMotionDetectionEnabled:(uint64_t)result;
- (uint64_t)setSmartStyleRenderingEnabled:(uint64_t)result;
- (uint64_t)setSmartStyleRenderingMethod:(uint64_t)result;
- (uint64_t)setSourceColorSpaceProperties:(uint64_t)result;
- (uint64_t)setSourceIsBravoDevice:(uint64_t)result;
- (uint64_t)setSourcePixelFormatIsFullRange:(uint64_t)result;
- (uint64_t)setTrueVideoCaptureAdditionalZoomFactor:(uint64_t)result;
- (uint64_t)setVideoHDRImageStatisticsEnabled:(uint64_t)result;
- (uint64_t)setVideoStabilizationOverscan:(uint64_t)result;
- (uint64_t)setZoomPIPMinimumUIZoomFactor:(uint64_t)result;
- (uint64_t)setZoomPIPSingleStreamModeEnabled:(uint64_t)result;
- (uint64_t)setZoomPIPSlaveStreamingFrameRate:(uint64_t)result;
- (void)dealloc;
- (void)setMetadataObjectConnectionConfiguration:(void *)configuration;
@end

@implementation FigCapturePreviewSinkPipelineConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCapturePreviewSinkPipelineConfiguration;
  [(FigCapturePreviewSinkPipelineConfiguration *)&v3 dealloc];
}

- (void)setMetadataObjectConnectionConfiguration:(void *)configuration
{
  if (configuration)
  {
    objc_setProperty_nonatomic(configuration, newValue, newValue, 64);
  }
}

- (uint64_t)setSceneClassifierPipelineVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 80) = a2;
    *(result + 84) = WORD2(a2);
  }

  return result;
}

- (uint64_t)setSourceColorSpaceProperties:(uint64_t)result
{
  if (result)
  {
    *(result + 88) = a2;
  }

  return result;
}

- (uint64_t)setSourcePixelFormatIsFullRange:(uint64_t)result
{
  if (result)
  {
    *(result + 92) = a2;
  }

  return result;
}

- (uint64_t)setSourceIsBravoDevice:(uint64_t)result
{
  if (result)
  {
    *(result + 93) = a2;
  }

  return result;
}

- (uint64_t)setClientIsCameraOrDerivative:(uint64_t)result
{
  if (result)
  {
    *(result + 94) = a2;
  }

  return result;
}

- (__n128)setClientAuditToken:(uint64_t)token
{
  if (token)
  {
    result = *a2;
    v3 = *(a2 + 16);
    *(token + 96) = *a2;
    *(token + 112) = v3;
  }

  return result;
}

- (uint64_t)setVideoStabilizationOverscan:(uint64_t)result
{
  if (result)
  {
    *(result + 136) = a2;
  }

  return result;
}

- (uint64_t)setTrueVideoCaptureAdditionalZoomFactor:(uint64_t)result
{
  if (result)
  {
    *(result + 152) = a2;
  }

  return result;
}

- (uint64_t)setFocusBlurMapForDepthFiltersEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 160) = a2;
  }

  return result;
}

- (uint64_t)setSmartCameraMotionDetectionEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 161) = a2;
  }

  return result;
}

- (uint64_t)setGeneratesHistogram:(uint64_t)result
{
  if (result)
  {
    *(result + 162) = a2;
  }

  return result;
}

- (uint64_t)setMaxLossyCompressionLevel:(uint64_t)result
{
  if (result)
  {
    *(result + 164) = a2;
  }

  return result;
}

- (uint64_t)setCinematicVideoEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 163) = a2;
  }

  return result;
}

- (uint64_t)setVideoHDRImageStatisticsEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 168) = a2;
  }

  return result;
}

- (uint64_t)setZoomPIPSingleStreamModeEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 169) = a2;
  }

  return result;
}

- (uint64_t)setZoomPIPMinimumUIZoomFactor:(uint64_t)result
{
  if (result)
  {
    *(result + 172) = a2;
  }

  return result;
}

- (uint64_t)setZoomPIPSlaveStreamingFrameRate:(uint64_t)result
{
  if (result)
  {
    *(result + 176) = a2;
  }

  return result;
}

- (uint64_t)setPreallocatePreviewStitcherOutputBufferPool:(uint64_t)result
{
  if (result)
  {
    *(result + 180) = a2;
  }

  return result;
}

- (uint64_t)setPreviewStabilizationEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 181) = a2;
  }

  return result;
}

- (uint64_t)setLowLatencyStabilizationEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 182) = a2;
  }

  return result;
}

- (uint64_t)setPocketDetectionEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 183) = a2;
  }

  return result;
}

- (uint64_t)setSmartStyleRenderingEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 184) = a2;
  }

  return result;
}

- (uint64_t)setParallelGraphRebuildEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 185) = a2;
  }

  return result;
}

- (uint64_t)setIspFastSwitchEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 186) = a2;
  }

  return result;
}

- (uint64_t)setRebuildingGraphForTrueVideoTransition:(uint64_t)result
{
  if (result)
  {
    *(result + 187) = a2;
  }

  return result;
}

- (__n128)setLensSmudgeDetectionConfiguration:(uint64_t)configuration
{
  if (configuration)
  {
    result = *a2;
    *(configuration + 200) = *(a2 + 12);
    *(configuration + 188) = result;
  }

  return result;
}

- (uint64_t)setDeferredPrepareEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 224) = a2;
  }

  return result;
}

- (uint64_t)setSmartStyleRenderingMethod:(uint64_t)result
{
  if (result)
  {
    *(result + 228) = a2;
  }

  return result;
}

- (uint64_t)setCoreMediaFaceTrackingEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 225) = a2;
  }

  return result;
}

@end