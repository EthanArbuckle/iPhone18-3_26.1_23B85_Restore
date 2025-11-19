@interface CAMCaptureEngineDevice
- (AVCaptureDeviceInput)captureDeviceInput;
- (CAMCaptureEngine)_captureEngine;
- (CAMCaptureEngineDevice)initWithEngine:(id)a3 captureDevice:(id)a4;
- (CAMCaptureEngineDeviceSystemAction)systemDeviceActionDelegate;
- (id)_deviceFormatForDynamicAspectRatioWithGraphConfiguration:(id)a3 deviceIsSecondary:(BOOL)a4;
- (id)_highestQualityDeviceFormatForVideoConfiguration:(int64_t)a3 videoEncodingBehavior:(int64_t)a4 colorSpace:(int64_t)a5 requireVideoBinned:(BOOL)a6;
- (id)_highestQualitySessionPresetForVideoConfiguration:(int64_t)a3 videoEncodingBehavior:(int64_t)a4 colorSpace:(int64_t)a5;
- (id)_panoramaDeviceFormatForConfiguration:(id)a3;
- (id)_photoBasedModeDeviceFormatWithCaptureSession:(id)a3;
- (id)_photoBasedModeSessionPresetWithCaptureSession:(id)a3;
- (id)_portraitModeDeviceFormatWithCaptureSession:(id)a3;
- (id)_portraitModeSessionPresetWithCaptureSession:(id)a3;
- (id)_preferredTimelapseSessionPreset;
- (id)_timelapseDeviceFormatWithCaptureSession:(id)a3;
- (id)_timelapseSessionPresetWithCaptureSession:(id)a3;
- (id)videoDeviceFormatForGraphConfiguration:(id)a3 captureSession:(id)a4 deviceIsSecondary:(BOOL)a5;
- (id)videoDevicePresetForGraphConfiguration:(id)a3 captureSession:(id)a4;
- (void)captureDeviceInput;
@end

@implementation CAMCaptureEngineDevice

- (AVCaptureDeviceInput)captureDeviceInput
{
  captureDeviceInput = self->_captureDeviceInput;
  if (!captureDeviceInput)
  {
    v4 = [(CAMCaptureEngineDevice *)self captureDevice];
    WeakRetained = objc_loadWeakRetained(&self->__captureEngine);
    v6 = [v4 deviceType];
    v7 = [WeakRetained prewarmedVideoDeviceInput:v6 position:objc_msgSend(v4 device:{"position"), v4}];
    v8 = self->_captureDeviceInput;
    self->_captureDeviceInput = v7;

    if (!self->_captureDeviceInput)
    {
      v14 = 0;
      v9 = [MEMORY[0x1E69870B0] deviceInputWithDevice:v4 error:&v14];
      v10 = v14;
      v11 = self->_captureDeviceInput;
      self->_captureDeviceInput = v9;

      if (v10)
      {
        v12 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(CAMCaptureEngineDevice *)v4 captureDeviceInput];
        }
      }
    }

    captureDeviceInput = self->_captureDeviceInput;
  }

  return captureDeviceInput;
}

- (CAMCaptureEngineDevice)initWithEngine:(id)a3 captureDevice:(id)a4
{
  objc_initWeak(&location, a3);
  v6 = a4;
  v7 = objc_loadWeakRetained(&location);

  v8 = 0;
  if (v6 && v7)
  {
    v35.receiver = self;
    v35.super_class = CAMCaptureEngineDevice;
    self = [(CAMCaptureEngineDevice *)&v35 init];
    if (self)
    {
      v9 = objc_loadWeakRetained(&location);
      objc_storeWeak(&self->__captureEngine, v9);

      objc_storeStrong(&self->_captureDevice, a4);
      v10 = objc_loadWeakRetained(&location);
      LODWORD(v9) = [v10 controlsSupported];

      if (v9)
      {
        objc_initWeak(&from, self);
        v11 = [objc_alloc(MEMORY[0x1E6987170]) initWithDevice:self->_captureDevice];
        systemZoomSlider = self->_systemZoomSlider;
        self->_systemZoomSlider = v11;

        v13 = objc_alloc(MEMORY[0x1E6987150]);
        captureDevice = self->_captureDevice;
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __55__CAMCaptureEngineDevice_initWithEngine_captureDevice___block_invoke;
        v32[3] = &unk_1E76F7E68;
        objc_copyWeak(&v33, &from);
        v15 = [v13 initWithDevice:captureDevice action:v32];
        systemExposureSlider = self->_systemExposureSlider;
        self->_systemExposureSlider = v15;

        v17 = objc_alloc(MEMORY[0x1E6987158]);
        v27 = MEMORY[0x1E69E9820];
        v28 = 3221225472;
        v29 = __55__CAMCaptureEngineDevice_initWithEngine_captureDevice___block_invoke_2;
        v30 = &unk_1E76F7E90;
        objc_copyWeak(&v31, &from);
        v18 = [v17 initWithDevice:v6 action:&v27];
        systemLensSelector = self->_systemLensSelector;
        self->_systemLensSelector = v18;

        [(AVCaptureSystemLensSelector *)self->_systemLensSelector setChangesVideoZoomFactor:0, v27, v28, v29, v30];
        objc_destroyWeak(&v31);
        objc_destroyWeak(&v33);
        objc_destroyWeak(&from);
      }

      v20 = [[CAMMemoizationCache alloc] initWithMemoizesNil:1];
      videoDeviceFormatForVideoConfiguration = self->__videoDeviceFormatForVideoConfiguration;
      self->__videoDeviceFormatForVideoConfiguration = v20;

      v22 = [[CAMMemoizationCache alloc] initWithMemoizesNil:1];
      videoSessionPresetForVideoConfiguration = self->__videoSessionPresetForVideoConfiguration;
      self->__videoSessionPresetForVideoConfiguration = v22;

      v24 = [[CAMMemoizationCache alloc] initWithMemoizesNil:1];
      cachedDynamicAspectRatioFormat = self->__cachedDynamicAspectRatioFormat;
      self->__cachedDynamicAspectRatioFormat = v24;

      self = self;
      v8 = self;
    }

    else
    {
      v8 = 0;
    }
  }

  objc_destroyWeak(&location);
  return v8;
}

void __55__CAMCaptureEngineDevice_initWithEngine_captureDevice___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained systemDeviceActionDelegate];
  v5 = objc_loadWeakRetained((a1 + 32));
  *&v6 = a2;
  [v4 captureEngineDevice:v5 didChangeSystemExposureTargetBias:v6];
}

void __55__CAMCaptureEngineDevice_initWithEngine_captureDevice___block_invoke_2(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained systemDeviceActionDelegate];
  v5 = objc_loadWeakRetained((a1 + 32));
  *&v6 = a2;
  [v4 captureEngineDevice:v5 didChangeLensSelectorZoomFactor:v6];
}

- (id)_photoBasedModeSessionPresetWithCaptureSession:(id)a3
{
  v4 = [(CAMCaptureEngineDevice *)self _photoBasedModeDeviceFormatWithCaptureSession:a3];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CAMCaptureEngineDevice *)self _preferredPhotoBasedModeSessionPreset];
  }

  return v5;
}

- (id)_photoBasedModeDeviceFormatWithCaptureSession:(id)a3
{
  v4 = a3;
  v5 = +[CAMCaptureCapabilities capabilities];
  v6 = [v5 useMultiCamSession];

  if (v6)
  {
    v7 = [(CAMCaptureEngineDevice *)self captureDevice];
    v8 = [(CAMCaptureEngineDevice *)self _preferredPhotoBasedModeSessionPreset];
    v9 = [v4 deviceFormatForSessionPreset:v8 device:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_highestQualityDeviceFormatForVideoConfiguration:(int64_t)a3 videoEncodingBehavior:(int64_t)a4 colorSpace:(int64_t)a5 requireVideoBinned:(BOOL)a6
{
  v6 = a6;
  v11 = [(CAMCaptureEngineDevice *)self _videoDeviceFormatForVideoConfiguration];
  v12 = [(CAMCaptureEngineDevice *)self _keyForVideoConfiguration:a3 videoEncodingBehavior:a4 colorSpace:a5 requireVideoBinned:v6];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __127__CAMCaptureEngineDevice__highestQualityDeviceFormatForVideoConfiguration_videoEncodingBehavior_colorSpace_requireVideoBinned___block_invoke;
  v15[3] = &unk_1E76F7EB8;
  v15[4] = self;
  v15[5] = a3;
  v15[6] = a4;
  v15[7] = a5;
  v16 = v6;
  v13 = [v11 objectForKey:v12 memoizationBlock:v15];

  return v13;
}

id __127__CAMCaptureEngineDevice__highestQualityDeviceFormatForVideoConfiguration_videoEncodingBehavior_colorSpace_requireVideoBinned___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) captureDevice];
  v6 = 0;
  [v2 cameraVideoFormat:&v6 orPreset:0 forVideoConfiguration:*(a1 + 40) videoEncodingBehavior:*(a1 + 48) colorSpace:*(a1 + 56) requireVideoBinned:*(a1 + 64)];
  v3 = v6;
  v4 = v6;

  return v3;
}

- (id)_highestQualitySessionPresetForVideoConfiguration:(int64_t)a3 videoEncodingBehavior:(int64_t)a4 colorSpace:(int64_t)a5
{
  v9 = [(CAMCaptureEngineDevice *)self _videoSessionPresetForVideoConfiguration];
  v10 = [(CAMCaptureEngineDevice *)self _keyForVideoConfiguration:a3 videoEncodingBehavior:a4 colorSpace:a5 requireVideoBinned:0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __109__CAMCaptureEngineDevice__highestQualitySessionPresetForVideoConfiguration_videoEncodingBehavior_colorSpace___block_invoke;
  v13[3] = &unk_1E76F7EE0;
  v13[4] = self;
  v13[5] = a3;
  v13[6] = a4;
  v13[7] = a5;
  v14 = 0;
  v11 = [v9 objectForKey:v10 memoizationBlock:v13];

  return v11;
}

id __109__CAMCaptureEngineDevice__highestQualitySessionPresetForVideoConfiguration_videoEncodingBehavior_colorSpace___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) captureDevice];
  v6 = 0;
  [v2 cameraVideoFormat:0 orPreset:&v6 forVideoConfiguration:*(a1 + 40) videoEncodingBehavior:*(a1 + 48) colorSpace:*(a1 + 56) requireVideoBinned:*(a1 + 64)];
  v3 = v6;
  v4 = v6;

  return v3;
}

- (id)_panoramaDeviceFormatForConfiguration:(id)a3
{
  cachedPanoramaDeviceFormat = self->__cachedPanoramaDeviceFormat;
  if (!cachedPanoramaDeviceFormat)
  {
    v5 = a3;
    v6 = [(CAMCaptureEngineDevice *)self captureDevice];
    v7 = [v6 cameraPanoramaFormatForConfiguration:v5];

    v8 = self->__cachedPanoramaDeviceFormat;
    self->__cachedPanoramaDeviceFormat = v7;

    cachedPanoramaDeviceFormat = self->__cachedPanoramaDeviceFormat;
  }

  return cachedPanoramaDeviceFormat;
}

- (id)_timelapseSessionPresetWithCaptureSession:(id)a3
{
  v4 = [(CAMCaptureEngineDevice *)self _timelapseDeviceFormatWithCaptureSession:a3];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CAMCaptureEngineDevice *)self _preferredTimelapseSessionPreset];
  }

  return v5;
}

- (id)_preferredTimelapseSessionPreset
{
  v2 = [(CAMCaptureEngineDevice *)self captureDevice];
  v3 = *MEMORY[0x1E6986AC8];
  if (([v2 supportsAVCaptureSessionPreset:*MEMORY[0x1E6986AC8]] & 1) == 0)
  {
    v3 = *MEMORY[0x1E6986AC0];
    if (![v2 supportsAVCaptureSessionPreset:*MEMORY[0x1E6986AC0]])
    {
      v3 = *MEMORY[0x1E6986AD8];
    }
  }

  v4 = v3;

  return v3;
}

- (id)_timelapseDeviceFormatWithCaptureSession:(id)a3
{
  v4 = a3;
  v5 = +[CAMCaptureCapabilities capabilities];
  v6 = [v5 useMultiCamSession];

  if (v6)
  {
    v7 = [(CAMCaptureEngineDevice *)self captureDevice];
    v8 = [(CAMCaptureEngineDevice *)self _preferredTimelapseSessionPreset];
    v9 = [v4 deviceFormatForSessionPreset:v8 device:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_portraitModeSessionPresetWithCaptureSession:(id)a3
{
  v4 = [(CAMCaptureEngineDevice *)self _portraitModeDeviceFormatWithCaptureSession:a3];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CAMCaptureEngineDevice *)self _preferredPortraitModeSessionPreset];
  }

  return v5;
}

- (id)_portraitModeDeviceFormatWithCaptureSession:(id)a3
{
  v4 = a3;
  v5 = [(CAMCaptureEngineDevice *)self captureDevice];
  v6 = +[CAMCaptureCapabilities capabilities];
  v7 = [v6 usePortraitFrontFacingZoomedCaptureDeviceFormat];

  if (!self->__cachedPortraitDeviceFormat && v7 && [v5 position] == 2)
  {
    v8 = [v5 cam_formatForPortraitFrontFacingZoomed];
    cachedPortraitDeviceFormat = self->__cachedPortraitDeviceFormat;
    self->__cachedPortraitDeviceFormat = v8;
  }

  v10 = +[CAMCaptureCapabilities capabilities];
  v11 = [v10 useMultiCamSession];
  v12 = self->__cachedPortraitDeviceFormat;
  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = [(CAMCaptureEngineDevice *)self _preferredPortraitModeSessionPreset];
    v15 = [v4 deviceFormatForSessionPreset:v14 device:v5];
    v16 = self->__cachedPortraitDeviceFormat;
    self->__cachedPortraitDeviceFormat = v15;

    v12 = self->__cachedPortraitDeviceFormat;
  }

  v17 = v12;

  return v12;
}

- (id)_deviceFormatForDynamicAspectRatioWithGraphConfiguration:(id)a3 deviceIsSecondary:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v8 = [v6 secondaryDeviceVideoConfiguration];
    v9 = [v7 secondaryDeviceVideoDynamicAspectRatio];
    v10 = [v7 secondaryDeviceColorSpace];
    v11 = [v7 isSecondaryDeviceVideoBinned];
  }

  else
  {
    v8 = [v6 videoConfiguration];
    v9 = [v7 videoDynamicAspectRatio];
    v10 = [v7 colorSpace];
    v11 = [v7 isVideoBinned];
  }

  v12 = v11;
  v13 = +[CAMCaptureCapabilities capabilities];
  v14 = [v13 useSquareFormatForDynamicAspectRatioForMode:objc_msgSend(v7 videoConfiguration:{"mode"), v8}];

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"videoConfiguration=%lu, encoding=%lu, colorSpace=%lu, videoDynamicAspectRatio=%lu useSquareFormat=%d requireVideoBinned=%d", v8, objc_msgSend(v7, "videoEncodingBehavior"), v10, v9, v14, v12];
  v16 = [(CAMCaptureEngineDevice *)self _cachedDynamicAspectRatioFormat];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __101__CAMCaptureEngineDevice__deviceFormatForDynamicAspectRatioWithGraphConfiguration_deviceIsSecondary___block_invoke;
  v20[3] = &unk_1E76F7F08;
  v20[4] = self;
  v21 = v7;
  v22 = v8;
  v23 = v10;
  v24 = v9;
  v25 = v14;
  v26 = v12;
  v17 = v7;
  v18 = [v16 objectForKey:v15 memoizationBlock:v20];

  return v18;
}

id __101__CAMCaptureEngineDevice__deviceFormatForDynamicAspectRatioWithGraphConfiguration_deviceIsSecondary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) captureDevice];
  v3 = [v2 cam_frontFacingFormatForVideoConfiguration:*(a1 + 48) videoEncodingBehavior:objc_msgSend(*(a1 + 40) colorSpace:"videoEncodingBehavior") dynamicAspectRatio:*(a1 + 56) useSquareFormat:*(a1 + 64) requireVideoBinned:*(a1 + 72), *(a1 + 73)];

  return v3;
}

- (id)videoDeviceFormatForGraphConfiguration:(id)a3 captureSession:(id)a4 deviceIsSecondary:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v8 mode];
  v11 = 0;
  if (v10 > 4)
  {
    if (v10 <= 6)
    {
      if (v10 == 5)
      {
        [(CAMCaptureEngineDevice *)self _timelapseDeviceFormatWithCaptureSession:v9];
      }

      else
      {
        [(CAMCaptureEngineDevice *)self _portraitModeDeviceFormatWithCaptureSession:v9];
      }
      v12 = ;
      goto LABEL_26;
    }

    if (v10 == 7)
    {
LABEL_13:
      if (v5)
      {
        if (![v8 secondaryDeviceVideoDynamicAspectRatio])
        {
          goto LABEL_22;
        }
      }

      else if (![v8 videoDynamicAspectRatio])
      {
        goto LABEL_22;
      }

      v12 = [(CAMCaptureEngineDevice *)self _deviceFormatForDynamicAspectRatioWithGraphConfiguration:v8 deviceIsSecondary:v5];
LABEL_26:
      v11 = v12;
      goto LABEL_27;
    }

    if (v10 == 8)
    {
      goto LABEL_22;
    }

    if (v10 != 9)
    {
      goto LABEL_27;
    }

LABEL_16:
    v12 = [(CAMCaptureEngineDevice *)self _photoBasedModeDeviceFormatWithCaptureSession:v9];
    goto LABEL_26;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_27;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (v10 == 2)
  {
LABEL_22:
    if (v5)
    {
      v13 = [v8 secondaryDeviceVideoConfiguration];
      v14 = [v8 secondaryDeviceColorSpace];
      v15 = [v8 isSecondaryDeviceVideoBinned];
    }

    else
    {
      v13 = [v8 videoConfiguration];
      v14 = [v8 colorSpace];
      v15 = [v8 isVideoBinned];
    }

    v12 = -[CAMCaptureEngineDevice _highestQualityDeviceFormatForVideoConfiguration:videoEncodingBehavior:colorSpace:requireVideoBinned:](self, "_highestQualityDeviceFormatForVideoConfiguration:videoEncodingBehavior:colorSpace:requireVideoBinned:", v13, [v8 videoEncodingBehavior], v14, v15);
    goto LABEL_26;
  }

  if (v10 != 3)
  {
    goto LABEL_16;
  }

  v17 = +[CAMPanoramaConfiguration sharedInstance];
  v11 = [(CAMCaptureEngineDevice *)self _panoramaDeviceFormatForConfiguration:v17];

LABEL_27:

  return v11;
}

- (id)videoDevicePresetForGraphConfiguration:(id)a3 captureSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 mode];
  v9 = 0;
  if (v8 > 4)
  {
    if (v8 <= 6)
    {
      if (v8 == 5)
      {
        [(CAMCaptureEngineDevice *)self _timelapseSessionPresetWithCaptureSession:v7];
      }

      else
      {
        [(CAMCaptureEngineDevice *)self _portraitModeSessionPresetWithCaptureSession:v7];
      }
      v10 = ;
      goto LABEL_11;
    }

    if ((v8 - 7) >= 2)
    {
      if (v8 != 9)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

LABEL_10:
    v10 = -[CAMCaptureEngineDevice _highestQualitySessionPresetForVideoConfiguration:videoEncodingBehavior:colorSpace:](self, "_highestQualitySessionPresetForVideoConfiguration:videoEncodingBehavior:colorSpace:", [v6 videoConfiguration], objc_msgSend(v6, "videoEncodingBehavior"), objc_msgSend(v6, "colorSpace"));
    goto LABEL_11;
  }

  if ((v8 - 1) < 2)
  {
    goto LABEL_10;
  }

  if (!v8 || v8 == 4)
  {
LABEL_9:
    v10 = [(CAMCaptureEngineDevice *)self _photoBasedModeSessionPresetWithCaptureSession:v7];
LABEL_11:
    v9 = v10;
  }

LABEL_12:

  return v9;
}

- (CAMCaptureEngineDeviceSystemAction)systemDeviceActionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_systemDeviceActionDelegate);

  return WeakRetained;
}

- (CAMCaptureEngine)_captureEngine
{
  WeakRetained = objc_loadWeakRetained(&self->__captureEngine);

  return WeakRetained;
}

- (void)captureDeviceInput
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A3640000, log, OS_LOG_TYPE_ERROR, "Creating an AVCaptureDeviceInput for the captureDevice (%{public}@) failed: (%{public}@)", &v3, 0x16u);
}

@end