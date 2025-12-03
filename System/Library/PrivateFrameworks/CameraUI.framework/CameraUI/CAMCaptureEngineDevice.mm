@interface CAMCaptureEngineDevice
- (AVCaptureDeviceInput)captureDeviceInput;
- (CAMCaptureEngine)_captureEngine;
- (CAMCaptureEngineDevice)initWithEngine:(id)engine captureDevice:(id)device;
- (CAMCaptureEngineDeviceSystemAction)systemDeviceActionDelegate;
- (id)_deviceFormatForDynamicAspectRatioWithGraphConfiguration:(id)configuration deviceIsSecondary:(BOOL)secondary;
- (id)_highestQualityDeviceFormatForVideoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior colorSpace:(int64_t)space requireVideoBinned:(BOOL)binned;
- (id)_highestQualitySessionPresetForVideoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior colorSpace:(int64_t)space;
- (id)_panoramaDeviceFormatForConfiguration:(id)configuration;
- (id)_photoBasedModeDeviceFormatWithCaptureSession:(id)session;
- (id)_photoBasedModeSessionPresetWithCaptureSession:(id)session;
- (id)_portraitModeDeviceFormatWithCaptureSession:(id)session;
- (id)_portraitModeSessionPresetWithCaptureSession:(id)session;
- (id)_preferredTimelapseSessionPreset;
- (id)_timelapseDeviceFormatWithCaptureSession:(id)session;
- (id)_timelapseSessionPresetWithCaptureSession:(id)session;
- (id)videoDeviceFormatForGraphConfiguration:(id)configuration captureSession:(id)session deviceIsSecondary:(BOOL)secondary;
- (id)videoDevicePresetForGraphConfiguration:(id)configuration captureSession:(id)session;
- (void)captureDeviceInput;
@end

@implementation CAMCaptureEngineDevice

- (AVCaptureDeviceInput)captureDeviceInput
{
  captureDeviceInput = self->_captureDeviceInput;
  if (!captureDeviceInput)
  {
    captureDevice = [(CAMCaptureEngineDevice *)self captureDevice];
    WeakRetained = objc_loadWeakRetained(&self->__captureEngine);
    deviceType = [captureDevice deviceType];
    v7 = [WeakRetained prewarmedVideoDeviceInput:deviceType position:objc_msgSend(captureDevice device:{"position"), captureDevice}];
    v8 = self->_captureDeviceInput;
    self->_captureDeviceInput = v7;

    if (!self->_captureDeviceInput)
    {
      v14 = 0;
      v9 = [MEMORY[0x1E69870B0] deviceInputWithDevice:captureDevice error:&v14];
      v10 = v14;
      v11 = self->_captureDeviceInput;
      self->_captureDeviceInput = v9;

      if (v10)
      {
        v12 = os_log_create("com.apple.camera", "Camera");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(CAMCaptureEngineDevice *)captureDevice captureDeviceInput];
        }
      }
    }

    captureDeviceInput = self->_captureDeviceInput;
  }

  return captureDeviceInput;
}

- (CAMCaptureEngineDevice)initWithEngine:(id)engine captureDevice:(id)device
{
  objc_initWeak(&location, engine);
  deviceCopy = device;
  v7 = objc_loadWeakRetained(&location);

  selfCopy = 0;
  if (deviceCopy && v7)
  {
    v35.receiver = self;
    v35.super_class = CAMCaptureEngineDevice;
    self = [(CAMCaptureEngineDevice *)&v35 init];
    if (self)
    {
      v9 = objc_loadWeakRetained(&location);
      objc_storeWeak(&self->__captureEngine, v9);

      objc_storeStrong(&self->_captureDevice, device);
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
        v18 = [v17 initWithDevice:deviceCopy action:&v27];
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
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  objc_destroyWeak(&location);
  return selfCopy;
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

- (id)_photoBasedModeSessionPresetWithCaptureSession:(id)session
{
  v4 = [(CAMCaptureEngineDevice *)self _photoBasedModeDeviceFormatWithCaptureSession:session];

  if (v4)
  {
    _preferredPhotoBasedModeSessionPreset = 0;
  }

  else
  {
    _preferredPhotoBasedModeSessionPreset = [(CAMCaptureEngineDevice *)self _preferredPhotoBasedModeSessionPreset];
  }

  return _preferredPhotoBasedModeSessionPreset;
}

- (id)_photoBasedModeDeviceFormatWithCaptureSession:(id)session
{
  sessionCopy = session;
  v5 = +[CAMCaptureCapabilities capabilities];
  useMultiCamSession = [v5 useMultiCamSession];

  if (useMultiCamSession)
  {
    captureDevice = [(CAMCaptureEngineDevice *)self captureDevice];
    _preferredPhotoBasedModeSessionPreset = [(CAMCaptureEngineDevice *)self _preferredPhotoBasedModeSessionPreset];
    v9 = [sessionCopy deviceFormatForSessionPreset:_preferredPhotoBasedModeSessionPreset device:captureDevice];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_highestQualityDeviceFormatForVideoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior colorSpace:(int64_t)space requireVideoBinned:(BOOL)binned
{
  binnedCopy = binned;
  _videoDeviceFormatForVideoConfiguration = [(CAMCaptureEngineDevice *)self _videoDeviceFormatForVideoConfiguration];
  v12 = [(CAMCaptureEngineDevice *)self _keyForVideoConfiguration:configuration videoEncodingBehavior:behavior colorSpace:space requireVideoBinned:binnedCopy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __127__CAMCaptureEngineDevice__highestQualityDeviceFormatForVideoConfiguration_videoEncodingBehavior_colorSpace_requireVideoBinned___block_invoke;
  v15[3] = &unk_1E76F7EB8;
  v15[4] = self;
  v15[5] = configuration;
  v15[6] = behavior;
  v15[7] = space;
  v16 = binnedCopy;
  v13 = [_videoDeviceFormatForVideoConfiguration objectForKey:v12 memoizationBlock:v15];

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

- (id)_highestQualitySessionPresetForVideoConfiguration:(int64_t)configuration videoEncodingBehavior:(int64_t)behavior colorSpace:(int64_t)space
{
  _videoSessionPresetForVideoConfiguration = [(CAMCaptureEngineDevice *)self _videoSessionPresetForVideoConfiguration];
  v10 = [(CAMCaptureEngineDevice *)self _keyForVideoConfiguration:configuration videoEncodingBehavior:behavior colorSpace:space requireVideoBinned:0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __109__CAMCaptureEngineDevice__highestQualitySessionPresetForVideoConfiguration_videoEncodingBehavior_colorSpace___block_invoke;
  v13[3] = &unk_1E76F7EE0;
  v13[4] = self;
  v13[5] = configuration;
  v13[6] = behavior;
  v13[7] = space;
  v14 = 0;
  v11 = [_videoSessionPresetForVideoConfiguration objectForKey:v10 memoizationBlock:v13];

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

- (id)_panoramaDeviceFormatForConfiguration:(id)configuration
{
  cachedPanoramaDeviceFormat = self->__cachedPanoramaDeviceFormat;
  if (!cachedPanoramaDeviceFormat)
  {
    configurationCopy = configuration;
    captureDevice = [(CAMCaptureEngineDevice *)self captureDevice];
    v7 = [captureDevice cameraPanoramaFormatForConfiguration:configurationCopy];

    v8 = self->__cachedPanoramaDeviceFormat;
    self->__cachedPanoramaDeviceFormat = v7;

    cachedPanoramaDeviceFormat = self->__cachedPanoramaDeviceFormat;
  }

  return cachedPanoramaDeviceFormat;
}

- (id)_timelapseSessionPresetWithCaptureSession:(id)session
{
  v4 = [(CAMCaptureEngineDevice *)self _timelapseDeviceFormatWithCaptureSession:session];

  if (v4)
  {
    _preferredTimelapseSessionPreset = 0;
  }

  else
  {
    _preferredTimelapseSessionPreset = [(CAMCaptureEngineDevice *)self _preferredTimelapseSessionPreset];
  }

  return _preferredTimelapseSessionPreset;
}

- (id)_preferredTimelapseSessionPreset
{
  captureDevice = [(CAMCaptureEngineDevice *)self captureDevice];
  v3 = *MEMORY[0x1E6986AC8];
  if (([captureDevice supportsAVCaptureSessionPreset:*MEMORY[0x1E6986AC8]] & 1) == 0)
  {
    v3 = *MEMORY[0x1E6986AC0];
    if (![captureDevice supportsAVCaptureSessionPreset:*MEMORY[0x1E6986AC0]])
    {
      v3 = *MEMORY[0x1E6986AD8];
    }
  }

  v4 = v3;

  return v3;
}

- (id)_timelapseDeviceFormatWithCaptureSession:(id)session
{
  sessionCopy = session;
  v5 = +[CAMCaptureCapabilities capabilities];
  useMultiCamSession = [v5 useMultiCamSession];

  if (useMultiCamSession)
  {
    captureDevice = [(CAMCaptureEngineDevice *)self captureDevice];
    _preferredTimelapseSessionPreset = [(CAMCaptureEngineDevice *)self _preferredTimelapseSessionPreset];
    v9 = [sessionCopy deviceFormatForSessionPreset:_preferredTimelapseSessionPreset device:captureDevice];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_portraitModeSessionPresetWithCaptureSession:(id)session
{
  v4 = [(CAMCaptureEngineDevice *)self _portraitModeDeviceFormatWithCaptureSession:session];

  if (v4)
  {
    _preferredPortraitModeSessionPreset = 0;
  }

  else
  {
    _preferredPortraitModeSessionPreset = [(CAMCaptureEngineDevice *)self _preferredPortraitModeSessionPreset];
  }

  return _preferredPortraitModeSessionPreset;
}

- (id)_portraitModeDeviceFormatWithCaptureSession:(id)session
{
  sessionCopy = session;
  captureDevice = [(CAMCaptureEngineDevice *)self captureDevice];
  v6 = +[CAMCaptureCapabilities capabilities];
  usePortraitFrontFacingZoomedCaptureDeviceFormat = [v6 usePortraitFrontFacingZoomedCaptureDeviceFormat];

  if (!self->__cachedPortraitDeviceFormat && usePortraitFrontFacingZoomedCaptureDeviceFormat && [captureDevice position] == 2)
  {
    cam_formatForPortraitFrontFacingZoomed = [captureDevice cam_formatForPortraitFrontFacingZoomed];
    cachedPortraitDeviceFormat = self->__cachedPortraitDeviceFormat;
    self->__cachedPortraitDeviceFormat = cam_formatForPortraitFrontFacingZoomed;
  }

  v10 = +[CAMCaptureCapabilities capabilities];
  useMultiCamSession = [v10 useMultiCamSession];
  v12 = self->__cachedPortraitDeviceFormat;
  if (useMultiCamSession)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    _preferredPortraitModeSessionPreset = [(CAMCaptureEngineDevice *)self _preferredPortraitModeSessionPreset];
    v15 = [sessionCopy deviceFormatForSessionPreset:_preferredPortraitModeSessionPreset device:captureDevice];
    v16 = self->__cachedPortraitDeviceFormat;
    self->__cachedPortraitDeviceFormat = v15;

    v12 = self->__cachedPortraitDeviceFormat;
  }

  v17 = v12;

  return v12;
}

- (id)_deviceFormatForDynamicAspectRatioWithGraphConfiguration:(id)configuration deviceIsSecondary:(BOOL)secondary
{
  configurationCopy = configuration;
  v7 = configurationCopy;
  if (secondary)
  {
    secondaryDeviceVideoConfiguration = [configurationCopy secondaryDeviceVideoConfiguration];
    secondaryDeviceVideoDynamicAspectRatio = [v7 secondaryDeviceVideoDynamicAspectRatio];
    secondaryDeviceColorSpace = [v7 secondaryDeviceColorSpace];
    isSecondaryDeviceVideoBinned = [v7 isSecondaryDeviceVideoBinned];
  }

  else
  {
    secondaryDeviceVideoConfiguration = [configurationCopy videoConfiguration];
    secondaryDeviceVideoDynamicAspectRatio = [v7 videoDynamicAspectRatio];
    secondaryDeviceColorSpace = [v7 colorSpace];
    isSecondaryDeviceVideoBinned = [v7 isVideoBinned];
  }

  v12 = isSecondaryDeviceVideoBinned;
  v13 = +[CAMCaptureCapabilities capabilities];
  v14 = [v13 useSquareFormatForDynamicAspectRatioForMode:objc_msgSend(v7 videoConfiguration:{"mode"), secondaryDeviceVideoConfiguration}];

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"videoConfiguration=%lu, encoding=%lu, colorSpace=%lu, videoDynamicAspectRatio=%lu useSquareFormat=%d requireVideoBinned=%d", secondaryDeviceVideoConfiguration, objc_msgSend(v7, "videoEncodingBehavior"), secondaryDeviceColorSpace, secondaryDeviceVideoDynamicAspectRatio, v14, v12];
  _cachedDynamicAspectRatioFormat = [(CAMCaptureEngineDevice *)self _cachedDynamicAspectRatioFormat];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __101__CAMCaptureEngineDevice__deviceFormatForDynamicAspectRatioWithGraphConfiguration_deviceIsSecondary___block_invoke;
  v20[3] = &unk_1E76F7F08;
  v20[4] = self;
  v21 = v7;
  v22 = secondaryDeviceVideoConfiguration;
  v23 = secondaryDeviceColorSpace;
  v24 = secondaryDeviceVideoDynamicAspectRatio;
  v25 = v14;
  v26 = v12;
  v17 = v7;
  v18 = [_cachedDynamicAspectRatioFormat objectForKey:v15 memoizationBlock:v20];

  return v18;
}

id __101__CAMCaptureEngineDevice__deviceFormatForDynamicAspectRatioWithGraphConfiguration_deviceIsSecondary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) captureDevice];
  v3 = [v2 cam_frontFacingFormatForVideoConfiguration:*(a1 + 48) videoEncodingBehavior:objc_msgSend(*(a1 + 40) colorSpace:"videoEncodingBehavior") dynamicAspectRatio:*(a1 + 56) useSquareFormat:*(a1 + 64) requireVideoBinned:*(a1 + 72), *(a1 + 73)];

  return v3;
}

- (id)videoDeviceFormatForGraphConfiguration:(id)configuration captureSession:(id)session deviceIsSecondary:(BOOL)secondary
{
  secondaryCopy = secondary;
  configurationCopy = configuration;
  sessionCopy = session;
  mode = [configurationCopy mode];
  v11 = 0;
  if (mode > 4)
  {
    if (mode <= 6)
    {
      if (mode == 5)
      {
        [(CAMCaptureEngineDevice *)self _timelapseDeviceFormatWithCaptureSession:sessionCopy];
      }

      else
      {
        [(CAMCaptureEngineDevice *)self _portraitModeDeviceFormatWithCaptureSession:sessionCopy];
      }
      v12 = ;
      goto LABEL_26;
    }

    if (mode == 7)
    {
LABEL_13:
      if (secondaryCopy)
      {
        if (![configurationCopy secondaryDeviceVideoDynamicAspectRatio])
        {
          goto LABEL_22;
        }
      }

      else if (![configurationCopy videoDynamicAspectRatio])
      {
        goto LABEL_22;
      }

      v12 = [(CAMCaptureEngineDevice *)self _deviceFormatForDynamicAspectRatioWithGraphConfiguration:configurationCopy deviceIsSecondary:secondaryCopy];
LABEL_26:
      v11 = v12;
      goto LABEL_27;
    }

    if (mode == 8)
    {
      goto LABEL_22;
    }

    if (mode != 9)
    {
      goto LABEL_27;
    }

LABEL_16:
    v12 = [(CAMCaptureEngineDevice *)self _photoBasedModeDeviceFormatWithCaptureSession:sessionCopy];
    goto LABEL_26;
  }

  if (mode <= 1)
  {
    if (mode)
    {
      if (mode != 1)
      {
        goto LABEL_27;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (mode == 2)
  {
LABEL_22:
    if (secondaryCopy)
    {
      secondaryDeviceVideoConfiguration = [configurationCopy secondaryDeviceVideoConfiguration];
      secondaryDeviceColorSpace = [configurationCopy secondaryDeviceColorSpace];
      isSecondaryDeviceVideoBinned = [configurationCopy isSecondaryDeviceVideoBinned];
    }

    else
    {
      secondaryDeviceVideoConfiguration = [configurationCopy videoConfiguration];
      secondaryDeviceColorSpace = [configurationCopy colorSpace];
      isSecondaryDeviceVideoBinned = [configurationCopy isVideoBinned];
    }

    v12 = -[CAMCaptureEngineDevice _highestQualityDeviceFormatForVideoConfiguration:videoEncodingBehavior:colorSpace:requireVideoBinned:](self, "_highestQualityDeviceFormatForVideoConfiguration:videoEncodingBehavior:colorSpace:requireVideoBinned:", secondaryDeviceVideoConfiguration, [configurationCopy videoEncodingBehavior], secondaryDeviceColorSpace, isSecondaryDeviceVideoBinned);
    goto LABEL_26;
  }

  if (mode != 3)
  {
    goto LABEL_16;
  }

  v17 = +[CAMPanoramaConfiguration sharedInstance];
  v11 = [(CAMCaptureEngineDevice *)self _panoramaDeviceFormatForConfiguration:v17];

LABEL_27:

  return v11;
}

- (id)videoDevicePresetForGraphConfiguration:(id)configuration captureSession:(id)session
{
  configurationCopy = configuration;
  sessionCopy = session;
  mode = [configurationCopy mode];
  v9 = 0;
  if (mode > 4)
  {
    if (mode <= 6)
    {
      if (mode == 5)
      {
        [(CAMCaptureEngineDevice *)self _timelapseSessionPresetWithCaptureSession:sessionCopy];
      }

      else
      {
        [(CAMCaptureEngineDevice *)self _portraitModeSessionPresetWithCaptureSession:sessionCopy];
      }
      v10 = ;
      goto LABEL_11;
    }

    if ((mode - 7) >= 2)
    {
      if (mode != 9)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

LABEL_10:
    v10 = -[CAMCaptureEngineDevice _highestQualitySessionPresetForVideoConfiguration:videoEncodingBehavior:colorSpace:](self, "_highestQualitySessionPresetForVideoConfiguration:videoEncodingBehavior:colorSpace:", [configurationCopy videoConfiguration], objc_msgSend(configurationCopy, "videoEncodingBehavior"), objc_msgSend(configurationCopy, "colorSpace"));
    goto LABEL_11;
  }

  if ((mode - 1) < 2)
  {
    goto LABEL_10;
  }

  if (!mode || mode == 4)
  {
LABEL_9:
    v10 = [(CAMCaptureEngineDevice *)self _photoBasedModeSessionPresetWithCaptureSession:sessionCopy];
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
  selfCopy = self;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A3640000, log, OS_LOG_TYPE_ERROR, "Creating an AVCaptureDeviceInput for the captureDevice (%{public}@) failed: (%{public}@)", &v3, 0x16u);
}

@end