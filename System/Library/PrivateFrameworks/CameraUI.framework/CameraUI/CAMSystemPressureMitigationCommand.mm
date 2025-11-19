@interface CAMSystemPressureMitigationCommand
- (void)executeWithContext:(id)a3;
@end

@implementation CAMSystemPressureMitigationCommand

- (void)executeWithContext:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 currentCaptureSession];
  v5 = [v3 currentVideoDevice];
  v6 = +[CAMCaptureCapabilities capabilities];
  if ([v6 isBackPortraitModeSupported])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v6 isFrontPortraitModeSupported];
  }

  v8 = [v4 sessionPreset];
  v9 = [v8 isEqualToString:*MEMORY[0x1E6986B08]];

  v10 = [v5 activeFormat];
  v11 = [v10 isHighestPhotoQualitySupported];

  v12 = [v5 activeFormat];
  v13 = [v12 cam_supportsPortraitFrontFacingZoomed];

  v14 = [v6 shouldAlwaysApplySystemPressureMitigationInPhotoMode];
  if ((v7 | v14) & 1) != 0 && ((v9 | v11 | v13))
  {
    v15 = v14;
    *&v34.value = *MEMORY[0x1E6960C70];
    v16 = *(MEMORY[0x1E6960C70] + 16);
    v34.epoch = v16;
    v31 = *&v34.value;
    *&v33.value = *&v34.value;
    v33.epoch = v16;
    v30 = [v3 currentStillImageOutput];
    v17 = [v30 isDepthDataDeliveryEnabled];
    v18 = [v3 currentVideoPreviewLayer];
    v19 = [v18 videoPreviewFilters];
    v20 = [CAMEffectFilterManager isDepthEffectInFilters:v19];

    if ((v17 & v20 | v15))
    {
      v21 = [v5 systemPressureState];
      v22 = [v21 recommendedFrameRateRangeForPortrait];
      v23 = v22;
      if (v22)
      {
        [v22 maxFrameDuration];
        v34 = time2;
        [v23 minFrameDuration];
      }

      else
      {
        memset(&v34, 0, sizeof(v34));
        memset(&time2, 0, sizeof(time2));
      }

      v33 = time2;
    }

    if (v5)
    {
      [v5 activeVideoMinFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = v33;
    if (CMTimeCompare(&time1, &time2))
    {
      goto LABEL_19;
    }

    if (v5)
    {
      [v5 activeVideoMaxFrameDuration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = v34;
    if (CMTimeCompare(&time1, &time2))
    {
LABEL_19:
      v24 = *MEMORY[0x1E695E480];
      time2 = v33;
      v25 = CMTimeCopyDescription(v24, &time2);
      time2 = v34;
      v26 = CMTimeCopyDescription(v24, &time2);
      time2 = v33;
      *&time1.value = v31;
      time1.epoch = v16;
      if (CMTimeCompare(&time2, &time1) || (time2 = v34, *&time1.value = v31, time1.epoch = v16, CMTimeCompare(&time2, &time1)))
      {
        v27 = os_log_create("com.apple.camera", "CaptureCommand");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(time2.value) = 138543618;
          *(&time2.value + 4) = v25;
          LOWORD(time2.flags) = 2114;
          *(&time2.flags + 2) = v26;
          _os_log_impl(&dword_1A3640000, v27, OS_LOG_TYPE_DEFAULT, "SystemPressureState: setting min/maxFrameDuration %{public}@/%{public}@", &time2, 0x16u);
        }
      }

      else
      {
        if (v5)
        {
          [v5 activeVideoMinFrameDuration];
          v27 = CMTimeCopyDescription(v24, &time2);
          [v5 activeVideoMaxFrameDuration];
        }

        else
        {
          memset(&time2, 0, sizeof(time2));
          v27 = CMTimeCopyDescription(v24, &time2);
          memset(&time2, 0, sizeof(time2));
        }

        v28 = CMTimeCopyDescription(v24, &time2);
        v29 = os_log_create("com.apple.camera", "CaptureCommand");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(time2.value) = 138543618;
          *(&time2.value + 4) = v27;
          LOWORD(time2.flags) = 2114;
          *(&time2.flags + 2) = v28;
          _os_log_impl(&dword_1A3640000, v29, OS_LOG_TYPE_DEFAULT, "SystemPressureState: setting min/maxFrameDuration to default values for current preset (previously %{public}@/%{public}@)", &time2, 0x16u);
        }
      }
    }

    time2 = v33;
    [v5 setActiveVideoMinFrameDuration:&time2];
    time2 = v34;
    [v5 setActiveVideoMaxFrameDuration:&time2];
  }
}

@end