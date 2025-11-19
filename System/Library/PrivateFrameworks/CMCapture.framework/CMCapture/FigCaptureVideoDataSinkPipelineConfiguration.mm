@interface FigCaptureVideoDataSinkPipelineConfiguration
- (uint64_t)setCenterStageFramingMode:(uint64_t)result;
- (uint64_t)setFaceTrackingEnabled:(uint64_t)result;
- (uint64_t)setForcePixelTransfer:(uint64_t)result;
- (uint64_t)setOfflineVISMotionDataEnabled:(uint64_t)result;
- (uint64_t)setSimulatedAperture:(uint64_t)result;
- (uint64_t)setSmartStyleRenderingMethod:(uint64_t)result;
- (uint64_t)setSourceDeviceType:(uint64_t)result;
- (uint64_t)setSourceVideoTransform:(uint64_t)a3;
- (uint64_t)setVideoSTFEnabled:(uint64_t)result;
- (uint64_t)setVisGeneratedTransformsOutputDimensionsOverride:(uint64_t)result;
- (uint64_t)setVisOutputDimensions:(uint64_t)result;
- (uint64_t)sourceDeviceType;
- (void)dealloc;
@end

@implementation FigCaptureVideoDataSinkPipelineConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureVideoDataSinkPipelineConfiguration;
  [(FigCaptureVideoDataSinkPipelineConfiguration *)&v3 dealloc];
}

- (uint64_t)setSourceVideoTransform:(uint64_t)a3
{
  if (result)
  {
    *(result + 8) = a2;
    *(result + 16) = a3;
  }

  return result;
}

- (uint64_t)setFaceTrackingEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 36) = a2;
  }

  return result;
}

- (uint64_t)setOfflineVISMotionDataEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 37) = a2;
  }

  return result;
}

- (uint64_t)sourceDeviceType
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (uint64_t)setSourceDeviceType:(uint64_t)result
{
  if (result)
  {
    *(result + 72) = a2;
  }

  return result;
}

- (uint64_t)setVisOutputDimensions:(uint64_t)result
{
  if (result)
  {
    *(result + 76) = a2;
  }

  return result;
}

- (uint64_t)setForcePixelTransfer:(uint64_t)result
{
  if (result)
  {
    *(result + 60) = a2;
  }

  return result;
}

- (uint64_t)setVideoSTFEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 61) = a2;
  }

  return result;
}

- (uint64_t)setCenterStageFramingMode:(uint64_t)result
{
  if (result)
  {
    *(result + 136) = a2;
  }

  return result;
}

- (uint64_t)setSimulatedAperture:(uint64_t)result
{
  if (result)
  {
    *(result + 152) = a2;
  }

  return result;
}

- (uint64_t)setVisGeneratedTransformsOutputDimensionsOverride:(uint64_t)result
{
  if (result)
  {
    *(result + 188) = a2;
  }

  return result;
}

- (uint64_t)setSmartStyleRenderingMethod:(uint64_t)result
{
  if (result)
  {
    *(result + 172) = a2;
  }

  return result;
}

@end