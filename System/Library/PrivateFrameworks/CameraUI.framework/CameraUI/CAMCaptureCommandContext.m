@interface CAMCaptureCommandContext
- (AVCaptureFileOutputRecordingDelegatePrivate)currentRecordingDelegate;
- (AVCapturePhotoCaptureDelegate)currentStillImageDelegate;
- (AVMomentCaptureMovieRecordingDelegate)currentMomentCaptureMovieRecordingDelegate;
- (BOOL)_shouldEnableApertureSliderForMode:(int64_t)a3 devicePosition:(int64_t)a4 depthSuggestionEnabled:(BOOL)a5 recording:(BOOL)a6;
- (BOOL)_shouldEnableLensSelectorForMode:(int64_t)a3 devicePosition:(int64_t)a4 recording:(BOOL)a5;
- (CAMCaptureCommandContext)initWithCaptureEngine:(id)a3;
- (CAMCaptureEngine)_captureEngine;
- (id)_captureEngineDeviceForMode:(int64_t)a3 desiredDevice:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7 resolvedDevice:(int64_t *)a8;
- (id)_metadataOutputForMode:(int64_t)a3;
- (id)audioDeviceInput;
- (id)cachedMomentCaptureSettingsForIdentifier:(id)a3;
- (id)controlsForGraphConfiguration:(id)a3 recording:(BOOL)a4;
- (id)outputsForGraphConfiguration:(id)a3;
- (id)primaryOutputForMode:(int64_t)a3 graphConfiguration:(id)a4;
- (id)primaryVideoPreviewLayerForGraphConfiguration:(id)a3;
- (id)secondaryVideoPreviewLayerForGraphConfiguration:(id)a3;
- (void)cacheMomentCaptureSettings:(id)a3 forIdentifier:(id)a4;
- (void)clear;
- (void)clearCachedMomentCaptureSettingsForIdentifier:(id)a3;
- (void)registerStillImageCaptureRequest:(id)a3 withSettings:(id)a4;
- (void)registerVideoCaptureRequest:(id)a3;
- (void)registerVideoEndZoomFactor:(double)a3;
- (void)startPanoramaCaptureWithRequest:(id)a3;
- (void)stopPanoramaCaptureInterrupted:(BOOL)a3;
- (void)updateControlEnablementForFilters:(id)a3 captureMode:(int64_t)a4;
- (void)updateControlEnablementForRecording:(BOOL)a3 mode:(int64_t)a4 devicePosition:(int64_t)a5 depthSuggestionEnabled:(BOOL)a6;
- (void)updateLensSelectorForRecording:(BOOL)a3 mode:(int64_t)a4 devicePosition:(int64_t)a5;
@end

@implementation CAMCaptureCommandContext

- (void)clear
{
  [(CAMCaptureCommandContext *)self setCurrentCaptureSession:0];
  [(CAMCaptureCommandContext *)self setCurrentVideoDevice:0];
  [(CAMCaptureCommandContext *)self setCurrentVideoDeviceFormat:0];
  [(CAMCaptureCommandContext *)self setCurrentDepthDataFormat:0];
  [(CAMCaptureCommandContext *)self setCurrentVideoDevicePreset:0];
  [(CAMCaptureCommandContext *)self setCurrentVideoDeviceInput:0];
  [(CAMCaptureCommandContext *)self setCurrentSecondaryVideoDevice:0];
  [(CAMCaptureCommandContext *)self setCurrentSecondaryVideoDeviceFormat:0];
  [(CAMCaptureCommandContext *)self setCurrentSecondaryVideoDeviceInput:0];
  [(CAMCaptureCommandContext *)self setCurrentAudioDevice:0];
  [(CAMCaptureCommandContext *)self setCurrentAudioDeviceInput:0];
  [(CAMCaptureCommandContext *)self setCurrentStillImageOutput:0];
  [(CAMCaptureCommandContext *)self setCurrentMovieFileOutput:0];
  [(CAMCaptureCommandContext *)self setCurrentPanoramaOutput:0];
  [(CAMCaptureCommandContext *)self setCurrentMetadataOutput:0];
  [(CAMCaptureCommandContext *)self setCurrentEffectsPreviewOutput:0];
  [(CAMCaptureCommandContext *)self setCurrentVideoThumbnailOutput:0];
  [(CAMCaptureCommandContext *)self setSystemZoomSlider:0];
  [(CAMCaptureCommandContext *)self setSystemLensSelector:0];
  [(CAMCaptureCommandContext *)self setSystemExposureBiasSlider:0];
  [(CAMCaptureCommandContext *)self setApertureSlider:0];
  [(CAMCaptureCommandContext *)self setEmulatedZoomSlider:0];
  [(CAMCaptureCommandContext *)self setCurrentVideoPreviewLayer:0];

  [(CAMCaptureCommandContext *)self setCurrentSecondaryVideoPreviewLayer:0];
}

- (CAMCaptureEngine)_captureEngine
{
  WeakRetained = objc_loadWeakRetained(&self->__captureEngine);

  return WeakRetained;
}

- (AVCapturePhotoCaptureDelegate)currentStillImageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__captureEngine);

  return WeakRetained;
}

- (CAMCaptureCommandContext)initWithCaptureEngine:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CAMCaptureCommandContext;
  v5 = [(CAMCaptureCommandContext *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->__captureEngine, v4);
    v7 = v6;
  }

  return v6;
}

- (void)registerStillImageCaptureRequest:(id)a3 withSettings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CAMCaptureCommandContext *)self _captureEngine];
  [v8 registerStillImageCaptureRequest:v7 withSettings:v6];
}

- (AVMomentCaptureMovieRecordingDelegate)currentMomentCaptureMovieRecordingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__captureEngine);

  return WeakRetained;
}

- (void)cacheMomentCaptureSettings:(id)a3 forIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CAMCaptureCommandContext *)self _captureEngine];
  [v8 cacheMomentCaptureSettings:v7 forIdentifier:v6];
}

- (id)cachedMomentCaptureSettingsForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CAMCaptureCommandContext *)self _captureEngine];
  v6 = [v5 cachedMomentCaptureSettingsForIdentifier:v4];

  return v6;
}

- (void)clearCachedMomentCaptureSettingsForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CAMCaptureCommandContext *)self _captureEngine];
  [v5 clearCachedMomentCaptureSettingsForIdentifier:v4];
}

- (void)registerVideoCaptureRequest:(id)a3
{
  v4 = a3;
  v7 = [(CAMCaptureCommandContext *)self _captureEngine];
  v5 = [v7 movieFileOutput];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:v4 forKey:@"CAMCaptureEngineCurrentRequestKey"];
  [v5 setUserInfo:v6];
  [v7 registerVideoCaptureRequest:v4];
}

- (AVCaptureFileOutputRecordingDelegatePrivate)currentRecordingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__captureEngine);

  return WeakRetained;
}

- (void)registerVideoEndZoomFactor:(double)a3
{
  v4 = [(CAMCaptureCommandContext *)self _captureEngine];
  [v4 registerVideoEndZoomFactor:a3];
}

- (void)startPanoramaCaptureWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(CAMCaptureCommandContext *)self _captureEngine];
  [v5 startPanoramaCaptureWithRequest:v4];
}

- (void)stopPanoramaCaptureInterrupted:(BOOL)a3
{
  v3 = a3;
  v4 = [(CAMCaptureCommandContext *)self _captureEngine];
  [v4 stopPanoramaCaptureInterrupted:v3];
}

- (id)_captureEngineDeviceForMode:(int64_t)a3 desiredDevice:(int64_t)a4 videoConfiguration:(int64_t)a5 videoStabilizationStrength:(int64_t)a6 frontRearSimultaneousVideoEnabled:(BOOL)a7 resolvedDevice:(int64_t *)a8
{
  v9 = a7;
  v34 = *MEMORY[0x1E69E9840];
  v14 = [(CAMCaptureCommandContext *)self _captureEngine];
  v15 = +[CAMCaptureCapabilities capabilities];
  v16 = [v15 resolvedDeviceForDesiredDevice:a4 mode:a3 videoConfiguration:a5 videoStabilizationStrength:a6 frontRearSimultaneousVideoEnabled:v9];
  v17 = v16;
  if (v16 > 5)
  {
    if (v16 > 8)
    {
      switch(v16)
      {
        case 9:
          v18 = [v14 frontPearlCameraDevice];
          break;
        case 10:
          v18 = [v14 frontSuperWideCameraDevice];
          break;
        case 11:
          v18 = [v14 systemPreferredCameraDevice];
          break;
        default:
          goto LABEL_37;
      }

      goto LABEL_25;
    }

    if (v16 == 6)
    {
      v18 = [v14 backWideDualCameraDevice];
    }

    else
    {
      if (v16 != 7)
      {
LABEL_10:
        v18 = [v14 frontCameraDevice];
        goto LABEL_25;
      }

      v18 = [v14 backTripleCameraDevice];
    }
  }

  else
  {
    if (v16 <= 2)
    {
      if (!v16)
      {
LABEL_6:
        v18 = [v14 backCameraDevice];
        goto LABEL_25;
      }

      if (v16 != 1)
      {
        if (v16 != 2)
        {
          goto LABEL_37;
        }

        goto LABEL_6;
      }

      goto LABEL_10;
    }

    if (v16 == 3)
    {
      v18 = [v14 backTelephotoCameraDevice];
    }

    else
    {
      if (v16 == 4)
      {
        [v14 backDualCameraDevice];
      }

      else
      {
        [v14 backSuperWideCameraDevice];
      }
      v18 = ;
    }
  }

LABEL_25:
  v19 = v18;
  if (v18)
  {
    v20 = v17;
    if (!a8)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v17 - 8 < 4 || v17 == 1)
  {
    v19 = [v14 frontCameraDevice];
    v23 = @"FrontAuto";
    v20 = 1;
    goto LABEL_38;
  }

LABEL_37:
  v19 = [v14 backCameraDevice];
  v23 = @"BackWide";
  v20 = 2;
LABEL_38:
  v24 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    if (v17 > 0xB)
    {
      v25 = 0;
    }

    else
    {
      v25 = off_1E76FA498[v17];
    }

    if (a3 > 9)
    {
      v26 = 0;
    }

    else
    {
      v26 = off_1E76FA4F8[a3];
    }

    v27 = v23;
    v28 = 138543874;
    v29 = v25;
    v30 = 2114;
    v31 = v26;
    v32 = 2114;
    v33 = v27;
    _os_log_error_impl(&dword_1A3640000, v24, OS_LOG_TYPE_ERROR, "Failed to find device %{public}@ for mode %{public}@. Falling back to %{public}@", &v28, 0x20u);
  }

  if (a8)
  {
LABEL_27:
    *a8 = v20;
  }

LABEL_28:

  return v19;
}

- (id)audioDeviceInput
{
  v2 = [(CAMCaptureCommandContext *)self _captureEngine];
  v3 = [v2 audioCaptureDeviceInput];

  return v3;
}

- (id)primaryOutputForMode:(int64_t)a3 graphConfiguration:(id)a4
{
  v5 = [(CAMCaptureCommandContext *)self _captureEngine:a3];
  v6 = v5;
  if (a3 > 9)
  {
    v8 = 0;
  }

  else
  {
    if (((1 << a3) & 0x271) != 0)
    {
      v7 = [v5 stillImageOutput];
    }

    else
    {
      if (((1 << a3) & 0x186) != 0)
      {
        [v5 movieFileOutput];
      }

      else
      {
        [v5 panoramaVideoDataOutput];
      }
      v7 = ;
    }

    v8 = v7;
  }

  return v8;
}

- (id)outputsForGraphConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CAMCaptureCommandContext *)self _captureEngine];
  v6 = +[CAMCaptureCapabilities capabilities];
  v7 = [v4 videoThumbnailOutputConfiguration];

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [v4 mode];
  if (v9 > 3)
  {
    if (v9 > 9)
    {
      goto LABEL_20;
    }

    if (((1 << v9) & 0x250) == 0)
    {
      if (((1 << v9) & 0x180) != 0)
      {
        v10 = [v5 movieFileOutput];
LABEL_19:
        v15 = v10;
        [v8 addObject:v10];

        goto LABEL_20;
      }

      if (v9 != 5)
      {
        goto LABEL_20;
      }

LABEL_17:
      v10 = [v5 stillImageOutput];
      goto LABEL_19;
    }

LABEL_10:
    v11 = [v5 stillImageOutput];
    [v8 addObject:v11];

    if (![v6 isLiveFilteringSupported])
    {
      goto LABEL_20;
    }

    if (v7)
    {
      [v5 videoThumbnailOutput];
    }

    else
    {
      [v5 effectsPreviewVideoDataOutput];
    }
    v10 = ;
    goto LABEL_19;
  }

  if ((v9 - 1) >= 2)
  {
    if (v9)
    {
      if (v9 != 3)
      {
        goto LABEL_20;
      }

      v10 = [v5 panoramaVideoDataOutput];
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  v12 = [v5 movieFileOutput];
  [v8 addObject:v12];

  v13 = +[CAMCaptureCapabilities capabilities];
  v14 = [v13 isStillDuringVideoSupportedForVideoEncodingBehavior:{objc_msgSend(v4, "videoEncodingBehavior")}];

  if (v14)
  {
    goto LABEL_17;
  }

LABEL_20:
  v16 = -[CAMCaptureCommandContext _metadataOutputForMode:](self, "_metadataOutputForMode:", [v4 mode]);
  if (v16)
  {
    [v8 addObject:v16];
  }

  return v8;
}

- (id)primaryVideoPreviewLayerForGraphConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CAMCaptureCommandContext *)self _captureEngine];
  v6 = [v4 mode];

  if (v6 > 9)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 videoPreviewLayer];
  }

  return v7;
}

- (id)secondaryVideoPreviewLayerForGraphConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CAMCaptureCommandContext *)self _captureEngine];
  if ([v4 mode] == 1 && objc_msgSend(v4, "frontRearSimultaneousVideoEnabled"))
  {
    v6 = [v5 secondaryVideoPreviewLayer];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)controlsForGraphConfiguration:(id)a3 recording:(BOOL)a4
{
  v4 = a4;
  v133[6] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CAMCaptureCommandContext *)self currentCaptureSession];
  v8 = CFPreferencesCopyAppValue(@"CAMUserPreferenceOverlayEnabledControls", @"com.apple.camera");
  keyExistsAndHasValidFormat = 0;
  v9 = 0;
  if (!CFPreferencesGetAppBooleanValue(@"CAMUserPreferenceCameraControlsSelectionDidMigrate", @"com.apple.camera", &keyExistsAndHasValidFormat))
  {
    v132 = @"Cameras";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v132 count:1];
    v9 = [v8 isEqualToArray:v10];
  }

  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v12 = CFPreferencesCopyAppValue(@"CAMUserPreferenceOverlayControlsOrder", @"com.apple.camera");
    if (!v12)
    {
      v133[0] = @"Exposure";
      v133[1] = @"Depth";
      v133[2] = @"Zoom";
      v133[3] = @"Cameras";
      v133[4] = @"Styles";
      v133[5] = @"Tone";
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:6];
    }

    v8 = v12;
  }

  if (!keyExistsAndHasValidFormat)
  {
    CFPreferencesSetAppValue(@"CAMUserPreferenceCameraControlsSelectionDidMigrate", MEMORY[0x1E695E118], @"com.apple.camera");
  }

  v106 = +[CAMCaptureCapabilities capabilities];
  if ([v7 supportsControls] && objc_msgSend(v8, "count"))
  {
    v95 = v4;
    v13 = [v6 mode];
    v14 = [v6 device];
    v96 = [v6 devicePosition];
    v15 = [(CAMCaptureCommandContext *)self _captureEngine];
    v16 = [v6 videoConfiguration];
    v17 = [v6 videoStabilizationStrength];
    v18 = -[CAMCaptureCommandContext _captureEngineDeviceForMode:desiredDevice:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:resolvedDevice:](self, "_captureEngineDeviceForMode:desiredDevice:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:resolvedDevice:", v13, v14, v16, v17, [v6 frontRearSimultaneousVideoEnabled], 0);
    v110 = v15;
    if (v18)
    {
      v93 = v8;
      v91 = v7;
      [v15 ensureControlsForGraphConfiguration:v6];
      v111 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v108 = [v18 systemZoomSlider];
      v109 = v18;
      v105 = [v18 systemLensSelector];
      v126 = 0;
      v127 = 0;
      v103 = v17;
      v104 = v16;
      v19 = +[CAMZoomControlUtilities shouldApplyContinuousZoomForMode:device:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:zoomFactors:displayZoomFactors:](CAMZoomControlUtilities, "shouldApplyContinuousZoomForMode:device:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:zoomFactors:displayZoomFactors:", v13, v14, v16, v17, [v6 frontRearSimultaneousVideoEnabled], &v127, &v126);
      v107 = v127;
      v20 = v126;
      v97 = v6;
      v21 = v13;
      v94 = v13;
      v92 = self;
      if (v19)
      {
        v99 = v14;
        [v6 customLensGroup];
        v22 = v101 = v20;
        v23 = [CAMZoomPoint zoomPointsWithFactors:v107 displayZoomFactors:v20 customLensGroup:?];
        v24 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v23, "count")}];
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        v25 = v23;
        v26 = [v25 countByEnumeratingWithState:&v122 objects:v131 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v123;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v123 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v122 + 1) + 8 * i);
              v31 = MEMORY[0x1E696AD98];
              [v30 displayZoomFactor];
              v32 = [v31 numberWithDouble:?];
              v33 = MEMORY[0x1E696AD98];
              [v30 zoomFactor];
              v34 = [v33 numberWithDouble:?];
              [v24 setObject:v32 forKeyedSubscript:v34];
            }

            v27 = [v25 countByEnumeratingWithState:&v122 objects:v131 count:16];
          }

          while (v27);
        }

        [v108 setDisplayValuesByZoomFactorValue:v24];
        v6 = v97;
        self = v92;
        v21 = v94;
        v14 = v99;
        v20 = v101;
      }

      v35 = [MEMORY[0x1E695DF90] dictionary];
      if (v96 == 1)
      {
        v36 = 0;
      }

      else
      {
        v36 = v14;
      }

      v37 = [CAMCaptureCommandContext _shouldEnableLensSelectorForMode:"_shouldEnableLensSelectorForMode:devicePosition:recording:" devicePosition:v21 recording:?];
      if (v37)
      {
        v38 = v36;
      }

      else
      {
        v21 = 0;
        v38 = 0;
      }

      v120 = v20;
      v121 = v107;
      +[CAMZoomControlUtilities shouldApplyContinuousZoomForMode:device:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:zoomFactors:displayZoomFactors:](CAMZoomControlUtilities, "shouldApplyContinuousZoomForMode:device:videoConfiguration:videoStabilizationStrength:frontRearSimultaneousVideoEnabled:zoomFactors:displayZoomFactors:", v21, v38, v104, v103, [v6 frontRearSimultaneousVideoEnabled], &v121, &v120);
      v39 = v121;

      v40 = v120;
      v89 = v40;
      v90 = v39;
      v41 = [CAMZoomPoint zoomPointsWithFactors:v39 displayZoomFactors:v40 customLensGroup:0];
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v42 = [v41 countByEnumeratingWithState:&v116 objects:v130 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v117;
        do
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v117 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v116 + 1) + 8 * j);
            v47 = [v41 lastObject];

            if (v46 != v47)
            {
              v48 = MEMORY[0x1E696AD98];
              [v46 displayZoomFactor];
              v49 = [v48 numberWithDouble:?];
              v50 = MEMORY[0x1E696AD98];
              if (v37)
              {
                [v46 zoomFactor];
              }

              else
              {
                [v46 displayZoomFactor];
              }

              v51 = [v50 numberWithDouble:?];
              [v35 setObject:v49 forKeyedSubscript:v51];
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v116 objects:v130 count:16];
        }

        while (v43);
      }

      v52 = [v106 isSupportedMode:v94 withDevice:1];
      v54 = !v95;
      if (v96 == 1)
      {
        v54 = 1;
      }

      if (v52 && v54)
      {
        v55 = MEMORY[0x1E69938E8];
        LODWORD(v53) = *MEMORY[0x1E69938E8];
        v56 = [MEMORY[0x1E696AD98] numberWithFloat:v53];
        LODWORD(v57) = *v55;
        v58 = [MEMORY[0x1E696AD98] numberWithFloat:v57];
        [v35 setObject:v56 forKeyedSubscript:v58];
      }

      [v105 setDisplayValuesByZoomFactorValue:v35];

      v59 = [v106 semanticStyleSupportForMode:v94 devicePosition:v96];
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v60 = v93;
      v61 = [v60 countByEnumeratingWithState:&v112 objects:v129 count:16];
      v62 = v110;
      if (!v61)
      {
        v102 = 0;
        goto LABEL_81;
      }

      v63 = v61;
      v102 = 0;
      v64 = *v113;
      v98 = v59;
      v100 = v59 & 9;
      while (1)
      {
        for (k = 0; k != v63; ++k)
        {
          if (*v113 != v64)
          {
            objc_enumerationMutation(v60);
          }

          v66 = *(*(&v112 + 1) + 8 * k);
          if ([v66 isEqualToString:@"Exposure"])
          {
            v67 = [v109 systemExposureSlider];
            [v111 addObject:v67];

            continue;
          }

          v68 = [v62 apertureSlider];
          if (v68)
          {
            v69 = v68;
            v70 = [v66 isEqualToString:@"Depth"];

            if (v70)
            {
              v62 = v110;
              v71 = [v110 apertureSlider];
LABEL_57:
              v72 = v71;
              v73 = v111;
LABEL_58:
              [v73 addObject:v72];

              continue;
            }
          }

          if ([v66 isEqualToString:@"Zoom"])
          {
            [v111 addObject:v108];
            v62 = v110;
          }

          else
          {
            v62 = v110;
            if ([v66 isEqualToString:@"Cameras"])
            {
              [v111 addObject:v105];
            }

            else if ([v66 isEqual:@"Styles"] && objc_msgSend(v106, "smartStylesSupported"))
            {
              if (v100 == 1)
              {
                v71 = [v110 systemStylePicker];
                goto LABEL_57;
              }

              v76 = [v97 smartStyles];
              v77 = [v110 creativeStylePickerWithStyles:v76];

              [v111 addObject:v77];
              v102 = v77;
            }

            else if ([v66 isEqual:@"Tone"])
            {
              if ([v106 smartStylesSupported])
              {
                v74 = [v110 toneBiasSlider];
                [v111 addObject:v74];

                if ((v98 & 8) != 0)
                {
                  if ([v106 smartStylesShowExtraControls])
                  {
                    v75 = [v110 colorBiasSlider];
                    [v111 addObject:v75];

                    v72 = [v110 intensitySlider];
                    v73 = v111;
                    goto LABEL_58;
                  }
                }
              }
            }
          }
        }

        v63 = [v60 countByEnumeratingWithState:&v112 objects:v129 count:16];
        if (!v63)
        {
LABEL_81:

          v78 = v108;
          [v108 setEnabled:[(CAMCaptureCommandContext *)v92 _shouldEnableSystemZoomSliderForMode:v94 devicePosition:v96]];
          [v105 setEnabled:{-[CAMCaptureCommandContext _shouldEnableLensSelectorForMode:devicePosition:recording:](v92, "_shouldEnableLensSelectorForMode:devicePosition:recording:", v94, v96, v95)}];
          v80 = [(CAMCaptureCommandContext *)v92 _shouldEnableSystemExposureForRecording:v95 mode:v94];
          v18 = v109;
          v81 = [v109 systemExposureSlider];
          [v81 setEnabled:v80];

          v79 = v62;
          v6 = v97;
          v82 = -[CAMCaptureCommandContext _shouldEnableApertureSliderForMode:devicePosition:depthSuggestionEnabled:recording:](v92, "_shouldEnableApertureSliderForMode:devicePosition:depthSuggestionEnabled:recording:", v94, v96, [v97 enableDepthSuggestion], v95);
          v83 = [v79 apertureSlider];
          [v83 setEnabled:v82];

          v84 = [(CAMCaptureCommandContext *)v92 _shouldEnableSystemStylePickerForMode:v94 recording:v95];
          v85 = [v79 systemStylePicker];
          [v85 setEnabled:v84];

          [v102 setEnabled:{-[CAMCaptureCommandContext _shouldEnableCreativeStylePickerForMode:recording:](v92, "_shouldEnableCreativeStylePickerForMode:recording:", v94, v95)}];
          v86 = [(CAMCaptureCommandContext *)v92 _shouldEnableToneBiasForMode:v94 recording:v95];
          v87 = [v79 toneBiasSlider];
          [v87 setEnabled:v86];

          v7 = v91;
          v8 = v93;
          goto LABEL_82;
        }
      }
    }

    v78 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      [CAMCaptureCommandContext controlsForGraphConfiguration:v78 recording:?];
    }

    v111 = MEMORY[0x1E695E0F0];
    v79 = v15;
LABEL_82:
  }

  else
  {
    v111 = MEMORY[0x1E695E0F0];
  }

  return v111;
}

- (void)updateControlEnablementForRecording:(BOOL)a3 mode:(int64_t)a4 devicePosition:(int64_t)a5 depthSuggestionEnabled:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v24 = [(CAMCaptureCommandContext *)self currentCaptureSession];
  if ([v24 supportsControls])
  {
    v11 = [(CAMCaptureCommandContext *)self _captureEngine];
    v12 = [(CAMCaptureCommandContext *)self _shouldEnableApertureSliderForMode:a4 devicePosition:a5 depthSuggestionEnabled:v6 recording:v9];
    v13 = [v11 apertureSlider];
    [v13 setEnabled:v12];

    v14 = [(CAMCaptureCommandContext *)self _shouldEnableSystemExposureForRecording:v9 mode:a4];
    v15 = [(CAMCaptureCommandContext *)self systemExposureBiasSlider];
    [v15 setEnabled:v14];

    v16 = [(CAMCaptureCommandContext *)self _shouldEnableLensSelectorForMode:a4 devicePosition:a5 recording:v9];
    v17 = [(CAMCaptureCommandContext *)self systemLensSelector];
    [v17 setEnabled:v16];

    v18 = [(CAMCaptureCommandContext *)self _shouldEnableSystemStylePickerForMode:a4 recording:v9];
    v19 = [v11 systemStylePicker];
    [v19 setEnabled:v18];

    v20 = [(CAMCaptureCommandContext *)self _shouldEnableCreativeStylePickerForMode:a4 recording:v9];
    v21 = [v11 creativeStylePicker];
    [v21 setEnabled:v20];

    v22 = [(CAMCaptureCommandContext *)self _shouldEnableToneBiasForMode:a4 recording:v9];
    v23 = [v11 toneBiasSlider];
    [v23 setEnabled:v22];
  }
}

- (void)updateLensSelectorForRecording:(BOOL)a3 mode:(int64_t)a4 devicePosition:(int64_t)a5
{
  v7 = a3;
  v22 = [(CAMCaptureCommandContext *)self systemLensSelector];
  v8 = [v22 displayValuesByZoomFactorValue];
  v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v8];
  v10 = +[CAMCaptureCapabilities capabilities];
  v11 = MEMORY[0x1E69938E8];
  LODWORD(v12) = *MEMORY[0x1E69938E8];
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v14 = [v8 objectForKeyedSubscript:v13];

  v15 = [v10 isSupportedMode:a4 withDevice:1];
  v17 = a5 != 1 && v7;
  v18 = v17 | v15 ^ 1;
  if ((v18 & 1) == 0 && !v14)
  {
    LODWORD(v16) = *v11;
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    LODWORD(v20) = *v11;
    v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
    [v9 setObject:v19 forKeyedSubscript:v21];

LABEL_11:
    goto LABEL_12;
  }

  if (!v14)
  {
    v18 = 0;
  }

  if (v18 == 1)
  {
    LODWORD(v16) = *v11;
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    [v9 setObject:0 forKeyedSubscript:v19];
    goto LABEL_11;
  }

LABEL_12:
  [v22 setDisplayValuesByZoomFactorValue:v9];
}

- (void)updateControlEnablementForFilters:(id)a3 captureMode:(int64_t)a4
{
  v16 = a3;
  v6 = [(CAMCaptureCommandContext *)self currentCaptureSession];
  if ([v6 supportsControls])
  {
    v7 = [(CAMCaptureCommandContext *)self _captureEngine];
    v8 = [CAMEffectFilterManager isLightingEffectInFilters:v16];
    if (v8)
    {
      v9 = [v7 systemStylePicker];
      [v9 setEnabled:0];

      v10 = 0;
    }

    else
    {
      v11 = [(CAMCaptureCommandContext *)self _shouldEnableSystemStylePickerForMode:a4 recording:0];
      v12 = [v7 systemStylePicker];
      [v12 setEnabled:v11];

      v10 = [(CAMCaptureCommandContext *)self _shouldEnableCreativeStylePickerForMode:a4 recording:0];
    }

    v13 = [v7 creativeStylePicker];
    [v13 setEnabled:v10];

    v14 = !v8 && [(CAMCaptureCommandContext *)self _shouldEnableToneBiasForMode:a4 recording:0];
    v15 = [v7 toneBiasSlider];
    [v15 setEnabled:v14];
  }
}

- (id)_metadataOutputForMode:(int64_t)a3
{
  v4 = [(CAMCaptureCommandContext *)self _captureEngine];
  v5 = 0;
  if (a3 <= 9)
  {
    if (((1 << a3) & 0x3D7) != 0 || a3 == 5 && (+[CAMCaptureCapabilities capabilities](CAMCaptureCapabilities, "capabilities"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isExposureClippingIndicatorSupportedForMode:5 videoConfiguration:0], v7, v5 = 0, v8))
    {
      v5 = [v4 metadataOutput];
    }
  }

  return v5;
}

- (BOOL)_shouldEnableApertureSliderForMode:(int64_t)a3 devicePosition:(int64_t)a4 depthSuggestionEnabled:(BOOL)a5 recording:(BOOL)a6
{
  v7 = a5;
  v10 = +[CAMCaptureCapabilities capabilities];
  LOBYTE(v7) = [v10 isDepthEffectApertureSupportedForMode:a3 devicePosition:a4 depthSuggestionEnabled:v7];

  return !a6 & v7;
}

- (BOOL)_shouldEnableLensSelectorForMode:(int64_t)a3 devicePosition:(int64_t)a4 recording:(BOOL)a5
{
  v7 = 1;
  if (a3 <= 9)
  {
    if (((1 << a3) & 0x2C) != 0 || ((1 << a3) & 0x300) != 0)
    {
      v7 = 0;
    }

    else if (a3 == 1 && a5)
    {
      v9 = [(CAMCaptureCommandContext *)self currentMovieFileOutput];
      v10 = [v9 bravoCameraSelectionBehaviorForRecording];
      v7 = v10 != *MEMORY[0x1E69868C8];
    }
  }

  return ((a4 != 1) | ~a5) & v7;
}

@end