@interface FigCaptureMetadataSinkPipelineConfiguration
- (__n128)setLensSmudgeDetectionConfiguration:(uint64_t)a1;
- (uint64_t)compressed8BitInputEnabled;
- (uint64_t)setCompressed8BitInputEnabled:(uint64_t)result;
- (uint64_t)setInputRotationRelativeToSource:(uint64_t)result;
- (uint64_t)setMotionAttachmentsSource:(uint64_t)result;
- (uint64_t)setMrcLowPowerModeEnabled:(uint64_t)result;
- (uint64_t)setPreviewEnabled:(uint64_t)result;
- (uint64_t)setSmartCameraPipelineVersion:(uint64_t)result;
- (uint64_t)setUseSceneClassifierToGateMetadataDetection:(uint64_t)result;
- (uint64_t)setVitalityScoringEnabled:(uint64_t)result;
- (void)dealloc;
@end

@implementation FigCaptureMetadataSinkPipelineConfiguration

- (uint64_t)compressed8BitInputEnabled
{
  if (a1)
  {
    return OUTLINED_FUNCTION_5_27(*(a1 + 49));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMetadataSinkPipelineConfiguration;
  [(FigCaptureMetadataSinkPipelineConfiguration *)&v3 dealloc];
}

- (uint64_t)setMrcLowPowerModeEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

- (uint64_t)setUseSceneClassifierToGateMetadataDetection:(uint64_t)result
{
  if (result)
  {
    *(result + 33) = a2;
  }

  return result;
}

- (uint64_t)setSmartCameraPipelineVersion:(uint64_t)result
{
  if (result)
  {
    *(result + 34) = a2;
    *(result + 38) = WORD2(a2);
  }

  return result;
}

- (uint64_t)setVitalityScoringEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

- (uint64_t)setPreviewEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 41) = a2;
  }

  return result;
}

- (uint64_t)setMotionAttachmentsSource:(uint64_t)result
{
  if (result)
  {
    *(result + 44) = a2;
  }

  return result;
}

- (uint64_t)setCompressed8BitInputEnabled:(uint64_t)result
{
  if (result)
  {
    *(result + 49) = a2;
  }

  return result;
}

- (__n128)setLensSmudgeDetectionConfiguration:(uint64_t)a1
{
  if (a1)
  {
    result = *a2;
    *(a1 + 76) = *(a2 + 12);
    *(a1 + 64) = result;
  }

  return result;
}

- (uint64_t)setInputRotationRelativeToSource:(uint64_t)result
{
  if (result)
  {
    *(result + 96) = a2;
  }

  return result;
}

@end