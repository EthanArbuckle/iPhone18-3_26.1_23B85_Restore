@interface IrisStillImageSinkCommitMomentCaptureToStillImageCapture
@end

@implementation IrisStillImageSinkCommitMomentCaptureToStillImageCapture

void __captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *(*(a1 + 56) + 376);
  if (v4)
  {
    __captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_block_invoke_cold_1();
    goto LABEL_17;
  }

  v5 = [*(DerivedStorage + 784) stillImageSinkPipelineSessionStorageWithSinkID:*(a1 + 32)];
  v6 = [v5 primaryCameraSourcePipeline];
  [-[FigCaptureCameraSourcePipeline captureDevice](v6) nonDestructiveCropSize];
  [*(a1 + 40) setNonDestructiveCropSize:?];
  cs_updateSmartStyleSupport(*(a1 + 48), *(a1 + 40), [*(a1 + 40) movieRecordingSettings]);
  if (cs_touchDownMomentStillCaptureEnabled_onceToken != -1)
  {
    __captureSession_IrisStillImageSinkBeginMomentCapture_block_invoke_cold_2();
  }

  os_unfair_lock_lock((v3 + 384));
  v7 = [*(a1 + 40) settingsID];
  v8 = *(CMBaseObjectGetDerivedStorage() + 688);
  if (v8 < 1 || v8 != v7)
  {
LABEL_13:
    os_unfair_lock_unlock((v3 + 384));
    goto LABEL_14;
  }

  *(v3 + 688) = 0;
  if (!v5)
  {
    v17 = 0.0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (*(a1 + 64))
    {
      v13 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(*(a1 + 32), [*(a1 + 40) settingsID], 4294950896);
    }

    else
    {
      v13 = captureSession_notificationPayloadWithErrorStatus(*(a1 + 48), *(a1 + 72));
    }

    captureSession_postNotificationWithPayload(*(a1 + 48), @"IrisWillBeginCapture", v13);
    goto LABEL_13;
  }

  os_unfair_lock_unlock((v3 + 384));
  [-[FigCaptureCameraSourcePipeline captureDevice](v6) zoomFactor];
  v17 = v9;
  v10 = stillImageSinkPipelineSessionStorage_stillImageOutputDimensionsForSettings(v5, [v5 primaryStillImageSinkPipeline], *(a1 + 40), &v17);
  captureSession_updateOutputDimensionsAndResolutionFlavor(v10, v6, *(a1 + 40));
  BWUpdateThumbnailAndPreviewDimensionsForRequestedSettings(*(a1 + 40), v17);
  v11 = [objc_msgSend(objc_msgSend(v5 "primaryStillImageSinkPipeline")];
  if (!v11)
  {
    cs_IrisStillImageSinkPrepareMovieRecording(*(a1 + 48), *(a1 + 32), *(a1 + 40));
    goto LABEL_14;
  }

  v4 = v11;
  __captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_block_invoke_cold_3();
LABEL_17:
  v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v15 = objc_autoreleasePoolPush();
  if (*(a1 + 64))
  {
    v16 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(*(a1 + 32), [*(a1 + 40) settingsID], v4);
  }

  else
  {
    v16 = captureSession_notificationPayloadWithErrorStatus(*(a1 + 48), v4);
  }

  captureSession_postNotificationWithPayload(*(a1 + 48), @"IrisWillBeginCapture", v16);
  objc_autoreleasePoolPop(v15);
LABEL_14:
  *(v3 + 376) = 0;
}

uint64_t __captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_block_invoke_1412()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 376) = 0;
  return result;
}

@end