@interface IrisStillImageSinkBeginMomentCapture
@end

@implementation IrisStillImageSinkBeginMomentCapture

void __captureSession_IrisStillImageSinkBeginMomentCapture_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = [objc_msgSend(*(DerivedStorage + 784) stillImageSinkPipelineSessionStorageWithSinkID:{*(a1 + 32)), "primaryCameraSourcePipeline"}];
  *(DerivedStorage + 376) = 0;
  os_unfair_lock_lock((DerivedStorage + 384));
  if (*(DerivedStorage + 688))
  {
    __captureSession_IrisStillImageSinkBeginMomentCapture_block_invoke_cold_1();
  }

  *(DerivedStorage + 688) = [*(a1 + 40) settingsID];
  os_unfair_lock_unlock((DerivedStorage + 384));
  if (cs_touchDownMomentStillCaptureEnabled_onceToken != -1)
  {
    __captureSession_IrisStillImageSinkBeginMomentCapture_block_invoke_cold_2();
  }

  v4 = [*(a1 + 40) stillImageSettings];
  if (!v4)
  {
    v7 = -[FigCaptureStillImageSettings initWithSettingsID:captureRequestIdentifier:]([FigCaptureIrisStillImageSettings alloc], "initWithSettingsID:captureRequestIdentifier:", [*(a1 + 40) settingsID], objc_msgSend(*(a1 + 40), "captureRequestIdentifier"));
    -[FigCaptureStillImageSettings setStillImageUserInitiatedRequestTime:](v7, "setStillImageUserInitiatedRequestTime:", [*(a1 + 40) userInitiatedCaptureTime]);
    -[FigCaptureStillImageSettings setFlashMode:](v7, "setFlashMode:", [*(a1 + 40) flashMode]);
    -[FigCaptureStillImageSettings setAutoRedEyeReductionEnabled:](v7, "setAutoRedEyeReductionEnabled:", [*(a1 + 40) autoRedEyeReductionEnabled]);
    -[FigCaptureStillImageSettings setDigitalFlashMode:](v7, "setDigitalFlashMode:", [*(a1 + 40) digitalFlashMode]);
    -[FigCaptureStillImageSettings setQualityPrioritization:](v7, "setQualityPrioritization:", [*(a1 + 40) qualityPrioritization]);
    -[FigCaptureStillImageSettings setClientQualityPrioritization:](v7, "setClientQualityPrioritization:", [*(a1 + 40) clientQualityPrioritization]);
    -[FigCaptureStillImageSettings setHDRMode:](v7, "setHDRMode:", [*(a1 + 40) HDRMode]);
    -[FigCaptureStillImageSettings setProvidesOriginalImage:](v7, "setProvidesOriginalImage:", [*(a1 + 40) isAutoOriginalPhotoDeliveryEnabled]);
    -[FigCaptureStillImageSettings setAutoDeferredProcessingEnabled:](v7, "setAutoDeferredProcessingEnabled:", [*(a1 + 40) isAutoDeferredProcessingEnabled]);
    -[FigCaptureStillImageSettings setRawOutputFormat:](v7, "setRawOutputFormat:", [*(a1 + 40) rawOutputFormat]);
    -[FigCaptureStillImageSettings setOutputWidth:](v7, "setOutputWidth:", [*(a1 + 40) outputWidth]);
    -[FigCaptureStillImageSettings setOutputHeight:](v7, "setOutputHeight:", [*(a1 + 40) outputHeight]);
    -[FigCaptureStillImageSettings setDepthDataDeliveryEnabled:](v7, "setDepthDataDeliveryEnabled:", [*(a1 + 40) depthDataDeliveryEnabled]);
    v4 = v7;
  }

  v8 = v4;
  [(FigCaptureStillImageSettings *)v4 setSettingsProvider:1];
  [(FigCaptureStillImageSettings *)v8 setBeginMomentCaptureSettings:1];
  [(FigCaptureStillImageSettings *)v8 setStillImageRequestTime:*(a1 + 56)];
  captureSession_updateOutputDimensionsAndResolutionFlavor([(FigCaptureStillImageSettings *)v8 outputWidth]| ([(FigCaptureStillImageSettings *)v8 outputHeight]<< 32), v3, v8);
  v5 = captureSession_captureStillImageNow(*(a1 + 48), *(a1 + 32), v8);
  v6 = v5;
  if (v5)
  {
    __captureSession_IrisStillImageSinkBeginMomentCapture_block_invoke_cold_3(v5, (DerivedStorage + 384), (DerivedStorage + 688));
  }

  *(DerivedStorage + 376) = v6;
}

uint64_t __captureSession_IrisStillImageSinkBeginMomentCapture_block_invoke_2(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 376) = *(a1 + 40);
  return result;
}

uint64_t __captureSession_IrisStillImageSinkBeginMomentCapture_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

void __captureSession_IrisStillImageSinkBeginMomentCapture_block_invoke_cold_3(uint64_t a1, os_unfair_lock_s *a2, void *a3)
{
  OUTLINED_FUNCTION_1_5();
  FigDebugAssert3();
  os_unfair_lock_lock(a2);
  *a3 = 0;

  os_unfair_lock_unlock(a2);
}

@end