@interface CAMSystemPressureMitigationCommand
- (void)executeWithContext:(id)context;
@end

@implementation CAMSystemPressureMitigationCommand

- (void)executeWithContext:(id)context
{
  v36 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  currentCaptureSession = [contextCopy currentCaptureSession];
  currentVideoDevice = [contextCopy currentVideoDevice];
  v6 = +[CAMCaptureCapabilities capabilities];
  if ([v6 isBackPortraitModeSupported])
  {
    isFrontPortraitModeSupported = 1;
  }

  else
  {
    isFrontPortraitModeSupported = [v6 isFrontPortraitModeSupported];
  }

  sessionPreset = [currentCaptureSession sessionPreset];
  v9 = [sessionPreset isEqualToString:*MEMORY[0x1E6986B08]];

  activeFormat = [currentVideoDevice activeFormat];
  isHighestPhotoQualitySupported = [activeFormat isHighestPhotoQualitySupported];

  activeFormat2 = [currentVideoDevice activeFormat];
  cam_supportsPortraitFrontFacingZoomed = [activeFormat2 cam_supportsPortraitFrontFacingZoomed];

  shouldAlwaysApplySystemPressureMitigationInPhotoMode = [v6 shouldAlwaysApplySystemPressureMitigationInPhotoMode];
  if ((isFrontPortraitModeSupported | shouldAlwaysApplySystemPressureMitigationInPhotoMode) & 1) != 0 && ((v9 | isHighestPhotoQualitySupported | cam_supportsPortraitFrontFacingZoomed))
  {
    v15 = shouldAlwaysApplySystemPressureMitigationInPhotoMode;
    *&v34.value = *MEMORY[0x1E6960C70];
    v16 = *(MEMORY[0x1E6960C70] + 16);
    v34.epoch = v16;
    v31 = *&v34.value;
    *&v33.value = *&v34.value;
    v33.epoch = v16;
    currentStillImageOutput = [contextCopy currentStillImageOutput];
    isDepthDataDeliveryEnabled = [currentStillImageOutput isDepthDataDeliveryEnabled];
    currentVideoPreviewLayer = [contextCopy currentVideoPreviewLayer];
    videoPreviewFilters = [currentVideoPreviewLayer videoPreviewFilters];
    v20 = [CAMEffectFilterManager isDepthEffectInFilters:videoPreviewFilters];

    if ((isDepthDataDeliveryEnabled & v20 | v15))
    {
      systemPressureState = [currentVideoDevice systemPressureState];
      recommendedFrameRateRangeForPortrait = [systemPressureState recommendedFrameRateRangeForPortrait];
      v23 = recommendedFrameRateRangeForPortrait;
      if (recommendedFrameRateRangeForPortrait)
      {
        [recommendedFrameRateRangeForPortrait maxFrameDuration];
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

    if (currentVideoDevice)
    {
      [currentVideoDevice activeVideoMinFrameDuration];
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

    if (currentVideoDevice)
    {
      [currentVideoDevice activeVideoMaxFrameDuration];
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
        if (currentVideoDevice)
        {
          [currentVideoDevice activeVideoMinFrameDuration];
          v27 = CMTimeCopyDescription(v24, &time2);
          [currentVideoDevice activeVideoMaxFrameDuration];
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
    [currentVideoDevice setActiveVideoMinFrameDuration:&time2];
    time2 = v34;
    [currentVideoDevice setActiveVideoMaxFrameDuration:&time2];
  }
}

@end