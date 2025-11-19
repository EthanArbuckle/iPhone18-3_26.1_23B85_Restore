@interface FigCaptureMovieFileSinkPipelineVISConfiguration
- (uint64_t)setMotionAttachmentsSource:(uint64_t)result;
- (uint64_t)setVideoStabilizationOverscanOverride:(uint64_t)result;
- (uint64_t)setVideoStabilizationStrength:(uint64_t)result;
- (uint64_t)setVideoStabilizationType:(uint64_t)result;
- (uint64_t)setVisGeneratedTransformsOutputDimensionsOverride:(uint64_t)result;
- (uint64_t)setVisOutputDimensions:(uint64_t)result;
- (void)dealloc;
- (void)setVisProcessingSemaphore:(void *)result;
@end

@implementation FigCaptureMovieFileSinkPipelineVISConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMovieFileSinkPipelineVISConfiguration;
  [(FigCaptureMovieFileSinkPipelineVISConfiguration *)&v3 dealloc];
}

- (void)setVisProcessingSemaphore:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[4];
    if (v4 != a2)
    {

      result = a2;
      v3[4] = result;
    }
  }

  return result;
}

- (uint64_t)setVisOutputDimensions:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setVideoStabilizationType:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setVideoStabilizationStrength:(uint64_t)result
{
  if (result)
  {
    *(result + 20) = a2;
  }

  return result;
}

- (uint64_t)setMotionAttachmentsSource:(uint64_t)result
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

- (uint64_t)setVideoStabilizationOverscanOverride:(uint64_t)result
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

- (uint64_t)setVisGeneratedTransformsOutputDimensionsOverride:(uint64_t)result
{
  if (result)
  {
    *(result + 44) = a2;
  }

  return result;
}

@end