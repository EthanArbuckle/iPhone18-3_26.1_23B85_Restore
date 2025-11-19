@interface StillImageSinkPrepareToCaptureBracket
@end

@implementation StillImageSinkPrepareToCaptureBracket

void __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  v3 = a1[4];
  v4 = [*(CMBaseObjectGetDerivedStorage() + 784) stillImageSinkPipelineSessionStorageWithSinkID:v3];
  v5 = [v4 primaryStillImageSinkPipeline];
  v6 = [v5 stillImageCoordinatorNode];
  if (_FigIsCurrentDispatchQueue())
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke_cold_5(&v13);
    goto LABEL_11;
  }

  __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke_cold_1();
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v6)
  {
    if ([v3 isEqualToString:{objc_msgSend(v5, "sinkID")}])
    {
      [v2 setClientInitiatedPrepareSettings:1];
      [-[FigCaptureCameraSourcePipeline captureDevice](objc_msgSend(v4 "primaryCameraSourcePipeline"))];
      v13 = v7;
      v8 = stillImageSinkPipelineSessionStorage_stillImageOutputDimensionsForSettings(v4, v5, v2, &v13);
      v9 = HIDWORD(v8);
      [v2 setOutputWidth:v8];
      [v2 setOutputHeight:v9];
      BWUpdateThumbnailAndPreviewDimensionsForRequestedSettings(v2, v13);
      v10 = [v6 prepareStillImageCaptureNowWithSettings:v2];
      if (!v10)
      {
        return;
      }

      v11 = v10;
      __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke_cold_3();
LABEL_14:
      v12 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(v3, [v2 settingsID], v11);
      captureSession_postNotificationWithPayload(v1, @"BracketPreparationComplete", v12);
      return;
    }

    __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke_cold_2(&v13);
  }

  else
  {
    __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke_cold_4(&v13);
  }

LABEL_11:
  v11 = LODWORD(v13);
  if (v13 != 0.0)
  {
    goto LABEL_14;
  }
}

uint64_t __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __captureSession_StillImageSinkPrepareToCaptureBracket_block_invoke_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end