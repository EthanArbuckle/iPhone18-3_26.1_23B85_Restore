@interface IrisStillImageSinkCancelMomentCapture
@end

@implementation IrisStillImageSinkCancelMomentCapture

uint64_t __captureSession_IrisStillImageSinkCancelMomentCapture_block_invoke(uint64_t *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = [*(DerivedStorage + 784) stillImageSinkPipelineSessionStorageWithSinkID:a1[4]];
  v4 = -[FigCaptureCameraSourcePipeline captureDevice]([v3 primaryCameraSourcePipeline]);
  if (*(DerivedStorage + 376))
  {
    goto LABEL_12;
  }

  if (cs_touchDownMomentStillCaptureEnabled_onceToken != -1)
  {
    __captureSession_IrisStillImageSinkBeginMomentCapture_block_invoke_cold_2();
  }

  os_unfair_lock_lock((a1[6] + 384));
  v5 = a1[7];
  v6 = *(CMBaseObjectGetDerivedStorage() + 688);
  if (v6 >= 1 && v6 == v5)
  {
    v9 = a1[6];
    *(v9 + 688) = 0;
    os_unfair_lock_unlock((v9 + 384));
    v10 = [objc_msgSend(objc_msgSend(v3 "primaryStillImageSinkPipeline")];
    if (v10)
    {
      v11 = v10;
      FigDebugAssert3();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_14;
    }
  }

  else
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    os_unfair_lock_unlock((a1[6] + 384));
  }

  if (*(DerivedStorage + 376))
  {
LABEL_12:
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = 0;
LABEL_14:
  v14 = objc_autoreleasePoolPush();
  if (a1[8])
  {
    v15 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a1[4], a1[7], v11);
  }

  else
  {
    v15 = captureSession_notificationPayloadWithErrorStatus(a1[5], v11);
  }

  captureSession_postNotificationWithPayload(a1[5], @"DidCancelMomentCapture", v15);
  objc_autoreleasePoolPop(v14);
  [v4 setAutomaticallyAdjustsTorch:0];
  result = [v4 setTorchLevel:0.0];
  *(DerivedStorage + 376) = 0;
  return result;
}

uint64_t __captureSession_IrisStillImageSinkCancelMomentCapture_block_invoke_1418()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 376) = 0;
  return result;
}

@end