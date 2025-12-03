@interface CAMImagePickerCameraViewController
- (BOOL)isShowingStandardControls;
- (CAMImagePickerCameraViewController)initWithInitialImagePickerProperties:(id)properties;
- (CGAffineTransform)customPreviewViewTransform;
- (double)maximumVideoRecordingDuration;
- (double)videoViewScrubberYOrigin:(id)origin forOrientation:(int64_t)orientation;
- (id)_cameraOverlayView;
- (id)_containingImagePickerController;
- (id)_currentCancelButtonTitle;
- (int64_t)_cameraCaptureMode;
- (int64_t)_cameraDevice;
- (int64_t)_cameraFlashMode;
- (int64_t)_flashModeForImagePickerCameraFlashMode:(int64_t)mode;
- (int64_t)_imagePickerCameraDeviceForCaptureDevice:(int64_t)device;
- (int64_t)_imagePickerCameraFlashModeForFlashMode:(int64_t)mode;
- (int64_t)_imagePickerQualityTypeForVideoConfiguration:(int64_t)configuration;
- (int64_t)_videoConfigurationForImagePickerQualityType:(int64_t)type;
- (int64_t)imagePickerVideoQuality;
- (void)_applyPropertiesFromImagePicker:(id)picker;
- (void)_createCropOverlayIfNecessary;
- (void)_handleCapturedImagePickerPhotoWithCropOverlayOutput:(id)output;
- (void)_handleCapturedImagePickerVideoAtPath:(id)path withEditingMetadata:(id)metadata;
- (void)_handleEditabilityChanged:(id)changed;
- (void)_removeFileAtPath:(id)path;
- (void)_resetTileViewControllerAndVideoView;
- (void)_setCameraCaptureMode:(int64_t)mode;
- (void)_setCameraDevice:(int64_t)device;
- (void)_setCameraFlashMode:(int64_t)mode;
- (void)_setCameraOverlayView:(id)view;
- (void)_setCameraViewTransform:(CGAffineTransform *)transform;
- (void)_setEditingAllowed:(BOOL)allowed;
- (void)_setImagePickerMediaTypes:(id)types;
- (void)_setStatusBarHidden:(BOOL)hidden;
- (void)_updateFromEditabilityChange;
- (void)cameraViewController:(id)controller didCaptureAVAsset:(id)asset andAudioMix:(id)mix withProperties:(id)properties error:(id)error;
- (void)cameraViewController:(id)controller didCapturePhoto:(id)photo withProperties:(id)properties error:(id)error;
- (void)cropOverlayPause:(id)pause;
- (void)cropOverlayPlay:(id)play;
- (void)cropOverlayWasCancelled:(id)cancelled;
- (void)cropOverlayWasOKed:(id)ked;
- (void)loadView;
- (void)setCustomOverlayView:(id)view;
- (void)setCustomPreviewViewTransform:(CGAffineTransform *)transform;
- (void)setImagePickerVideoQuality:(int64_t)quality;
- (void)setMaximumVideoRecordingDuration:(double)duration;
- (void)setShowingStandardControls:(BOOL)controls;
- (void)videoViewDidBeginPlayback:(id)playback;
- (void)videoViewDidEndPlayback:(id)playback didFinish:(BOOL)finish;
- (void)videoViewDidPausePlayback:(id)playback;
- (void)videoViewIsReadyToBeginPlayback:(id)playback;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CAMImagePickerCameraViewController

- (CAMImagePickerCameraViewController)initWithInitialImagePickerProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy)
  {
    v6 = [propertiesCopy objectForKey:*MEMORY[0x1E69DE8E8]];
    v7 = [v5 objectForKey:*MEMORY[0x1E69DE8F0]];
    v8 = [v5 objectForKey:*MEMORY[0x1E69DDE30]];
    v9 = v8;
    if (v6)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7 == 0;
    }

    if (v10 && v8 == 0)
    {
      v12 = 0;
    }

    else
    {
      v12 = objc_alloc_init(CAMUserPreferenceOverrides);
      if (v6)
      {
        v13 = -[CAMImagePickerCameraViewController _captureModeForImagePickerCameraCaptureMode:](self, "_captureModeForImagePickerCameraCaptureMode:", [v6 integerValue]);
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
        [(CAMUserPreferenceOverrides *)v12 setCaptureMode:v14];
      }

      if (v7)
      {
        v15 = -[CAMImagePickerCameraViewController _captureDeviceForImagePickerCameraDevice:](self, "_captureDeviceForImagePickerCameraDevice:", [v7 integerValue]);
        v16 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
        [(CAMUserPreferenceOverrides *)v12 setCaptureDevice:v16];
      }

      if (v9)
      {
        v17 = -[CAMImagePickerCameraViewController _videoConfigurationForImagePickerQualityType:](self, "_videoConfigurationForImagePickerQualityType:", [v9 integerValue]);
        v18 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
        [(CAMUserPreferenceOverrides *)v12 setVideoConfiguration:v18];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v19 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69DE998]];
  bOOLValue = [v19 BOOLValue];

  if (bOOLValue)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  v28.receiver = self;
  v28.super_class = CAMImagePickerCameraViewController;
  v22 = [(CAMCameraViewController *)&v28 initWithOverrides:v12 usingEmulationMode:v21];
  v23 = v22;
  if (v22)
  {
    v22->_editingAllowed = 1;
    v22->_videoEditingAllowed = 1;
    v22->_currentlyReviewing = 0;
    v22->_usingTelephonyUI = bOOLValue;
    mostRecentPhotoProperties = v22->_mostRecentPhotoProperties;
    v22->_mostRecentPhotoProperties = 0;

    mostRecentVideoProperties = v23->_mostRecentVideoProperties;
    v23->_mostRecentVideoProperties = 0;

    [(CAMCameraViewController *)v23 setCaptureDelegate:v23];
    [(CAMCameraViewController *)v23 setConfigurationDelegate:v23];
    [(CAMCameraViewController *)v23 setDisablingAdditionalCaptures:1];
    v26 = v23;
  }

  return v23;
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = CAMImagePickerCameraViewController;
  [(CAMCameraViewController *)&v6 loadView];
  view = [(CAMImagePickerCameraViewController *)self view];
  customOverlayView = [(CAMImagePickerCameraViewController *)self customOverlayView];
  if (customOverlayView)
  {
    [view setCustomOverlayView:customOverlayView];
  }

  _containingImagePickerController = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
  [(CAMImagePickerCameraViewController *)self _applyPropertiesFromImagePicker:_containingImagePickerController];
  [_containingImagePickerController setPreferredContentSize:{320.0, 568.0}];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CAMImagePickerCameraViewController;
  [(CAMCameraViewController *)&v6 viewWillAppear:appear];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  isStatusBarHidden = [mEMORY[0x1E69DC668] isStatusBarHidden];

  [(CAMImagePickerCameraViewController *)self _setStatusBarWasHidden:isStatusBarHidden];
  if ((isStatusBarHidden & 1) == 0 && ([(CAMImagePickerCameraViewController *)self _isInPopoverPresentation]& 1) == 0)
  {
    [(CAMImagePickerCameraViewController *)self _setStatusBarHidden:1];
  }

  [(CAMImagePickerCameraViewController *)self _createCropOverlayIfNecessary];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CAMImagePickerCameraViewController;
  [(CAMImagePickerCameraViewController *)&v4 viewWillDisappear:disappear];
  if (![(CAMImagePickerCameraViewController *)self _statusBarWasHidden]&& ([(CAMImagePickerCameraViewController *)self _isInPopoverPresentation]& 1) == 0)
  {
    [(CAMImagePickerCameraViewController *)self _setStatusBarHidden:0];
  }
}

- (void)_setStatusBarHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  initWithDefaultParameters = [objc_alloc(MEMORY[0x1E69DCFA0]) initWithDefaultParameters];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] setStatusBarHidden:hiddenCopy animationParameters:initWithDefaultParameters];
}

- (BOOL)isShowingStandardControls
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  isShowingStandardControls = [viewfinderViewController isShowingStandardControls];

  return isShowingStandardControls;
}

- (void)setShowingStandardControls:(BOOL)controls
{
  controlsCopy = controls;
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController setShowingStandardControls:controlsCopy];
}

- (int64_t)imagePickerVideoQuality
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  v4 = -[CAMImagePickerCameraViewController _imagePickerQualityTypeForVideoConfiguration:](self, "_imagePickerQualityTypeForVideoConfiguration:", [viewfinderViewController imagePickerVideoConfiguration]);

  return v4;
}

- (void)setImagePickerVideoQuality:(int64_t)quality
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController setImagePickerVideoConfiguration:{-[CAMImagePickerCameraViewController _videoConfigurationForImagePickerQualityType:](self, "_videoConfigurationForImagePickerQualityType:", quality)}];
}

- (double)maximumVideoRecordingDuration
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController maximumVideoRecordingDuration];
  v4 = v3;

  return v4;
}

- (void)setMaximumVideoRecordingDuration:(double)duration
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController setMaximumVideoRecordingDuration:duration];
}

- (void)setCustomOverlayView:(id)view
{
  viewCopy = view;
  if (self->_customOverlayView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(&self->_customOverlayView, view);
    viewCopy = [(CAMImagePickerCameraViewController *)self isViewLoaded];
    if (viewCopy)
    {
      view = [(CAMImagePickerCameraViewController *)self view];
      [view setCustomOverlayView:v7];
    }
  }

  MEMORY[0x1EEE66BE0](viewCopy);
}

- (CGAffineTransform)customPreviewViewTransform
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  if (viewfinderViewController)
  {
    v6 = viewfinderViewController;
    [viewfinderViewController customPreviewViewTransform];
    viewfinderViewController = v6;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)setCustomPreviewViewTransform:(CGAffineTransform *)transform
{
  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  v5 = *&transform->c;
  v6[0] = *&transform->a;
  v6[1] = v5;
  v6[2] = *&transform->tx;
  [viewfinderViewController setCustomPreviewViewTransform:v6];
}

- (void)_setEditingAllowed:(BOOL)allowed
{
  if (self->_editingAllowed != allowed)
  {
    self->_editingAllowed = allowed;
    [(CAMImagePickerCameraViewController *)self _updateFromEditabilityChange];
  }
}

- (void)_applyPropertiesFromImagePicker:(id)picker
{
  pickerCopy = picker;
  _properties = [pickerCopy _properties];
  v6 = [_properties objectForKey:*MEMORY[0x1E69DE978]];
  bOOLValue = [v6 BOOLValue];

  [(CAMImagePickerCameraViewController *)self setShowingStandardControls:bOOLValue];
  v8 = [_properties objectForKey:*MEMORY[0x1E69DDE30]];
  v9 = v8;
  if (v8)
  {
    integerValue = [v8 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (integerValue == 3 && userInterfaceIdiom == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = integerValue;
  }

  [(CAMImagePickerCameraViewController *)self setImagePickerVideoQuality:v14];
  v15 = [_properties objectForKey:*MEMORY[0x1E69DDE28]];
  v16 = v15;
  if (v15)
  {
    [v15 doubleValue];
  }

  else
  {
    v17 = 600.0;
  }

  [(CAMImagePickerCameraViewController *)self setMaximumVideoRecordingDuration:v17];
  v18 = [_properties objectForKey:*MEMORY[0x1E69DE8F8]];
  v19 = v18;
  if (v18)
  {
    integerValue2 = [v18 integerValue];
  }

  else
  {
    integerValue2 = 0;
  }

  [(CAMImagePickerCameraViewController *)self _setCameraFlashMode:integerValue2];
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v21 = [_properties objectForKey:*MEMORY[0x1E69DE908]];
  v22 = v21;
  if (v21)
  {
    [v21 CGAffineTransformValue];
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
  }

  v29[0] = v30;
  v29[1] = v31;
  v29[2] = v32;
  [(CAMImagePickerCameraViewController *)self setCustomPreviewViewTransform:v29];
  _imagePickerSavingOptions = [pickerCopy _imagePickerSavingOptions];

  [(CAMImagePickerCameraViewController *)self _setPhotoSavingOptions:4 * (_imagePickerSavingOptions & 1u)];
  v24 = [_properties objectForKey:*MEMORY[0x1E69DDDD8]];
  bOOLValue2 = [v24 BOOLValue];

  [(CAMImagePickerCameraViewController *)self _setEditingAllowed:bOOLValue2];
  v26 = [_properties objectForKey:*MEMORY[0x1E69DE8D8]];
  bOOLValue3 = [v26 BOOLValue];

  [(CAMImagePickerCameraViewController *)self _setVideoEditingAllowed:bOOLValue3];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleEditabilityChanged_ name:*MEMORY[0x1E69DE928] object:0];
}

- (void)_setImagePickerMediaTypes:(id)types
{
  selfCopy = self;
  v25 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = typesCopy;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v8 = *MEMORY[0x1E6982E30];
    v9 = *MEMORY[0x1E6982EE8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        identifier = [v8 identifier];
        v13 = [v11 isEqualToString:identifier];

        v14 = &unk_1F16C7A48;
        if ((v13 & 1) == 0)
        {
          identifier2 = [v9 identifier];
          v16 = [v11 isEqualToString:identifier2];

          v14 = &unk_1F16C7A60;
          if (!v16)
          {
            continue;
          }
        }

        [v4 addObject:v14];
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  viewfinderViewController = [(CAMCameraViewController *)selfCopy viewfinderViewController];
  [viewfinderViewController setAvailableCaptureModes:v4];
}

- (id)_cameraOverlayView
{
  _cropOverlay = [(CAMImagePickerCameraViewController *)self _cropOverlay];
  overlayContainerView = [_cropOverlay overlayContainerView];

  return overlayContainerView;
}

- (void)_setCameraOverlayView:(id)view
{
  viewCopy = view;
  _cropOverlay = [(CAMImagePickerCameraViewController *)self _cropOverlay];
  [_cropOverlay setOverlayContainerView:viewCopy];
}

- (void)_setCameraViewTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->c;
  v4[0] = *&transform->a;
  v4[1] = v3;
  v4[2] = *&transform->tx;
  [(CAMImagePickerCameraViewController *)self setCustomPreviewViewTransform:v4];
}

- (int64_t)_cameraDevice
{
  captureDevice = [(CAMCameraViewController *)self captureDevice];

  return [(CAMImagePickerCameraViewController *)self _imagePickerCameraDeviceForCaptureDevice:captureDevice];
}

- (void)_setCameraDevice:(int64_t)device
{
  v4 = [(CAMImagePickerCameraViewController *)self _captureDeviceForImagePickerCameraDevice:device];
  captureMode = [(CAMCameraViewController *)self captureMode];

  [(CAMCameraViewController *)self configureForCaptureMode:captureMode captureDevice:v4];
}

- (int64_t)_cameraCaptureMode
{
  captureMode = [(CAMCameraViewController *)self captureMode];

  return [(CAMImagePickerCameraViewController *)self _imagePickerCameraCaptureModeForCaptureMode:captureMode];
}

- (void)_setCameraCaptureMode:(int64_t)mode
{
  v4 = [(CAMImagePickerCameraViewController *)self _captureModeForImagePickerCameraCaptureMode:mode];
  captureDevice = [(CAMCameraViewController *)self captureDevice];

  [(CAMCameraViewController *)self configureForCaptureMode:v4 captureDevice:captureDevice];
}

- (int64_t)_cameraFlashMode
{
  captureMode = [(CAMCameraViewController *)self captureMode];
  if (captureMode == 1)
  {
    flashMode = [CAMCaptureConversions flashModeForTorchMode:[(CAMCameraViewController *)self torchMode]];
    goto LABEL_5;
  }

  if (!captureMode)
  {
    flashMode = [(CAMCameraViewController *)self flashMode];
LABEL_5:
    v5 = flashMode;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return [(CAMImagePickerCameraViewController *)self _imagePickerCameraFlashModeForFlashMode:v5];
}

- (void)_setCameraFlashMode:(int64_t)mode
{
  v4 = [(CAMImagePickerCameraViewController *)self _flashModeForImagePickerCameraFlashMode:mode];
  captureMode = [(CAMCameraViewController *)self captureMode];
  if (captureMode == 1)
  {
    v6 = [CAMCaptureConversions torchModeForFlashMode:v4];

    [(CAMCameraViewController *)self setTorchMode:v6];
  }

  else if (!captureMode)
  {

    [(CAMCameraViewController *)self setFlashMode:v4];
  }
}

- (void)_handleEditabilityChanged:(id)changed
{
  _containingImagePickerController = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
  _properties = [_containingImagePickerController _properties];
  v5 = [_properties objectForKey:*MEMORY[0x1E69DDDD8]];
  bOOLValue = [v5 BOOLValue];

  [(CAMImagePickerCameraViewController *)self _setEditingAllowed:bOOLValue];
}

- (void)_updateFromEditabilityChange
{
  _isEditingAllowed = [(CAMImagePickerCameraViewController *)self _isEditingAllowed];
  _photoTileViewController = [(CAMImagePickerCameraViewController *)self _photoTileViewController];
  [_photoTileViewController setGesturesEnabled:_isEditingAllowed];
  _cropOverlay = [(CAMImagePickerCameraViewController *)self _cropOverlay];
  [_cropOverlay setShowsCropRegion:_isEditingAllowed];
}

- (id)_currentCancelButtonTitle
{
  _containingImagePickerController = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
  _properties = [_containingImagePickerController _properties];
  v4 = [_properties objectForKey:@"_UIImagePickerControllerCancelButtonTitle"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = CAMLocalizedFrameworkString(@"CANCEL", &stru_1F1660A30);
  }

  v7 = v6;

  return v7;
}

- (void)_createCropOverlayIfNecessary
{
  if (!self->__cropOverlay)
  {
    _containingImagePickerController = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
    _properties = [_containingImagePickerController _properties];
    v5 = [_properties objectForKeyedSubscript:*MEMORY[0x1E69DE998]];
    bOOLValue = [v5 BOOLValue];

    [(CAMImagePickerCameraViewController *)self _setUsingTelephonyUI:bOOLValue];
    if (bOOLValue)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v8 = getPLCropOverlayClass_softClass;
    v25 = getPLCropOverlayClass_softClass;
    if (!getPLCropOverlayClass_softClass)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __getPLCropOverlayClass_block_invoke;
      v21[3] = &unk_1E76F8100;
      v21[4] = &v22;
      __getPLCropOverlayClass_block_invoke(v21);
      v8 = v23[3];
    }

    v9 = v8;
    _Block_object_dispose(&v22, 8);
    v10 = [v8 alloc];
    view = [(CAMImagePickerCameraViewController *)self view];
    [view bounds];
    v12 = [v10 initWithFrame:v7 mode:1 offsettingStatusBar:?];
    cropOverlay = self->__cropOverlay;
    self->__cropOverlay = v12;

    [(PLCropOverlay *)self->__cropOverlay setDisplayedInPopover:[(CAMImagePickerCameraViewController *)self _isInPopoverPresentation]];
    [(PLCropOverlay *)self->__cropOverlay setControlsAreVisible:[(CAMImagePickerCameraViewController *)self isShowingStandardControls]];
    v14 = [_properties objectForKeyedSubscript:*MEMORY[0x1E69DE910]];
    if (![v14 length])
    {
      v15 = CAMLocalizedFrameworkString(@"USE_PHOTO", 0);

      v14 = v15;
    }

    [(PLCropOverlay *)self->__cropOverlay setDefaultOKButtonTitle:v14];
    v16 = [_properties objectForKeyedSubscript:*MEMORY[0x1E69DE900]];
    [(PLCropOverlay *)self->__cropOverlay setOverlayContainerView:v16];
    [(PLCropOverlay *)self->__cropOverlay setDelegate:self];
    [(PLCropOverlay *)self->__cropOverlay setAutoresizingMask:18];
    v17 = self->__cropOverlay;
    if (bOOLValue)
    {
      v18 = CAMLocalizedFrameworkString(@"TAKE_PICTURE", &stru_1F1660A30);
      [(PLCropOverlay *)v17 setTitle:v18];

      [(PLCropOverlay *)self->__cropOverlay setOKButtonShowsCamera:1];
      v19 = self->__cropOverlay;
      _currentCancelButtonTitle = [(CAMImagePickerCameraViewController *)self _currentCancelButtonTitle];
      [(PLCropOverlay *)v19 setCancelButtonTitle:_currentCancelButtonTitle];
    }

    else
    {
      [(PLCropOverlay *)v17 setShowsCropRegion:[(CAMImagePickerCameraViewController *)self _isEditingAllowed]];
    }

    [(CAMImagePickerCameraViewController *)self setCustomOverlayView:self->__cropOverlay];
  }
}

- (void)cameraViewController:(id)controller didCapturePhoto:(id)photo withProperties:(id)properties error:(id)error
{
  photoCopy = photo;
  propertiesCopy = properties;
  [(CAMImagePickerCameraViewController *)self _setMostRecentPhotoProperties:propertiesCopy];
  LODWORD(v53) = [(CAMImagePickerCameraViewController *)self isShowingStandardControls];
  if (v53)
  {
    [(CAMImagePickerCameraViewController *)self _setCurrentlyReviewing:1];
  }

  photoTileViewController = self->__photoTileViewController;
  if (photoTileViewController)
  {
    [(PLPhotoTileViewController *)photoTileViewController willMoveToParentViewController:0];
    view = [(PLPhotoTileViewController *)self->__photoTileViewController view];
    [view removeFromSuperview];

    [(PLPhotoTileViewController *)self->__photoTileViewController removeFromParentViewController];
    v11 = self->__photoTileViewController;
    self->__photoTileViewController = 0;
  }

  _containingImagePickerController = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
  _properties = [_containingImagePickerController _properties];
  v14 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerFullsizeImage"];
  v15 = v14;
  if (![(CAMImagePickerCameraViewController *)self _isEditingAllowed])
  {
    v15 = photoCopy;
  }

  v56 = v15;
  if ([(CAMImagePickerCameraViewController *)self _isUsingTelephonyUI])
  {
    view2 = [(CAMImagePickerCameraViewController *)self view];
    [view2 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = [getPLPhotoTileViewControllerClass() newPhotoTileViewControllerWithFrame:v15 image:1 allowZoomToFill:1 mode:{v18, v20, v22, v24}];
    v26 = self->__photoTileViewController;
    self->__photoTileViewController = v25;

    scrollView = [(PLPhotoTileViewController *)self->__photoTileViewController scrollView];
    [scrollView setContentInsetAdjustmentBehavior:2];

    [(PLPhotoTileViewController *)self->__photoTileViewController setShouldSupressViewWillTransitionToSize:1];
    v28 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerCaptureOrientation"];
    integerValue = [v28 integerValue];

    [(PLPhotoTileViewController *)self->__photoTileViewController setCenterContentVertically:(integerValue - 3) < 2];
  }

  else
  {
    viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
    [viewfinderViewController reviewUsingOverlayFrame];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v39 = [getPLPhotoTileViewControllerClass() newPhotoTileViewControllerWithFrame:v15 image:0 allowZoomToFill:1 mode:{v32, v34, v36, v38}];
    v40 = self->__photoTileViewController;
    self->__photoTileViewController = v39;

    [(PLPhotoTileViewController *)self->__photoTileViewController setShouldSupressViewWillTransitionToSize:1];
  }

  v41 = [_properties objectForKeyedSubscript:*MEMORY[0x1E69DE8B0]];
  -[PLPhotoTileViewController setForce1XCroppedImage:](self->__photoTileViewController, "setForce1XCroppedImage:", [v41 BOOLValue]);
  v57 = v14;
  [(PLPhotoTileViewController *)self->__photoTileViewController setUnscaledImage:v14];
  [(CAMImagePickerCameraViewController *)self _updateFromEditabilityChange];
  scrollView2 = [(PLPhotoTileViewController *)self->__photoTileViewController scrollView];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [scrollView2 setBackgroundColor:blackColor];

  _cropOverlay = [(CAMImagePickerCameraViewController *)self _cropOverlay];
  v45 = _properties;
  v46 = [_properties objectForKeyedSubscript:*MEMORY[0x1E69DE970]];
  bOOLValue = [v46 BOOLValue];

  if (v54)
  {
    v55 = _containingImagePickerController;
    v48 = propertiesCopy;
    [(CAMImagePickerCameraViewController *)self addChildViewController:self->__photoTileViewController];
    view3 = [(CAMImagePickerCameraViewController *)self view];
    view4 = [(PLPhotoTileViewController *)self->__photoTileViewController view];
    [view3 setAdditionalContentView:view4];

    [(PLPhotoTileViewController *)self->__photoTileViewController didMoveToParentViewController:self];
    if (bOOLValue)
    {
      viewfinderViewController2 = [(CAMCameraViewController *)self viewfinderViewController];
      [viewfinderViewController2 setPerformingReviewUsingOverlay:1];
      [_cropOverlay didCapturePhoto];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x1E69DE9A0] object:0];

    propertiesCopy = v48;
    _containingImagePickerController = v55;
  }

  else
  {
    [(CAMImagePickerCameraViewController *)self cropOverlay:_cropOverlay didFinishSaving:0];
    view3 = [(CAMCameraViewController *)self viewfinderViewController];
    [view3 setPerformingReviewUsingOverlay:0];
  }

  [_cropOverlay setUserInteractionEnabled:1];
}

- (void)cameraViewController:(id)controller didCaptureAVAsset:(id)asset andAudioMix:(id)mix withProperties:(id)properties error:(id)error
{
  controllerCopy = controller;
  assetCopy = asset;
  mixCopy = mix;
  propertiesCopy = properties;
  errorCopy = error;
  [(CAMImagePickerCameraViewController *)self _setMostRecentVideoProperties:propertiesCopy];
  _cropOverlay = [(CAMImagePickerCameraViewController *)self _cropOverlay];
  _containingImagePickerController = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
  _properties = [_containingImagePickerController _properties];
  v19 = [_properties objectForKeyedSubscript:*MEMORY[0x1E69DE970]];
  bOOLValue = [v19 BOOLValue];

  if ([(CAMImagePickerCameraViewController *)self isShowingStandardControls]&& bOOLValue)
  {
    [(CAMImagePickerCameraViewController *)self _setCurrentlyReviewing:1];
    photoTileViewController = self->__photoTileViewController;
    if (photoTileViewController)
    {
      [(PLPhotoTileViewController *)photoTileViewController willMoveToParentViewController:0];
      view = [(PLPhotoTileViewController *)self->__photoTileViewController view];
      [view removeFromSuperview];

      [(PLPhotoTileViewController *)self->__photoTileViewController removeFromParentViewController];
      v23 = self->__photoTileViewController;
      self->__photoTileViewController = 0;

      videoView = self->__videoView;
      self->__videoView = 0;
    }

    viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
    [viewfinderViewController reviewUsingOverlayFrame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v51 = controllerCopy;
    _isVideoEditingAllowed = [(CAMImagePickerCameraViewController *)self _isEditingAllowed]|| [(CAMImagePickerCameraViewController *)self _isVideoEditingAllowed];
    v37 = objc_alloc_init(getPLPhotoTileViewControllerClass());
    v38 = self->__photoTileViewController;
    self->__photoTileViewController = v37;

    view2 = [(PLPhotoTileViewController *)self->__photoTileViewController view];
    [view2 setFrame:{v27, v29, v31, v33}];

    view3 = [(PLPhotoTileViewController *)self->__photoTileViewController view];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [view3 setBackgroundColor:blackColor];

    [(PLPhotoTileViewController *)self->__photoTileViewController setShouldSupressViewWillTransitionToSize:1];
    v42 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerVideoURL"];
    v54 = 0;
    v55 = &v54;
    v56 = 0x2050000000;
    v43 = getPLVideoViewClass_softClass;
    v57 = getPLVideoViewClass_softClass;
    if (!getPLVideoViewClass_softClass)
    {
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __getPLVideoViewClass_block_invoke;
      v53[3] = &unk_1E76F8100;
      v53[4] = &v54;
      __getPLVideoViewClass_block_invoke(v53);
      v43 = v55[3];
    }

    v44 = v43;
    _Block_object_dispose(&v54, 8);
    v45 = [v43 videoViewForVideoFileAtURL:v42];
    v46 = self->__videoView;
    self->__videoView = v45;

    [(PLVideoView *)self->__videoView setFrame:v27, v29, v31, v33];
    [(PLVideoView *)self->__videoView setDelegate:self];
    [(PLVideoView *)self->__videoView setShowsScrubber:1];
    [(PLVideoView *)self->__videoView setShowsPlayOverlay:0];
    [(PLVideoView *)self->__videoView setCanEdit:_isVideoEditingAllowed];
    [(PLVideoView *)self->__videoView setImageTile:self->__photoTileViewController];
    [(PLPhotoTileViewController *)self->__photoTileViewController setVideoView:self->__videoView];
    [(CAMImagePickerCameraViewController *)self addChildViewController:self->__photoTileViewController];
    view4 = [(CAMImagePickerCameraViewController *)self view];
    view5 = [(PLPhotoTileViewController *)self->__photoTileViewController view];
    [view4 setAdditionalContentView:view5];

    [(PLPhotoTileViewController *)self->__photoTileViewController didMoveToParentViewController:self];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x1E69DE9A0] object:0];

    viewfinderViewController2 = [(CAMCameraViewController *)self viewfinderViewController];
    [viewfinderViewController2 setPerformingReviewUsingOverlay:1];
    [_cropOverlay didCaptureVideo];

    controllerCopy = v51;
  }

  else
  {
    v35 = [propertiesCopy objectForKeyedSubscript:@"CAMCameraViewControllerVideoURL"];
    path = [v35 path];
    [(CAMImagePickerCameraViewController *)self _handleCapturedImagePickerVideoAtPath:path withEditingMetadata:0];
  }
}

- (void)_removeFileAtPath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = 0;
  v5 = [defaultManager removeItemAtPath:pathCopy error:&v8];
  v6 = v8;
  if ((v5 & 1) == 0)
  {
    v7 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CAMImagePickerCameraViewController *)pathCopy _removeFileAtPath:v6, v7];
    }
  }
}

- (void)_resetTileViewControllerAndVideoView
{
  _videoView = [(CAMImagePickerCameraViewController *)self _videoView];
  _photoTileViewController = [(CAMImagePickerCameraViewController *)self _photoTileViewController];
  [_videoView setDelegate:0];
  [_photoTileViewController setVideoView:0];
  [_videoView removeFromSuperview];
  [_photoTileViewController willMoveToParentViewController:0];
  view = [_photoTileViewController view];
  [view removeFromSuperview];

  [_photoTileViewController removeFromParentViewController];
  photoTileViewController = self->__photoTileViewController;
  self->__photoTileViewController = 0;

  videoView = self->__videoView;
  self->__videoView = 0;

  [(CAMImagePickerCameraViewController *)self _setMostRecentPhotoProperties:0];
  [(CAMImagePickerCameraViewController *)self _setMostRecentVideoProperties:0];
}

- (void)cropOverlayWasCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  if (![(CAMImagePickerCameraViewController *)self _isCurrentlyReviewing])
  {
    _mostRecentVideoProperties = [(CAMImagePickerCameraViewController *)self _mostRecentVideoProperties];
    pathForVideoFile = [_mostRecentVideoProperties objectForKeyedSubscript:@"CAMCameraViewControllerVideoURL"];
    path = [pathForVideoFile path];
    [(CAMImagePickerCameraViewController *)self _removeFileAtPath:path];
    _containingImagePickerController = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
    [_containingImagePickerController _imagePickerDidCancel];

    goto LABEL_7;
  }

  [(CAMImagePickerCameraViewController *)self _setCurrentlyReviewing:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E69DE9A8] object:0];

  _mostRecentVideoProperties = [(CAMImagePickerCameraViewController *)self _photoTileViewController];
  videoView = [_mostRecentVideoProperties videoView];
  pathForVideoFile = [videoView pathForVideoFile];

  if (pathForVideoFile)
  {
    [(CAMImagePickerCameraViewController *)self _removeFileAtPath:pathForVideoFile];
  }

  [(CAMImagePickerCameraViewController *)self _resetTileViewControllerAndVideoView];
  if ([(CAMImagePickerCameraViewController *)self _isUsingTelephonyUI])
  {
    v8 = CAMLocalizedFrameworkString(@"TAKE_PICTURE", &stru_1F1660A30);
    [cancelledCopy setTitle:v8];

    [cancelledCopy setOKButtonShowsCamera:1];
    path = [(CAMImagePickerCameraViewController *)self _currentCancelButtonTitle];
    [cancelledCopy setCancelButtonTitle:path];
LABEL_7:
  }

  viewfinderViewController = [(CAMCameraViewController *)self viewfinderViewController];
  [viewfinderViewController setPerformingReviewUsingOverlay:0];
  [cancelledCopy setUserInteractionEnabled:1];
}

- (void)cropOverlayWasOKed:(id)ked
{
  v18[2] = *MEMORY[0x1E69E9840];
  kedCopy = ked;
  if ([(CAMImagePickerCameraViewController *)self _isCurrentlyReviewing])
  {
    _isEditingAllowed = [(CAMImagePickerCameraViewController *)self _isEditingAllowed];
    _photoTileViewController = [(CAMImagePickerCameraViewController *)self _photoTileViewController];
    videoView = [_photoTileViewController videoView];
    v8 = videoView;
    if (videoView)
    {
      if ([videoView isEditing])
      {
        [v8 startTime];
        v10 = v9;
        [v8 endTime];
        v12 = v11;
        v17[0] = *MEMORY[0x1E69DE9C0];
        v13 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
        v18[0] = v13;
        v17[1] = *MEMORY[0x1E69DE9B8];
        v14 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
        v18[1] = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
      }

      else
      {
        v15 = 0;
      }

      pathForVideoFile = [v8 pathForVideoFile];
      [(CAMImagePickerCameraViewController *)self _handleCapturedImagePickerVideoAtPath:pathForVideoFile withEditingMetadata:v15];
    }

    else if (_isEditingAllowed)
    {
      [kedCopy beginBackgroundSaveWithTile:_photoTileViewController progressTitle:0 completionCallbackTarget:self options:{-[CAMImagePickerCameraViewController _photoSavingOptions](self, "_photoSavingOptions")}];
    }

    else
    {
      [(CAMImagePickerCameraViewController *)self cropOverlay:kedCopy didFinishSaving:0];
    }
  }
}

- (void)cropOverlayPlay:(id)play
{
  _videoView = [(CAMImagePickerCameraViewController *)self _videoView];
  [_videoView play];
}

- (void)cropOverlayPause:(id)pause
{
  _videoView = [(CAMImagePickerCameraViewController *)self _videoView];
  [_videoView pause];
}

- (double)videoViewScrubberYOrigin:(id)origin forOrientation:(int64_t)orientation
{
  v4 = [(CAMImagePickerCameraViewController *)self view:origin];
  safeAreaLayoutGuide = [v4 safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v7 = v6;

  return v7;
}

- (void)videoViewIsReadyToBeginPlayback:(id)playback
{
  playbackCopy = playback;
  _containingImagePickerController = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
  _properties = [_containingImagePickerController _properties];
  v6 = [_properties objectForKey:*MEMORY[0x1E69DDE28]];
  if ([(CAMImagePickerCameraViewController *)self _isEditingAllowed])
  {
    LOBYTE(v7) = 0;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = ![(CAMImagePickerCameraViewController *)self _isVideoEditingAllowed];
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if ((v7 & 1) == 0)
  {
    [playbackCopy duration];
    v9 = v8;
    [v6 doubleValue];
    if (v9 > v10)
    {
      [v6 doubleValue];
      [playbackCopy setMaximumTrimLength:?];
      [playbackCopy setEditing:1];
      _cropOverlay = [(CAMImagePickerCameraViewController *)self _cropOverlay];
      bottomBar = [_cropOverlay bottomBar];
      [bottomBar bounds];
      [playbackCopy convertRect:bottomBar fromView:?];
      v14 = v13;
      v15 = CAMLocalizedFrameworkString(@"VIDEO_TOO_LONG_TITLE", 0);
      *&v16 = v14;
      [playbackCopy showTrimMessage:v15 withBottomY:v16];
    }
  }

LABEL_8:
}

- (void)videoViewDidBeginPlayback:(id)playback
{
  _cropOverlay = [(CAMImagePickerCameraViewController *)self _cropOverlay];
  [_cropOverlay didPlayVideo];
}

- (void)videoViewDidPausePlayback:(id)playback
{
  _cropOverlay = [(CAMImagePickerCameraViewController *)self _cropOverlay];
  [_cropOverlay didPauseVideo];
}

- (void)videoViewDidEndPlayback:(id)playback didFinish:(BOOL)finish
{
  v4 = [(CAMImagePickerCameraViewController *)self _cropOverlay:playback];
  [v4 didPauseVideo];
}

- (void)_handleCapturedImagePickerPhotoWithCropOverlayOutput:(id)output
{
  outputCopy = output;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:outputCopy];
  _mostRecentPhotoProperties = [(CAMImagePickerCameraViewController *)self _mostRecentPhotoProperties];
  v6 = [_mostRecentPhotoProperties objectForKeyedSubscript:@"CAMCameraViewControllerFullsizeImageData"];
  if (v6)
  {
    [v4 setObject:v6 forKey:*MEMORY[0x1E69C05B0]];
  }

  v22 = v6;
  v7 = [_mostRecentPhotoProperties objectForKeyedSubscript:@"CAMCameraViewControllerPhotoMetadata"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 mutableCopy];
    [CAMCaptureMetadataUtilities removeUnwantedKeysForPersistenceFromMetadata:v9];
    v10 = [v9 copy];
    [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69C05A8]];
  }

  _containingImagePickerController = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
  _photoTileViewController = [(CAMImagePickerCameraViewController *)self _photoTileViewController];
  _properties = [_containingImagePickerController _properties];
  v14 = [_properties objectForKeyedSubscript:*MEMORY[0x1E69DDDD8]];
  bOOLValue = [v14 BOOLValue];

  v16 = _containingImagePickerController;
  v17 = _photoTileViewController;
  v18 = v4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v19 = getPLNotifyImagePickerOfImageAvailabilitySymbolLoc_ptr;
  v27 = getPLNotifyImagePickerOfImageAvailabilitySymbolLoc_ptr;
  if (!getPLNotifyImagePickerOfImageAvailabilitySymbolLoc_ptr)
  {
    v20 = PhotoLibraryLibrary();
    v25[3] = dlsym(v20, "PLNotifyImagePickerOfImageAvailability");
    getPLNotifyImagePickerOfImageAvailabilitySymbolLoc_ptr = v25[3];
    v19 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v19)
  {
    setupFaceDetector = [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    _Block_object_dispose(&v24, 8);
    _Unwind_Resume(setupFaceDetector);
  }

  v19(v16, v17, 0, v18, bOOLValue);

  [(CAMImagePickerCameraViewController *)self _setMostRecentPhotoProperties:0];
}

- (void)_handleCapturedImagePickerVideoAtPath:(id)path withEditingMetadata:(id)metadata
{
  pathCopy = path;
  metadataCopy = metadata;
  _containingImagePickerController = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
  if (pathCopy)
  {
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];
  }

  else
  {
    v9 = 0;
  }

  v10 = _containingImagePickerController;
  v11 = v9;
  v12 = metadataCopy;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v13 = getPLNotifyImagePickerOfVideoAvailabilitySymbolLoc_ptr;
  v19 = getPLNotifyImagePickerOfVideoAvailabilitySymbolLoc_ptr;
  if (!getPLNotifyImagePickerOfVideoAvailabilitySymbolLoc_ptr)
  {
    v14 = PhotoLibraryLibrary();
    v17[3] = dlsym(v14, "PLNotifyImagePickerOfVideoAvailability");
    getPLNotifyImagePickerOfVideoAvailabilitySymbolLoc_ptr = v17[3];
    v13 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v13)
  {
    setupFaceDetector = [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    _Block_object_dispose(&v16, 8);
    _Unwind_Resume(setupFaceDetector);
  }

  v13(v10, v11, 0, v12);

  [(CAMImagePickerCameraViewController *)self _setMostRecentVideoProperties:0];
}

- (id)_containingImagePickerController
{
  parentViewController = [(CAMImagePickerCameraViewController *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = parentViewController;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (int64_t)_imagePickerCameraDeviceForCaptureDevice:(int64_t)device
{
  if ((device - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1A3A68848[device - 1];
  }
}

- (int64_t)_imagePickerCameraFlashModeForFlashMode:(int64_t)mode
{
  if (mode == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (mode == 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (int64_t)_flashModeForImagePickerCameraFlashMode:(int64_t)mode
{
  if (mode == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (mode == 0);
  }
}

- (int64_t)_imagePickerQualityTypeForVideoConfiguration:(int64_t)configuration
{
  if ((configuration - 10000) >= 6)
  {
    return 1;
  }

  else
  {
    return configuration - 10000;
  }
}

- (int64_t)_videoConfigurationForImagePickerQualityType:(int64_t)type
{
  if (type >= 6)
  {
    return 0;
  }

  else
  {
    return type + 10000;
  }
}

- (void)_removeFileAtPath:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A3640000, log, OS_LOG_TYPE_ERROR, "Failed to remove file at path %{public}@ (%{public}@)", &v3, 0x16u);
}

@end