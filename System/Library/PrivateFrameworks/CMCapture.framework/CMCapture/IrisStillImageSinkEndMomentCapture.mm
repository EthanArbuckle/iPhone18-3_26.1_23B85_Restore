@interface IrisStillImageSinkEndMomentCapture
@end

@implementation IrisStillImageSinkEndMomentCapture

uint64_t __captureSession_IrisStillImageSinkEndMomentCapture_block_invoke(double *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = [*(DerivedStorage + 784) movieFileSinkPipelineWithSinkID:*(a1 + 4)];
  v4 = [*(DerivedStorage + 784) stillImageSinkPipelineSessionStorageWithSinkID:*(a1 + 4)];
  v58 = [v4 primaryCameraSourcePipeline];
  v5 = *(*(a1 + 6) + 784);
  v6 = [(FigCaptureMovieFileSinkPipeline *)v3 videoSourceID];
  v7 = [v5 previewSinkPipelineWithSourceID:v6 sourceDeviceType:-[FigCaptureMovieFileSinkPipeline videoSourceDeviceType](v3)];
  os_unfair_lock_lock((*(a1 + 6) + 384));
  v8 = *(a1 + 7);
  v9 = [*(*(a1 + 6) + 696) settingsID];
  v10 = *(a1 + 6);
  if (v8 == v9)
  {

    v10 = *(a1 + 6);
    *(v10 + 696) = 0;
  }

  os_unfair_lock_unlock((v10 + 384));
  v83[0] = 0;
  cs_getMasterClockAndType(*(DerivedStorage + 784), v83, 0);
  memset(&v82, 0, sizeof(v82));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v82, HostTimeClock);
  v12 = [v4 previewSinkNode];
  hostTime = v82;
  v13 = CMClockConvertHostTimeToSystemUnits(&hostTime);
  memset(&v81, 0, sizeof(v81));
  if (v12)
  {
    [v12 previewPTSDisplayedAtHostTime:v13 allowingExtrapolation:1];
    memset(&v80, 0, sizeof(v80));
    if (v81.flags)
    {
      v80 = v81;
      goto LABEL_8;
    }
  }

  else
  {
    memset(&v80, 0, sizeof(v80));
  }

  v14 = CMClockGetHostTimeClock();
  hostTime = v82;
  CMSyncConvertTime(&v80, &hostTime, v14, v83[0]);
LABEL_8:
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v15 = [v3 pendingIrisRecordings];
  v16 = [v15 countByEnumeratingWithState:&v76 objects:v75 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v77;
LABEL_10:
    v19 = 0;
    while (1)
    {
      if (*v77 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v76 + 1) + 8 * v19);
      if ([objc_msgSend(v20 "settings")] == *(a1 + 7))
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v76 objects:v75 count:16];
        if (v17)
        {
          goto LABEL_10;
        }

        goto LABEL_24;
      }
    }

    if (([objc_msgSend(v20 "settings")] & 1) == 0 && dword_1ED844050)
    {
      LODWORD(v73.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v20)
    {
      if (([v20 isEmpty] & 1) == 0)
      {
        v22 = [v20 irisMovieInfo];
        v23 = v22;
        memset(&v73, 0, sizeof(v73));
        if (v22)
        {
          [v22 stillImageCaptureTime];
        }

        else
        {
          memset(&hostTime, 0, sizeof(hostTime));
        }

        lhs = v80;
        CMTimeSubtract(&v73, &lhs, &hostTime);
        memset(&type, 0, sizeof(type));
        CMTimeMake(&type, 500, 1000);
        if ((v73.flags & 1) == 0 || (hostTime = v73, lhs = type, CMTimeCompare(&hostTime, &lhs) < 0))
        {
          if (v23)
          {
            [v23 stillImageCaptureTime];
          }

          else
          {
            memset(&lhs, 0, sizeof(lhs));
          }

          rhs = type;
          CMTimeAdd(&hostTime, &lhs, &rhs);
          v80 = hostTime;
          if (dword_1ED844050)
          {
            LODWORD(rhs.value) = 0;
            v70 = OS_LOG_TYPE_DEFAULT;
            v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = rhs.value;
            if (os_log_type_enabled(v34, v70))
            {
              v36 = value;
            }

            else
            {
              v36 = value & 0xFFFFFFFE;
            }

            if (v36)
            {
              v37 = *(*(a1 + 6) + 104);
              hostTime = v80;
              Seconds = CMTimeGetSeconds(&hostTime);
              *&v39 = COERCE_DOUBLE([objc_msgSend(v20 "settings")]);
              LODWORD(lhs.value) = 136315906;
              *(&lhs.value + 4) = "captureSession_IrisStillImageSinkEndMomentCapture_block_invoke";
              LOWORD(lhs.flags) = 2114;
              *(&lhs.flags + 2) = v37;
              HIWORD(lhs.epoch) = 2048;
              v65 = Seconds;
              v66 = 2048;
              v67 = *&v39;
              LODWORD(v56) = 42;
              p_lhs = &lhs;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }

      if (dword_1ED844050)
      {
        LODWORD(v73.value) = 0;
        LOBYTE(type.value) = 0;
        v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v41 = v73.value;
        if (os_log_type_enabled(v40, type.value))
        {
          v42 = v41;
        }

        else
        {
          v42 = v41 & 0xFFFFFFFE;
        }

        if (v42)
        {
          v57 = *(*(a1 + 6) + 104);
          *&v43 = COERCE_DOUBLE([objc_msgSend(v20 "settings")]);
          v44 = v4;
          v45 = v7;
          if ([v20 isEmpty])
          {
            *&v46 = COERCE_DOUBLE(@"YES");
          }

          else
          {
            *&v46 = COERCE_DOUBLE(@"NO");
          }

          hostTime = v80;
          v47 = CMTimeGetSeconds(&hostTime);
          LODWORD(lhs.value) = 136316162;
          *(&lhs.value + 4) = "captureSession_IrisStillImageSinkEndMomentCapture_block_invoke";
          LOWORD(lhs.flags) = 2114;
          *(&lhs.flags + 2) = v57;
          HIWORD(lhs.epoch) = 2048;
          v65 = *&v43;
          v66 = 2112;
          v67 = *&v46;
          v7 = v45;
          v4 = v44;
          v68 = 2048;
          v69 = v47;
          LODWORD(v56) = 52;
          p_lhs = &lhs;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      hostTime = v80;
      [v20 setMomentCaptureMovieRecordingMasterEndTime:{&hostTime, p_lhs, v56}];
      goto LABEL_56;
    }
  }

LABEL_24:
  if (dword_1ED844050)
  {
    LODWORD(v73.value) = 0;
    LOBYTE(type.value) = 0;
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v25 = v73.value;
    if (os_log_type_enabled(v24, type.value))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 0xFFFFFFFE;
    }

    if (v26)
    {
      v27 = v4;
      v28 = v7;
      v29 = a1[7];
      v30 = *(*(a1 + 6) + 104);
      hostTime = v80;
      v31 = CMTimeGetSeconds(&hostTime);
      LODWORD(lhs.value) = 136315906;
      *(&lhs.value + 4) = "captureSession_IrisStillImageSinkEndMomentCapture_block_invoke";
      LOWORD(lhs.flags) = 2114;
      *(&lhs.flags + 2) = v30;
      HIWORD(lhs.epoch) = 2048;
      v65 = v29;
      v7 = v28;
      v4 = v27;
      v66 = 2048;
      v67 = v31;
      LODWORD(v56) = 42;
      p_lhs = &lhs;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v32 = [(FigCaptureMovieFileSinkPipeline *)v3 irisStagingNode];
  v33 = *(a1 + 7);
  hostTime = v80;
  [v32 setMomentCaptureMovieRecordingMasterEndTime:&hostTime forRequestWithSettingsID:v33];
LABEL_56:
  [v7 setVideoStabilizationOverscanCropEnabled:0 momentMovieRecordingEnabled:{0, p_lhs, v56}];
  [v7 setSemanticStyleRenderingSuspended:0 animated:1];
  [v4 setVideoStabilizationOverscanCropEnabled:0];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v48 = [*(*(a1 + 6) + 784) cameraSourcePipelines];
  v49 = [v48 countByEnumeratingWithState:&v60 objects:v59 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v61;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v61 != v51)
        {
          objc_enumerationMutation(v48);
        }

        [-[FigCaptureCameraSourcePipeline captureDevice](*(*(&v60 + 1) + 8 * i)) setTemporalNoiseReductionBand0StrengthModulation:0];
      }

      v50 = [v48 countByEnumeratingWithState:&v60 objects:v59 count:16];
    }

    while (v50);
  }

  v53 = [(FigCaptureCameraSourcePipeline *)v58 captureDevice];
  [v53 setAutomaticallyAdjustsTorch:0];
  result = [v53 setTorchLevel:0.0];
  if (v3)
  {
    return cs_resetImageControlModeAndStreamSelection(v3, 1);
  }

  return result;
}

@end