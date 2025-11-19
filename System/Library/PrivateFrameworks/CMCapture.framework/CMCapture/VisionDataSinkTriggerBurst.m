@interface VisionDataSinkTriggerBurst
@end

@implementation VisionDataSinkTriggerBurst

uint64_t __captureSession_VisionDataSinkTriggerBurst_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    __captureSession_VisionDataSinkTriggerBurst_block_invoke_cold_1();
  }

  v3 = [*(DerivedStorage + 784) visionDataSinkPipelineWithSinkID:v1];
  if (!v3)
  {
    return __captureSession_VisionDataSinkTriggerBurst_block_invoke_cold_2();
  }

  return [(FigCaptureVisionDataSinkPipeline *)v3 triggerVisionDataBurst];
}

uint64_t __captureSession_VisionDataSinkTriggerBurst_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __captureSession_VisionDataSinkTriggerBurst_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_9_38();
  FigDebugAssert3();

  return FigSignalErrorAtGM();
}

@end