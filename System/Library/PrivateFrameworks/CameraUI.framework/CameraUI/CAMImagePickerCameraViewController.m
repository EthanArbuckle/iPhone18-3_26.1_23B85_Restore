@interface CAMImagePickerCameraViewController
- (BOOL)isShowingStandardControls;
- (CAMImagePickerCameraViewController)initWithInitialImagePickerProperties:(id)a3;
- (CGAffineTransform)customPreviewViewTransform;
- (double)maximumVideoRecordingDuration;
- (double)videoViewScrubberYOrigin:(id)a3 forOrientation:(int64_t)a4;
- (id)_cameraOverlayView;
- (id)_containingImagePickerController;
- (id)_currentCancelButtonTitle;
- (int64_t)_cameraCaptureMode;
- (int64_t)_cameraDevice;
- (int64_t)_cameraFlashMode;
- (int64_t)_flashModeForImagePickerCameraFlashMode:(int64_t)a3;
- (int64_t)_imagePickerCameraDeviceForCaptureDevice:(int64_t)a3;
- (int64_t)_imagePickerCameraFlashModeForFlashMode:(int64_t)a3;
- (int64_t)_imagePickerQualityTypeForVideoConfiguration:(int64_t)a3;
- (int64_t)_videoConfigurationForImagePickerQualityType:(int64_t)a3;
- (int64_t)imagePickerVideoQuality;
- (void)_applyPropertiesFromImagePicker:(id)a3;
- (void)_createCropOverlayIfNecessary;
- (void)_handleCapturedImagePickerPhotoWithCropOverlayOutput:(id)a3;
- (void)_handleCapturedImagePickerVideoAtPath:(id)a3 withEditingMetadata:(id)a4;
- (void)_handleEditabilityChanged:(id)a3;
- (void)_removeFileAtPath:(id)a3;
- (void)_resetTileViewControllerAndVideoView;
- (void)_setCameraCaptureMode:(int64_t)a3;
- (void)_setCameraDevice:(int64_t)a3;
- (void)_setCameraFlashMode:(int64_t)a3;
- (void)_setCameraOverlayView:(id)a3;
- (void)_setCameraViewTransform:(CGAffineTransform *)a3;
- (void)_setEditingAllowed:(BOOL)a3;
- (void)_setImagePickerMediaTypes:(id)a3;
- (void)_setStatusBarHidden:(BOOL)a3;
- (void)_updateFromEditabilityChange;
- (void)cameraViewController:(id)a3 didCaptureAVAsset:(id)a4 andAudioMix:(id)a5 withProperties:(id)a6 error:(id)a7;
- (void)cameraViewController:(id)a3 didCapturePhoto:(id)a4 withProperties:(id)a5 error:(id)a6;
- (void)cropOverlayPause:(id)a3;
- (void)cropOverlayPlay:(id)a3;
- (void)cropOverlayWasCancelled:(id)a3;
- (void)cropOverlayWasOKed:(id)a3;
- (void)loadView;
- (void)setCustomOverlayView:(id)a3;
- (void)setCustomPreviewViewTransform:(CGAffineTransform *)a3;
- (void)setImagePickerVideoQuality:(int64_t)a3;
- (void)setMaximumVideoRecordingDuration:(double)a3;
- (void)setShowingStandardControls:(BOOL)a3;
- (void)videoViewDidBeginPlayback:(id)a3;
- (void)videoViewDidEndPlayback:(id)a3 didFinish:(BOOL)a4;
- (void)videoViewDidPausePlayback:(id)a3;
- (void)videoViewIsReadyToBeginPlayback:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CAMImagePickerCameraViewController

- (CAMImagePickerCameraViewController)initWithInitialImagePickerProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:*MEMORY[0x1E69DE8E8]];
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
  v20 = [v19 BOOLValue];

  if (v20)
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
    v22->_usingTelephonyUI = v20;
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
  v3 = [(CAMImagePickerCameraViewController *)self view];
  v4 = [(CAMImagePickerCameraViewController *)self customOverlayView];
  if (v4)
  {
    [v3 setCustomOverlayView:v4];
  }

  v5 = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
  [(CAMImagePickerCameraViewController *)self _applyPropertiesFromImagePicker:v5];
  [v5 setPreferredContentSize:{320.0, 568.0}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CAMImagePickerCameraViewController;
  [(CAMCameraViewController *)&v6 viewWillAppear:a3];
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 isStatusBarHidden];

  [(CAMImagePickerCameraViewController *)self _setStatusBarWasHidden:v5];
  if ((v5 & 1) == 0 && ([(CAMImagePickerCameraViewController *)self _isInPopoverPresentation]& 1) == 0)
  {
    [(CAMImagePickerCameraViewController *)self _setStatusBarHidden:1];
  }

  [(CAMImagePickerCameraViewController *)self _createCropOverlayIfNecessary];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CAMImagePickerCameraViewController;
  [(CAMImagePickerCameraViewController *)&v4 viewWillDisappear:a3];
  if (![(CAMImagePickerCameraViewController *)self _statusBarWasHidden]&& ([(CAMImagePickerCameraViewController *)self _isInPopoverPresentation]& 1) == 0)
  {
    [(CAMImagePickerCameraViewController *)self _setStatusBarHidden:0];
  }
}

- (void)_setStatusBarHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69DCFA0]) initWithDefaultParameters];
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  [v4 setStatusBarHidden:v3 animationParameters:v5];
}

- (BOOL)isShowingStandardControls
{
  v2 = [(CAMCameraViewController *)self viewfinderViewController];
  v3 = [v2 isShowingStandardControls];

  return v3;
}

- (void)setShowingStandardControls:(BOOL)a3
{
  v3 = a3;
  v4 = [(CAMCameraViewController *)self viewfinderViewController];
  [v4 setShowingStandardControls:v3];
}

- (int64_t)imagePickerVideoQuality
{
  v3 = [(CAMCameraViewController *)self viewfinderViewController];
  v4 = -[CAMImagePickerCameraViewController _imagePickerQualityTypeForVideoConfiguration:](self, "_imagePickerQualityTypeForVideoConfiguration:", [v3 imagePickerVideoConfiguration]);

  return v4;
}

- (void)setImagePickerVideoQuality:(int64_t)a3
{
  v5 = [(CAMCameraViewController *)self viewfinderViewController];
  [v5 setImagePickerVideoConfiguration:{-[CAMImagePickerCameraViewController _videoConfigurationForImagePickerQualityType:](self, "_videoConfigurationForImagePickerQualityType:", a3)}];
}

- (double)maximumVideoRecordingDuration
{
  v2 = [(CAMCameraViewController *)self viewfinderViewController];
  [v2 maximumVideoRecordingDuration];
  v4 = v3;

  return v4;
}

- (void)setMaximumVideoRecordingDuration:(double)a3
{
  v4 = [(CAMCameraViewController *)self viewfinderViewController];
  [v4 setMaximumVideoRecordingDuration:a3];
}

- (void)setCustomOverlayView:(id)a3
{
  v5 = a3;
  if (self->_customOverlayView != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_customOverlayView, a3);
    v5 = [(CAMImagePickerCameraViewController *)self isViewLoaded];
    if (v5)
    {
      v6 = [(CAMImagePickerCameraViewController *)self view];
      [v6 setCustomOverlayView:v7];
    }
  }

  MEMORY[0x1EEE66BE0](v5);
}

- (CGAffineTransform)customPreviewViewTransform
{
  v4 = [(CAMCameraViewController *)self viewfinderViewController];
  if (v4)
  {
    v6 = v4;
    [v4 customPreviewViewTransform];
    v4 = v6;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)setCustomPreviewViewTransform:(CGAffineTransform *)a3
{
  v4 = [(CAMCameraViewController *)self viewfinderViewController];
  v5 = *&a3->c;
  v6[0] = *&a3->a;
  v6[1] = v5;
  v6[2] = *&a3->tx;
  [v4 setCustomPreviewViewTransform:v6];
}

- (void)_setEditingAllowed:(BOOL)a3
{
  if (self->_editingAllowed != a3)
  {
    self->_editingAllowed = a3;
    [(CAMImagePickerCameraViewController *)self _updateFromEditabilityChange];
  }
}

- (void)_applyPropertiesFromImagePicker:(id)a3
{
  v4 = a3;
  v5 = [v4 _properties];
  v6 = [v5 objectForKey:*MEMORY[0x1E69DE978]];
  v7 = [v6 BOOLValue];

  [(CAMImagePickerCameraViewController *)self setShowingStandardControls:v7];
  v8 = [v5 objectForKey:*MEMORY[0x1E69DDE30]];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 integerValue];
  }

  else
  {
    v10 = 1;
  }

  v11 = [MEMORY[0x1E69DC938] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v10 == 3 && v12 == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v10;
  }

  [(CAMImagePickerCameraViewController *)self setImagePickerVideoQuality:v14];
  v15 = [v5 objectForKey:*MEMORY[0x1E69DDE28]];
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
  v18 = [v5 objectForKey:*MEMORY[0x1E69DE8F8]];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 integerValue];
  }

  else
  {
    v20 = 0;
  }

  [(CAMImagePickerCameraViewController *)self _setCameraFlashMode:v20];
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v21 = [v5 objectForKey:*MEMORY[0x1E69DE908]];
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
  v23 = [v4 _imagePickerSavingOptions];

  [(CAMImagePickerCameraViewController *)self _setPhotoSavingOptions:4 * (v23 & 1u)];
  v24 = [v5 objectForKey:*MEMORY[0x1E69DDDD8]];
  v25 = [v24 BOOLValue];

  [(CAMImagePickerCameraViewController *)self _setEditingAllowed:v25];
  v26 = [v5 objectForKey:*MEMORY[0x1E69DE8D8]];
  v27 = [v26 BOOLValue];

  [(CAMImagePickerCameraViewController *)self _setVideoEditingAllowed:v27];
  v28 = [MEMORY[0x1E696AD88] defaultCenter];
  [v28 addObserver:self selector:sel__handleEditabilityChanged_ name:*MEMORY[0x1E69DE928] object:0];
}

- (void)_setImagePickerMediaTypes:(id)a3
{
  v18 = self;
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
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
        v12 = [v8 identifier];
        v13 = [v11 isEqualToString:v12];

        v14 = &unk_1F16C7A48;
        if ((v13 & 1) == 0)
        {
          v15 = [v9 identifier];
          v16 = [v11 isEqualToString:v15];

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

  v17 = [(CAMCameraViewController *)v18 viewfinderViewController];
  [v17 setAvailableCaptureModes:v4];
}

- (id)_cameraOverlayView
{
  v2 = [(CAMImagePickerCameraViewController *)self _cropOverlay];
  v3 = [v2 overlayContainerView];

  return v3;
}

- (void)_setCameraOverlayView:(id)a3
{
  v4 = a3;
  v5 = [(CAMImagePickerCameraViewController *)self _cropOverlay];
  [v5 setOverlayContainerView:v4];
}

- (void)_setCameraViewTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->c;
  v4[0] = *&a3->a;
  v4[1] = v3;
  v4[2] = *&a3->tx;
  [(CAMImagePickerCameraViewController *)self setCustomPreviewViewTransform:v4];
}

- (int64_t)_cameraDevice
{
  v3 = [(CAMCameraViewController *)self captureDevice];

  return [(CAMImagePickerCameraViewController *)self _imagePickerCameraDeviceForCaptureDevice:v3];
}

- (void)_setCameraDevice:(int64_t)a3
{
  v4 = [(CAMImagePickerCameraViewController *)self _captureDeviceForImagePickerCameraDevice:a3];
  v5 = [(CAMCameraViewController *)self captureMode];

  [(CAMCameraViewController *)self configureForCaptureMode:v5 captureDevice:v4];
}

- (int64_t)_cameraCaptureMode
{
  v3 = [(CAMCameraViewController *)self captureMode];

  return [(CAMImagePickerCameraViewController *)self _imagePickerCameraCaptureModeForCaptureMode:v3];
}

- (void)_setCameraCaptureMode:(int64_t)a3
{
  v4 = [(CAMImagePickerCameraViewController *)self _captureModeForImagePickerCameraCaptureMode:a3];
  v5 = [(CAMCameraViewController *)self captureDevice];

  [(CAMCameraViewController *)self configureForCaptureMode:v4 captureDevice:v5];
}

- (int64_t)_cameraFlashMode
{
  v3 = [(CAMCameraViewController *)self captureMode];
  if (v3 == 1)
  {
    v4 = [CAMCaptureConversions flashModeForTorchMode:[(CAMCameraViewController *)self torchMode]];
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = [(CAMCameraViewController *)self flashMode];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return [(CAMImagePickerCameraViewController *)self _imagePickerCameraFlashModeForFlashMode:v5];
}

- (void)_setCameraFlashMode:(int64_t)a3
{
  v4 = [(CAMImagePickerCameraViewController *)self _flashModeForImagePickerCameraFlashMode:a3];
  v5 = [(CAMCameraViewController *)self captureMode];
  if (v5 == 1)
  {
    v6 = [CAMCaptureConversions torchModeForFlashMode:v4];

    [(CAMCameraViewController *)self setTorchMode:v6];
  }

  else if (!v5)
  {

    [(CAMCameraViewController *)self setFlashMode:v4];
  }
}

- (void)_handleEditabilityChanged:(id)a3
{
  v7 = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
  v4 = [v7 _properties];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DDDD8]];
  v6 = [v5 BOOLValue];

  [(CAMImagePickerCameraViewController *)self _setEditingAllowed:v6];
}

- (void)_updateFromEditabilityChange
{
  v3 = [(CAMImagePickerCameraViewController *)self _isEditingAllowed];
  v5 = [(CAMImagePickerCameraViewController *)self _photoTileViewController];
  [v5 setGesturesEnabled:v3];
  v4 = [(CAMImagePickerCameraViewController *)self _cropOverlay];
  [v4 setShowsCropRegion:v3];
}

- (id)_currentCancelButtonTitle
{
  v2 = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
  v3 = [v2 _properties];
  v4 = [v3 objectForKey:@"_UIImagePickerControllerCancelButtonTitle"];
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
    v3 = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
    v4 = [v3 _properties];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DE998]];
    v6 = [v5 BOOLValue];

    [(CAMImagePickerCameraViewController *)self _setUsingTelephonyUI:v6];
    if (v6)
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
    v11 = [(CAMImagePickerCameraViewController *)self view];
    [v11 bounds];
    v12 = [v10 initWithFrame:v7 mode:1 offsettingStatusBar:?];
    cropOverlay = self->__cropOverlay;
    self->__cropOverlay = v12;

    [(PLCropOverlay *)self->__cropOverlay setDisplayedInPopover:[(CAMImagePickerCameraViewController *)self _isInPopoverPresentation]];
    [(PLCropOverlay *)self->__cropOverlay setControlsAreVisible:[(CAMImagePickerCameraViewController *)self isShowingStandardControls]];
    v14 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DE910]];
    if (![v14 length])
    {
      v15 = CAMLocalizedFrameworkString(@"USE_PHOTO", 0);

      v14 = v15;
    }

    [(PLCropOverlay *)self->__cropOverlay setDefaultOKButtonTitle:v14];
    v16 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DE900]];
    [(PLCropOverlay *)self->__cropOverlay setOverlayContainerView:v16];
    [(PLCropOverlay *)self->__cropOverlay setDelegate:self];
    [(PLCropOverlay *)self->__cropOverlay setAutoresizingMask:18];
    v17 = self->__cropOverlay;
    if (v6)
    {
      v18 = CAMLocalizedFrameworkString(@"TAKE_PICTURE", &stru_1F1660A30);
      [(PLCropOverlay *)v17 setTitle:v18];

      [(PLCropOverlay *)self->__cropOverlay setOKButtonShowsCamera:1];
      v19 = self->__cropOverlay;
      v20 = [(CAMImagePickerCameraViewController *)self _currentCancelButtonTitle];
      [(PLCropOverlay *)v19 setCancelButtonTitle:v20];
    }

    else
    {
      [(PLCropOverlay *)v17 setShowsCropRegion:[(CAMImagePickerCameraViewController *)self _isEditingAllowed]];
    }

    [(CAMImagePickerCameraViewController *)self setCustomOverlayView:self->__cropOverlay];
  }
}

- (void)cameraViewController:(id)a3 didCapturePhoto:(id)a4 withProperties:(id)a5 error:(id)a6
{
  v58 = a4;
  v8 = a5;
  [(CAMImagePickerCameraViewController *)self _setMostRecentPhotoProperties:v8];
  LODWORD(v53) = [(CAMImagePickerCameraViewController *)self isShowingStandardControls];
  if (v53)
  {
    [(CAMImagePickerCameraViewController *)self _setCurrentlyReviewing:1];
  }

  photoTileViewController = self->__photoTileViewController;
  if (photoTileViewController)
  {
    [(PLPhotoTileViewController *)photoTileViewController willMoveToParentViewController:0];
    v10 = [(PLPhotoTileViewController *)self->__photoTileViewController view];
    [v10 removeFromSuperview];

    [(PLPhotoTileViewController *)self->__photoTileViewController removeFromParentViewController];
    v11 = self->__photoTileViewController;
    self->__photoTileViewController = 0;
  }

  v12 = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
  v13 = [v12 _properties];
  v14 = [v8 objectForKeyedSubscript:@"CAMCameraViewControllerFullsizeImage"];
  v15 = v14;
  if (![(CAMImagePickerCameraViewController *)self _isEditingAllowed])
  {
    v15 = v58;
  }

  v56 = v15;
  if ([(CAMImagePickerCameraViewController *)self _isUsingTelephonyUI])
  {
    v16 = [(CAMImagePickerCameraViewController *)self view];
    [v16 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = [getPLPhotoTileViewControllerClass() newPhotoTileViewControllerWithFrame:v15 image:1 allowZoomToFill:1 mode:{v18, v20, v22, v24}];
    v26 = self->__photoTileViewController;
    self->__photoTileViewController = v25;

    v27 = [(PLPhotoTileViewController *)self->__photoTileViewController scrollView];
    [v27 setContentInsetAdjustmentBehavior:2];

    [(PLPhotoTileViewController *)self->__photoTileViewController setShouldSupressViewWillTransitionToSize:1];
    v28 = [v8 objectForKeyedSubscript:@"CAMCameraViewControllerCaptureOrientation"];
    v29 = [v28 integerValue];

    [(PLPhotoTileViewController *)self->__photoTileViewController setCenterContentVertically:(v29 - 3) < 2];
  }

  else
  {
    v30 = [(CAMCameraViewController *)self viewfinderViewController];
    [v30 reviewUsingOverlayFrame];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v39 = [getPLPhotoTileViewControllerClass() newPhotoTileViewControllerWithFrame:v15 image:0 allowZoomToFill:1 mode:{v32, v34, v36, v38}];
    v40 = self->__photoTileViewController;
    self->__photoTileViewController = v39;

    [(PLPhotoTileViewController *)self->__photoTileViewController setShouldSupressViewWillTransitionToSize:1];
  }

  v41 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69DE8B0]];
  -[PLPhotoTileViewController setForce1XCroppedImage:](self->__photoTileViewController, "setForce1XCroppedImage:", [v41 BOOLValue]);
  v57 = v14;
  [(PLPhotoTileViewController *)self->__photoTileViewController setUnscaledImage:v14];
  [(CAMImagePickerCameraViewController *)self _updateFromEditabilityChange];
  v42 = [(PLPhotoTileViewController *)self->__photoTileViewController scrollView];
  v43 = [MEMORY[0x1E69DC888] blackColor];
  [v42 setBackgroundColor:v43];

  v44 = [(CAMImagePickerCameraViewController *)self _cropOverlay];
  v45 = v13;
  v46 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69DE970]];
  v47 = [v46 BOOLValue];

  if (v54)
  {
    v55 = v12;
    v48 = v8;
    [(CAMImagePickerCameraViewController *)self addChildViewController:self->__photoTileViewController];
    v49 = [(CAMImagePickerCameraViewController *)self view];
    v50 = [(PLPhotoTileViewController *)self->__photoTileViewController view];
    [v49 setAdditionalContentView:v50];

    [(PLPhotoTileViewController *)self->__photoTileViewController didMoveToParentViewController:self];
    if (v47)
    {
      v51 = [(CAMCameraViewController *)self viewfinderViewController];
      [v51 setPerformingReviewUsingOverlay:1];
      [v44 didCapturePhoto];
    }

    v52 = [MEMORY[0x1E696AD88] defaultCenter];
    [v52 postNotificationName:*MEMORY[0x1E69DE9A0] object:0];

    v8 = v48;
    v12 = v55;
  }

  else
  {
    [(CAMImagePickerCameraViewController *)self cropOverlay:v44 didFinishSaving:0];
    v49 = [(CAMCameraViewController *)self viewfinderViewController];
    [v49 setPerformingReviewUsingOverlay:0];
  }

  [v44 setUserInteractionEnabled:1];
}

- (void)cameraViewController:(id)a3 didCaptureAVAsset:(id)a4 andAudioMix:(id)a5 withProperties:(id)a6 error:(id)a7
{
  v12 = a3;
  v52 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  [(CAMImagePickerCameraViewController *)self _setMostRecentVideoProperties:v14];
  v16 = [(CAMImagePickerCameraViewController *)self _cropOverlay];
  v17 = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
  v18 = [v17 _properties];
  v19 = [v18 objectForKeyedSubscript:*MEMORY[0x1E69DE970]];
  v20 = [v19 BOOLValue];

  if ([(CAMImagePickerCameraViewController *)self isShowingStandardControls]&& v20)
  {
    [(CAMImagePickerCameraViewController *)self _setCurrentlyReviewing:1];
    photoTileViewController = self->__photoTileViewController;
    if (photoTileViewController)
    {
      [(PLPhotoTileViewController *)photoTileViewController willMoveToParentViewController:0];
      v22 = [(PLPhotoTileViewController *)self->__photoTileViewController view];
      [v22 removeFromSuperview];

      [(PLPhotoTileViewController *)self->__photoTileViewController removeFromParentViewController];
      v23 = self->__photoTileViewController;
      self->__photoTileViewController = 0;

      videoView = self->__videoView;
      self->__videoView = 0;
    }

    v25 = [(CAMCameraViewController *)self viewfinderViewController];
    [v25 reviewUsingOverlayFrame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v51 = v12;
    v34 = [(CAMImagePickerCameraViewController *)self _isEditingAllowed]|| [(CAMImagePickerCameraViewController *)self _isVideoEditingAllowed];
    v37 = objc_alloc_init(getPLPhotoTileViewControllerClass());
    v38 = self->__photoTileViewController;
    self->__photoTileViewController = v37;

    v39 = [(PLPhotoTileViewController *)self->__photoTileViewController view];
    [v39 setFrame:{v27, v29, v31, v33}];

    v40 = [(PLPhotoTileViewController *)self->__photoTileViewController view];
    v41 = [MEMORY[0x1E69DC888] blackColor];
    [v40 setBackgroundColor:v41];

    [(PLPhotoTileViewController *)self->__photoTileViewController setShouldSupressViewWillTransitionToSize:1];
    v42 = [v14 objectForKeyedSubscript:@"CAMCameraViewControllerVideoURL"];
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
    [(PLVideoView *)self->__videoView setCanEdit:v34];
    [(PLVideoView *)self->__videoView setImageTile:self->__photoTileViewController];
    [(PLPhotoTileViewController *)self->__photoTileViewController setVideoView:self->__videoView];
    [(CAMImagePickerCameraViewController *)self addChildViewController:self->__photoTileViewController];
    v47 = [(CAMImagePickerCameraViewController *)self view];
    v48 = [(PLPhotoTileViewController *)self->__photoTileViewController view];
    [v47 setAdditionalContentView:v48];

    [(PLPhotoTileViewController *)self->__photoTileViewController didMoveToParentViewController:self];
    v49 = [MEMORY[0x1E696AD88] defaultCenter];
    [v49 postNotificationName:*MEMORY[0x1E69DE9A0] object:0];

    v50 = [(CAMCameraViewController *)self viewfinderViewController];
    [v50 setPerformingReviewUsingOverlay:1];
    [v16 didCaptureVideo];

    v12 = v51;
  }

  else
  {
    v35 = [v14 objectForKeyedSubscript:@"CAMCameraViewControllerVideoURL"];
    v36 = [v35 path];
    [(CAMImagePickerCameraViewController *)self _handleCapturedImagePickerVideoAtPath:v36 withEditingMetadata:0];
  }
}

- (void)_removeFileAtPath:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = 0;
  v5 = [v4 removeItemAtPath:v3 error:&v8];
  v6 = v8;
  if ((v5 & 1) == 0)
  {
    v7 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CAMImagePickerCameraViewController *)v3 _removeFileAtPath:v6, v7];
    }
  }
}

- (void)_resetTileViewControllerAndVideoView
{
  v7 = [(CAMImagePickerCameraViewController *)self _videoView];
  v3 = [(CAMImagePickerCameraViewController *)self _photoTileViewController];
  [v7 setDelegate:0];
  [v3 setVideoView:0];
  [v7 removeFromSuperview];
  [v3 willMoveToParentViewController:0];
  v4 = [v3 view];
  [v4 removeFromSuperview];

  [v3 removeFromParentViewController];
  photoTileViewController = self->__photoTileViewController;
  self->__photoTileViewController = 0;

  videoView = self->__videoView;
  self->__videoView = 0;

  [(CAMImagePickerCameraViewController *)self _setMostRecentPhotoProperties:0];
  [(CAMImagePickerCameraViewController *)self _setMostRecentVideoProperties:0];
}

- (void)cropOverlayWasCancelled:(id)a3
{
  v12 = a3;
  if (![(CAMImagePickerCameraViewController *)self _isCurrentlyReviewing])
  {
    v5 = [(CAMImagePickerCameraViewController *)self _mostRecentVideoProperties];
    v7 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerVideoURL"];
    v9 = [v7 path];
    [(CAMImagePickerCameraViewController *)self _removeFileAtPath:v9];
    v10 = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
    [v10 _imagePickerDidCancel];

    goto LABEL_7;
  }

  [(CAMImagePickerCameraViewController *)self _setCurrentlyReviewing:0];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:*MEMORY[0x1E69DE9A8] object:0];

  v5 = [(CAMImagePickerCameraViewController *)self _photoTileViewController];
  v6 = [v5 videoView];
  v7 = [v6 pathForVideoFile];

  if (v7)
  {
    [(CAMImagePickerCameraViewController *)self _removeFileAtPath:v7];
  }

  [(CAMImagePickerCameraViewController *)self _resetTileViewControllerAndVideoView];
  if ([(CAMImagePickerCameraViewController *)self _isUsingTelephonyUI])
  {
    v8 = CAMLocalizedFrameworkString(@"TAKE_PICTURE", &stru_1F1660A30);
    [v12 setTitle:v8];

    [v12 setOKButtonShowsCamera:1];
    v9 = [(CAMImagePickerCameraViewController *)self _currentCancelButtonTitle];
    [v12 setCancelButtonTitle:v9];
LABEL_7:
  }

  v11 = [(CAMCameraViewController *)self viewfinderViewController];
  [v11 setPerformingReviewUsingOverlay:0];
  [v12 setUserInteractionEnabled:1];
}

- (void)cropOverlayWasOKed:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CAMImagePickerCameraViewController *)self _isCurrentlyReviewing])
  {
    v5 = [(CAMImagePickerCameraViewController *)self _isEditingAllowed];
    v6 = [(CAMImagePickerCameraViewController *)self _photoTileViewController];
    v7 = [v6 videoView];
    v8 = v7;
    if (v7)
    {
      if ([v7 isEditing])
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

      v16 = [v8 pathForVideoFile];
      [(CAMImagePickerCameraViewController *)self _handleCapturedImagePickerVideoAtPath:v16 withEditingMetadata:v15];
    }

    else if (v5)
    {
      [v4 beginBackgroundSaveWithTile:v6 progressTitle:0 completionCallbackTarget:self options:{-[CAMImagePickerCameraViewController _photoSavingOptions](self, "_photoSavingOptions")}];
    }

    else
    {
      [(CAMImagePickerCameraViewController *)self cropOverlay:v4 didFinishSaving:0];
    }
  }
}

- (void)cropOverlayPlay:(id)a3
{
  v3 = [(CAMImagePickerCameraViewController *)self _videoView];
  [v3 play];
}

- (void)cropOverlayPause:(id)a3
{
  v3 = [(CAMImagePickerCameraViewController *)self _videoView];
  [v3 pause];
}

- (double)videoViewScrubberYOrigin:(id)a3 forOrientation:(int64_t)a4
{
  v4 = [(CAMImagePickerCameraViewController *)self view:a3];
  v5 = [v4 safeAreaLayoutGuide];
  [v5 layoutFrame];
  v7 = v6;

  return v7;
}

- (void)videoViewIsReadyToBeginPlayback:(id)a3
{
  v17 = a3;
  v4 = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
  v5 = [v4 _properties];
  v6 = [v5 objectForKey:*MEMORY[0x1E69DDE28]];
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
    [v17 duration];
    v9 = v8;
    [v6 doubleValue];
    if (v9 > v10)
    {
      [v6 doubleValue];
      [v17 setMaximumTrimLength:?];
      [v17 setEditing:1];
      v11 = [(CAMImagePickerCameraViewController *)self _cropOverlay];
      v12 = [v11 bottomBar];
      [v12 bounds];
      [v17 convertRect:v12 fromView:?];
      v14 = v13;
      v15 = CAMLocalizedFrameworkString(@"VIDEO_TOO_LONG_TITLE", 0);
      *&v16 = v14;
      [v17 showTrimMessage:v15 withBottomY:v16];
    }
  }

LABEL_8:
}

- (void)videoViewDidBeginPlayback:(id)a3
{
  v3 = [(CAMImagePickerCameraViewController *)self _cropOverlay];
  [v3 didPlayVideo];
}

- (void)videoViewDidPausePlayback:(id)a3
{
  v3 = [(CAMImagePickerCameraViewController *)self _cropOverlay];
  [v3 didPauseVideo];
}

- (void)videoViewDidEndPlayback:(id)a3 didFinish:(BOOL)a4
{
  v4 = [(CAMImagePickerCameraViewController *)self _cropOverlay:a3];
  [v4 didPauseVideo];
}

- (void)_handleCapturedImagePickerPhotoWithCropOverlayOutput:(id)a3
{
  v23 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v23];
  v5 = [(CAMImagePickerCameraViewController *)self _mostRecentPhotoProperties];
  v6 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerFullsizeImageData"];
  if (v6)
  {
    [v4 setObject:v6 forKey:*MEMORY[0x1E69C05B0]];
  }

  v22 = v6;
  v7 = [v5 objectForKeyedSubscript:@"CAMCameraViewControllerPhotoMetadata"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 mutableCopy];
    [CAMCaptureMetadataUtilities removeUnwantedKeysForPersistenceFromMetadata:v9];
    v10 = [v9 copy];
    [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69C05A8]];
  }

  v11 = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
  v12 = [(CAMImagePickerCameraViewController *)self _photoTileViewController];
  v13 = [v11 _properties];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69DDDD8]];
  v15 = [v14 BOOLValue];

  v16 = v11;
  v17 = v12;
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
    v21 = [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    _Block_object_dispose(&v24, 8);
    _Unwind_Resume(v21);
  }

  v19(v16, v17, 0, v18, v15);

  [(CAMImagePickerCameraViewController *)self _setMostRecentPhotoProperties:0];
}

- (void)_handleCapturedImagePickerVideoAtPath:(id)a3 withEditingMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CAMImagePickerCameraViewController *)self _containingImagePickerController];
  if (v6)
  {
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:0];
  }

  else
  {
    v9 = 0;
  }

  v10 = v8;
  v11 = v9;
  v12 = v7;
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
    v15 = [CAMBurstImageFaceAnalysisContext setupFaceDetector];
    _Block_object_dispose(&v16, 8);
    _Unwind_Resume(v15);
  }

  v13(v10, v11, 0, v12);

  [(CAMImagePickerCameraViewController *)self _setMostRecentVideoProperties:0];
}

- (id)_containingImagePickerController
{
  v2 = [(CAMImagePickerCameraViewController *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (int64_t)_imagePickerCameraDeviceForCaptureDevice:(int64_t)a3
{
  if ((a3 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1A3A68848[a3 - 1];
  }
}

- (int64_t)_imagePickerCameraFlashModeForFlashMode:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (int64_t)_flashModeForImagePickerCameraFlashMode:(int64_t)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 0);
  }
}

- (int64_t)_imagePickerQualityTypeForVideoConfiguration:(int64_t)a3
{
  if ((a3 - 10000) >= 6)
  {
    return 1;
  }

  else
  {
    return a3 - 10000;
  }
}

- (int64_t)_videoConfigurationForImagePickerQualityType:(int64_t)a3
{
  if (a3 >= 6)
  {
    return 0;
  }

  else
  {
    return a3 + 10000;
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