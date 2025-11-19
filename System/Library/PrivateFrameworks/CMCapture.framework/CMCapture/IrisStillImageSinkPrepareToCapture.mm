@interface IrisStillImageSinkPrepareToCapture
@end

@implementation IrisStillImageSinkPrepareToCapture

void __captureSession_IrisStillImageSinkPrepareToCapture_block_invoke(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  v3 = a1[4];
  v4 = [*(CMBaseObjectGetDerivedStorage() + 784) stillImageSinkPipelineSessionStorageWithSinkID:v3];
  v5 = [v4 primaryStillImageSinkPipeline];
  v6 = [v5 stillImageCoordinatorNode];
  v7 = [v4 primaryCameraSourcePipeline];
  if (_FigIsCurrentDispatchQueue())
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    __captureSession_IrisStillImageSinkPrepareToCapture_block_invoke_cold_5(&v14);
    goto LABEL_11;
  }

  __captureSession_IrisStillImageSinkPrepareToCapture_block_invoke_cold_1();
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v6)
  {
    if ([v3 isEqualToString:{objc_msgSend(v5, "sinkID")}])
    {
      v8 = [v2 figCaptureStillImageSettingsRepresentation];
      [v8 setClientInitiatedPrepareSettings:1];
      [-[FigCaptureCameraSourcePipeline captureDevice](v7) zoomFactor];
      v14 = v9;
      v10 = stillImageSinkPipelineSessionStorage_stillImageOutputDimensionsForSettings(v4, v5, v8, &v14);
      captureSession_updateOutputDimensionsAndResolutionFlavor(v10, v7, v8);
      BWUpdateThumbnailAndPreviewDimensionsForRequestedSettings(v8, v14);
      v11 = [v6 prepareStillImageCaptureNowWithSettings:v8];
      if (!v11)
      {
        return;
      }

      v12 = v11;
      __captureSession_IrisStillImageSinkPrepareToCapture_block_invoke_cold_3();
LABEL_14:
      v13 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(v3, [v2 settingsID], v12);
      captureSession_postNotificationWithPayload(v1, @"IrisPreparationComplete", v13);
      return;
    }

    __captureSession_IrisStillImageSinkPrepareToCapture_block_invoke_cold_2(&v14);
  }

  else
  {
    __captureSession_IrisStillImageSinkPrepareToCapture_block_invoke_cold_4(&v14);
  }

LABEL_11:
  v12 = LODWORD(v14);
  if (v14 != 0.0)
  {
    goto LABEL_14;
  }
}

uint64_t __captureSession_IrisStillImageSinkPrepareToCapture_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __captureSession_IrisStillImageSinkPrepareToCapture_block_invoke_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __captureSession_IrisStillImageSinkPrepareToCapture_block_invoke_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __captureSession_IrisStillImageSinkPrepareToCapture_block_invoke_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end