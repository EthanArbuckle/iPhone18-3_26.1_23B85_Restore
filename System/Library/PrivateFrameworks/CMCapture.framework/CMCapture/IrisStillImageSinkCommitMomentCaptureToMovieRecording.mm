@interface IrisStillImageSinkCommitMomentCaptureToMovieRecording
@end

@implementation IrisStillImageSinkCommitMomentCaptureToMovieRecording

void __captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 376);
  if (v4)
  {
    FigDebugAssert3();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v14 = objc_autoreleasePoolPush();
    if (*(a1 + 72))
    {
      v15 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(*(a1 + 32), [*(a1 + 40) settingsID], v4);
    }

    else
    {
      v15 = captureSession_notificationPayloadWithErrorStatus(*(a1 + 48), v4);
    }

    captureSession_postNotificationWithPayload(*(a1 + 48), @"DidBeginRecordingMomentCaptureMovie", v15);
    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v5 = [*(DerivedStorage + 784) stillImageSinkPipelineSessionStorageWithSinkID:*(a1 + 32)];
    v6 = -[FigCaptureStillImageSettings initWithSettingsID:]([FigCaptureIrisStillImageSettings alloc], "initWithSettingsID:", [*(a1 + 40) settingsID]);
    [(FigCaptureIrisStillImageSettings *)v6 setMovieMode:2];
    [(FigCaptureIrisStillImageSettings *)v6 setMovieRecordingSettings:*(a1 + 40)];
    [(FigCaptureStillImageSettings *)v6 setStillImageUserInitiatedRequestTime:*(a1 + 56)];
    [(FigCaptureStillImageSettings *)v6 setFlashMode:*(a1 + 80)];
    if (cs_touchDownMomentStillCaptureEnabled_onceToken != -1)
    {
      __captureSession_IrisStillImageSinkBeginMomentCapture_block_invoke_cold_2();
    }

    os_unfair_lock_lock((*(a1 + 64) + 384));
    v7 = [(FigCaptureStillImageSettings *)v6 settingsID];
    v8 = *(CMBaseObjectGetDerivedStorage() + 688);
    v9 = *(a1 + 64);
    if (v8 >= 1 && v8 == v7)
    {
      *(v9 + 688) = 0;

      v10 = v6;
      v11 = *(a1 + 64);
      *(v11 + 696) = v10;
      os_unfair_lock_unlock((v11 + 384));
      cs_IrisStillImageSinkPrepareMovieRecording(*(a1 + 48), *(a1 + 32), v6);
      [objc_msgSend(objc_msgSend(v5 "primaryStillImageSinkPipeline")];
    }

    else
    {
      os_unfair_lock_unlock((v9 + 384));
    }

    if (dword_1ED844050)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  *(v3 + 376) = 0;
}

uint64_t __captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_block_invoke_1416()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 376) = 0;
  return result;
}

@end