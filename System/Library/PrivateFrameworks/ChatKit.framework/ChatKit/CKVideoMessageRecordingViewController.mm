@interface CKVideoMessageRecordingViewController
- (CKVideoMessageRecordingViewController)initWithPresentationView:(id)view;
- (CKVideoMessageRecordingViewControllerDelegate)videoMessageDelegate;
- (void)_animateVideoIn;
- (void)_cleanupCamera;
- (void)_previewWarmedUp:(id)up;
- (void)actionMenuControllerWillDismissActionMenu:(id)menu animated:(BOOL)animated;
- (void)cancel;
- (void)ckVideoRecorder:(id)recorder imageDataCaptured:(id)captured error:(id)error;
- (void)ckVideoRecorder:(id)recorder videoCaptured:(id)captured error:(id)error;
- (void)ckVideoRecorderRecordingCanceled:(id)canceled;
- (void)dealloc;
- (void)dismissWithCompletion:(id)completion;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)photoMenuItemAction:(id)action;
- (void)presentVideoActionMenuController;
- (void)presentWithCompletion:(id)completion;
- (void)record;
- (void)send;
- (void)stopRecordingWithCompletionBlock:(id)block;
- (void)swapCamera:(id)camera;
- (void)takePictureWithCompletionBlock:(id)block;
- (void)videoMenuItemAction:(id)action;
- (void)viewDidLoad;
@end

@implementation CKVideoMessageRecordingViewController

- (CKVideoMessageRecordingViewController)initWithPresentationView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = CKVideoMessageRecordingViewController;
  v6 = [(CKVideoMessageRecordingViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presentationView, view);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__previewWarmedUp_ name:*MEMORY[0x1E6986B70] object:0];
    [defaultCenter addObserver:v7 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
    [defaultCenter addObserver:v7 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
  }

  return v7;
}

- (void)viewDidLoad
{
  v69[2] = *MEMORY[0x1E69E9840];
  v68.receiver = self;
  v68.super_class = CKVideoMessageRecordingViewController;
  [(CKVideoMessageRecordingViewController *)&v68 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E69DCAD0]);
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  _properties = [v3 _properties];
  v6 = [v4 initWithDictionary:_properties];

  v7 = MEMORY[0x1E695E118];
  [v6 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69DE9B0]];
  v8 = MEMORY[0x1E695E110];
  [v6 setValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E69DE9D0]];
  [v6 setValue:v8 forKey:*MEMORY[0x1E69DE970]];
  [v6 setValue:v7 forKey:*MEMORY[0x1E69DE8D0]];
  [v3 _setProperties:v6];
  [v3 setAllowsEditing:0];
  integerValue = 1;
  [v3 setSourceType:1];
  [v3 _setImagePickerSavingOptions:4];
  v10 = *MEMORY[0x1E69637F8];
  v69[0] = *MEMORY[0x1E6963850];
  v69[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
  [v3 setMediaTypes:v11];

  [v3 setCameraCaptureMode:1];
  [v3 setVideoQuality:0];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v13 = [standardUserDefaults objectForKey:@"kCKVideoMessagingCameraDevice"];

  if (v13)
  {
    integerValue = [v13 integerValue];
  }

  v67 = v13;
  if (integerValue >= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = integerValue;
  }

  [v3 setCameraDevice:v14];
  [v3 setShowsCameraControls:0];
  [v3 setDelegate:self];
  [(CKVideoMessageRecordingViewController *)self setCameraViewController:v3];
  view = [(CKVideoMessageRecordingViewController *)self view];
  [view bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(CKVideoMessageRecordingViewController *)self addChildViewController:v3];
  cameraViewController = [(CKVideoMessageRecordingViewController *)self cameraViewController];
  view2 = [cameraViewController view];

  [view2 setFrame:{v17, v19, v21, v23}];
  [view2 setAlpha:0.0];
  [v3 didMoveToParentViewController:self];
  v65 = view2;
  v66 = view;
  [view addSubview:view2];
  v26 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v17, v19, v21, v23}];
  [v26 setAutoresizingMask:18];
  v27 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, v21, 40.0}];
  [v27 setAutoresizingMask:18];
  v28 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.3];
  [v27 setBackgroundColor:v28];

  [v27 setOpaque:0];
  [v26 addSubview:v27];
  [(CKVideoMessageRecordingViewController *)self setTopBackgroundView:v27];
  v29 = [CKRecordingElapsedTimeView alloc];
  v30 = [(CKRecordingElapsedTimeView *)v29 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CKRecordingElapsedTimeView *)v30 setAutoresizingMask:5];
  [(CKVideoMessageRecordingViewController *)self setTimerView:v30];
  timerView = [(CKVideoMessageRecordingViewController *)self timerView];
  [timerView sizeToFit];

  timerView2 = [(CKVideoMessageRecordingViewController *)self timerView];
  [timerView2 setHidden:1];

  topBackgroundView = [(CKVideoMessageRecordingViewController *)self topBackgroundView];
  [topBackgroundView frame];
  v34 = CGRectGetWidth(v70) * 0.5;
  topBackgroundView2 = [(CKVideoMessageRecordingViewController *)self topBackgroundView];
  [topBackgroundView2 frame];
  v36 = CGRectGetHeight(v71) * 0.5;
  timerView3 = [(CKVideoMessageRecordingViewController *)self timerView];
  [timerView3 frame];
  v39 = v38;
  v41 = v40;
  v42 = v34 - v38 * 0.5;
  v43 = v36 - v40 * 0.5;

  timerView4 = [(CKVideoMessageRecordingViewController *)self timerView];
  [timerView4 setFrame:{v42, v43, v39, v41}];

  topBackgroundView3 = [(CKVideoMessageRecordingViewController *)self topBackgroundView];
  timerView5 = [(CKVideoMessageRecordingViewController *)self timerView];
  [topBackgroundView3 addSubview:timerView5];

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  LOBYTE(timerView5) = [standardUserDefaults2 BOOLForKey:@"CKSwapCameraButton"];

  if ((timerView5 & 1) == 0)
  {
    v48 = [MEMORY[0x1E69DC738] buttonWithType:0];
    v49 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"CameraToggle"];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v51 = [v49 _flatImageWithColor:whiteColor];
    [v48 setImage:v51 forState:0];

    [v48 setOpaque:0];
    [v48 sizeToFit];
    [v48 addTarget:self action:sel_swapCamera_ forControlEvents:64];
    [v48 frame];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    topBackgroundView4 = [(CKVideoMessageRecordingViewController *)self topBackgroundView];
    [topBackgroundView4 frame];
    Width = CGRectGetWidth(v72);
    v73.origin.x = v53;
    v73.origin.y = v55;
    v73.size.width = v57;
    v73.size.height = v59;
    v62 = Width - CGRectGetWidth(v73) + -10.0;

    [v48 setFrame:{v62, 10.0, v57, v59}];
    [v48 setAutoresizingMask:1];
    topBackgroundView5 = [(CKVideoMessageRecordingViewController *)self topBackgroundView];
    [topBackgroundView5 addSubview:v48];

    [(CKVideoMessageRecordingViewController *)self setSwapCameraButton:v48];
  }

  cameraViewController2 = [(CKVideoMessageRecordingViewController *)self cameraViewController];
  [cameraViewController2 setCameraOverlayView:v26];
}

- (void)presentVideoActionMenuController
{
  v52[3] = *MEMORY[0x1E69E9840];
  v3 = [CKVideoCancelActionMenuItemView alloc];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(CKVideoCancelActionMenuItemView *)v3 initWithFrame:*MEMORY[0x1E695F058], v5, v7, v6];
  [(CKVideoCancelActionMenuItemView *)v8 sizeToFit];
  v48 = v8;
  v49 = [(CKActionMenuItem *)[CKVideoCancelActionMenuItem alloc] initWithView:v8 label:0 target:self action:sel_cancelMenuItemAction_];
  v9 = [MEMORY[0x1E69DB878] ck_cui_cameraModeDialFontForContentSize:*MEMORY[0x1E69DDC70]];
  v10 = [MEMORY[0x1E69DB878] ck_cui_cameraKerningForFont:v9];
  v51[0] = *MEMORY[0x1E69DB650];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v12 = *MEMORY[0x1E69DB660];
  v52[0] = whiteColor;
  v52[1] = v10;
  v46 = v10;
  v13 = *MEMORY[0x1E69DB648];
  v51[1] = v12;
  v51[2] = v13;
  v47 = v9;
  v52[2] = v9;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:3];

  actionMenuShutterButton = [MEMORY[0x1E69938E0] actionMenuShutterButton];
  [actionMenuShutterButton setMode:0 animated:0];
  [actionMenuShutterButton setUserInteractionEnabled:0];
  [actionMenuShutterButton sizeToFit];
  v16 = objc_alloc(MEMORY[0x1E696AAB0]);
  v17 = CKFrameworkBundle();
  v18 = [v17 localizedStringForKey:@"PHOTO" value:&stru_1F04268F8 table:@"ChatKit"];
  v19 = [v16 initWithString:v18 attributes:v14];

  v20 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v7, v6}];
  v44 = v19;
  [v20 setAttributedText:v19];
  [v20 sizeToFit];
  v21 = [[CKActionMenuItem alloc] initWithView:actionMenuShutterButton label:v20 target:self action:sel_photoMenuItemAction_];
  [(CKVideoMessageRecordingViewController *)self setPhotoMenuItem:v21];
  actionMenuShutterButton2 = [MEMORY[0x1E69938E0] actionMenuShutterButton];
  [actionMenuShutterButton2 setMode:1 animated:0];
  [actionMenuShutterButton2 setUserInteractionEnabled:0];
  [actionMenuShutterButton2 sizeToFit];
  v23 = objc_alloc(MEMORY[0x1E696AAB0]);
  v24 = CKFrameworkBundle();
  v25 = [v24 localizedStringForKey:@"VIDEO" value:&stru_1F04268F8 table:@"ChatKit"];
  v45 = v14;
  v26 = [v23 initWithString:v25 attributes:v14];

  v27 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v7, v6}];
  [v27 setAttributedText:v26];
  [v27 sizeToFit];
  v28 = [(CKActionMenuItem *)[CKRecordActionMenuItem alloc] initWithView:actionMenuShutterButton2 label:v27 target:self action:sel_videoMenuItemAction_];
  v29 = [CKActionMenuController alloc];
  v50[0] = v28;
  v50[1] = v21;
  v50[2] = v49;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:3];
  v31 = [(CKActionMenuController *)v29 initWithActionMenuItems:v30 defaultActionIndex:2 blurEffectStyle:2];

  [(CKActionMenuController *)v31 setDelegate:self];
  [(CKVideoMessageRecordingViewController *)self setVideoActionMenuController:v31];
  [(UIView *)self->_presentationView frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  if (CKMainScreenScale_once_68 != -1)
  {
    [CKVideoMessageRecordingViewController presentVideoActionMenuController];
  }

  v40 = *&CKMainScreenScale_sMainScreenScale_68;
  if (*&CKMainScreenScale_sMainScreenScale_68 == 0.0)
  {
    v40 = 1.0;
  }

  v41 = floor((v33 + (v37 - v7) * 0.5) * v40) / v40;
  v42 = floor((v35 + (v39 - v6) * 0.5) * v40) / v40;
  superview = [(UIView *)self->_presentationView superview];
  [(CKActionMenuController *)v31 presentActionMenuFromPoint:superview inView:1 animated:v41, v42];
}

- (void)presentWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [_CKVideoMessageRecordingWindow alloc];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v6 = [(_CKVideoMessageRecordingWindow *)v4 initWithFrame:?];
  overlayWindow = self->_overlayWindow;
  self->_overlayWindow = v6;

  [(UIWindow *)self->_overlayWindow setRootViewController:self];
  [(UIWindow *)self->_overlayWindow setHidden:0];
  cameraViewController = [(CKVideoMessageRecordingViewController *)self cameraViewController];
  view = [cameraViewController view];
  [(UIWindow *)self->_overlayWindow bounds];
  [view setFrame:?];

  self->_presented = 1;
  [(CKVideoMessageRecordingViewController *)self presentVideoActionMenuController];
  if (self->_previewWarmedUp)
  {
    [(CKVideoMessageRecordingViewController *)self _animateVideoIn];
  }

  if (completionCopy)
  {
    completionCopy[2]();
  }

  [(CKVideoMessageRecordingViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)_previewWarmedUp:(id)up
{
  if (self->_presented)
  {
    [(CKVideoMessageRecordingViewController *)self _animateVideoIn];
  }

  self->_previewWarmedUp = 1;
}

- (void)dismissWithCompletion:(id)completion
{
  completionCopy = completion;
  overlayWindow = self->_overlayWindow;
  if (overlayWindow)
  {
    v6 = overlayWindow;
    v7 = dispatch_time(0, 250000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__CKVideoMessageRecordingViewController_dismissWithCompletion___block_invoke;
    block[3] = &unk_1E72EBA18;
    v13 = v6;
    v8 = v6;
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);

    v9 = self->_overlayWindow;
  }

  else
  {
    v9 = 0;
  }

  [(UIWindow *)v9 setHidden:1];
  v10 = self->_overlayWindow;
  self->_overlayWindow = 0;

  videoActionMenuController = [(CKVideoMessageRecordingViewController *)self videoActionMenuController];
  [videoActionMenuController setDelegate:0];
  [(CKVideoMessageRecordingViewController *)self setVideoActionMenuController:0];
  [videoActionMenuController dismissActionMenuAnimated:1];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_animateVideoIn
{
  if (!self->_showingVideo)
  {
    self->_showingVideo = 1;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __56__CKVideoMessageRecordingViewController__animateVideoIn__block_invoke;
    v3[3] = &unk_1E72EBA18;
    v3[4] = self;
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __56__CKVideoMessageRecordingViewController__animateVideoIn__block_invoke_2;
    v2[3] = &unk_1E72EB9C8;
    v2[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:v2 completion:0.3];
  }
}

void __56__CKVideoMessageRecordingViewController__animateVideoIn__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cameraViewController];
  v1 = [v2 view];
  [v1 setAlpha:1.0];
}

uint64_t __56__CKVideoMessageRecordingViewController__animateVideoIn__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) recording];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) triedToRecord];
    if (result)
    {
      v3 = *(a1 + 32);

      return [v3 record];
    }
  }

  return result;
}

- (void)swapCamera:(id)camera
{
  cameraViewController = [(CKVideoMessageRecordingViewController *)self cameraViewController];
  cameraDevice = [cameraViewController cameraDevice];

  if (cameraDevice == 1)
  {
    v6 = 0;
  }

  else
  {
    if (cameraDevice)
    {
      goto LABEL_6;
    }

    v6 = 1;
  }

  cameraViewController2 = [(CKVideoMessageRecordingViewController *)self cameraViewController];
  [cameraViewController2 setCameraDevice:v6];

LABEL_6:
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = MEMORY[0x1E696AD98];
  cameraViewController3 = [(CKVideoMessageRecordingViewController *)self cameraViewController];
  v10 = [v8 numberWithInteger:{objc_msgSend(cameraViewController3, "cameraDevice")}];
  [standardUserDefaults setObject:v10 forKey:@"kCKVideoMessagingCameraDevice"];
}

- (void)actionMenuControllerWillDismissActionMenu:(id)menu animated:(BOOL)animated
{
  if (![(CKVideoMessageRecordingViewController *)self sending:menu])
  {

    [(CKVideoMessageRecordingViewController *)self cancel];
  }
}

- (void)record
{
  if (![(CKVideoMessageRecordingViewController *)self recording])
  {
    cameraViewController = [(CKVideoMessageRecordingViewController *)self cameraViewController];
    -[CKVideoMessageRecordingViewController setRecording:](self, "setRecording:", [cameraViewController startVideoCapture]);

    if ([(CKVideoMessageRecordingViewController *)self recording])
    {
      photoMenuItem = [(CKVideoMessageRecordingViewController *)self photoMenuItem];
      [photoMenuItem setEnabled:0 animated:1];

      timerView = [(CKVideoMessageRecordingViewController *)self timerView];
      [timerView setHidden:0];

      timerView2 = [(CKVideoMessageRecordingViewController *)self timerView];
      [timerView2 startTimer];

      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v8 = [standardUserDefaults BOOLForKey:@"CKSwapCameraButton"];

      if ((v8 & 1) == 0)
      {
        swapCameraButton = [(CKVideoMessageRecordingViewController *)self swapCameraButton];
        [swapCameraButton setHidden:1];
      }
    }

    else
    {

      [(CKVideoMessageRecordingViewController *)self setTriedToRecord:1];
    }
  }
}

- (void)videoMenuItemAction:(id)action
{
  if ([action isSelected])
  {
    [(CKVideoMessageRecordingViewController *)self record];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __61__CKVideoMessageRecordingViewController_videoMenuItemAction___block_invoke_2;
    v4[3] = &unk_1E72EBA18;
    v4[4] = self;
    [CKActionMenuItem animate:v4 completion:0];
  }

  else if ([(CKVideoMessageRecordingViewController *)self recording])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__CKVideoMessageRecordingViewController_videoMenuItemAction___block_invoke;
    v5[3] = &unk_1E72EBA18;
    v5[4] = self;
    [(CKVideoMessageRecordingViewController *)self stopRecordingWithCompletionBlock:v5];
  }
}

void __61__CKVideoMessageRecordingViewController_videoMenuItemAction___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [*(a1 + 32) videoActionMenuController];
  v2 = [v1 actionMenuItems];

  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) label];
        [v7 setAlpha:0.0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)takePictureWithCompletionBlock:(id)block
{
  [(CKVideoMessageRecordingViewController *)self setMediaExportCompletionBlock:block];
  cameraViewController = [(CKVideoMessageRecordingViewController *)self cameraViewController];
  [cameraViewController takePicture];
}

- (void)photoMenuItemAction:(id)action
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__CKVideoMessageRecordingViewController_photoMenuItemAction___block_invoke;
  v3[3] = &unk_1E72EBA18;
  v3[4] = self;
  [(CKVideoMessageRecordingViewController *)self takePictureWithCompletionBlock:v3];
}

- (void)stopRecordingWithCompletionBlock:(id)block
{
  blockCopy = block;
  timerView = [(CKVideoMessageRecordingViewController *)self timerView];
  [timerView endTimer];

  if ([(CKVideoMessageRecordingViewController *)self recording])
  {
    [(CKVideoMessageRecordingViewController *)self setRecording:0];
    [(CKVideoMessageRecordingViewController *)self setMediaExportCompletionBlock:blockCopy];
    cameraViewController = [(CKVideoMessageRecordingViewController *)self cameraViewController];
    [cameraViewController stopVideoCapture];
  }

  else if (blockCopy)
  {
    blockCopy[2]();
  }
}

- (void)send
{
  [(CKVideoMessageRecordingViewController *)self setSending:1];
  videoMessageDelegate = [(CKVideoMessageRecordingViewController *)self videoMessageDelegate];
  mediaObjectForSending = [(CKVideoMessageRecordingViewController *)self mediaObjectForSending];
  captureError = [(CKVideoMessageRecordingViewController *)self captureError];
  [videoMessageDelegate ckVideoMessageRecordingViewController:self mediaObjectCaptured:mediaObjectForSending error:captureError];

  [(CKVideoMessageRecordingViewController *)self setMediaObjectForSending:0];

  [(CKVideoMessageRecordingViewController *)self setCaptureError:0];
}

- (void)cancel
{
  [(CKVideoMessageRecordingViewController *)self setCanceled:1];
  cameraViewController = [(CKVideoMessageRecordingViewController *)self cameraViewController];

  if (cameraViewController)
  {
    [(CKVideoMessageRecordingViewController *)self stopRecordingWithCompletionBlock:0];
  }

  videoMessageDelegate = [(CKVideoMessageRecordingViewController *)self videoMessageDelegate];
  [videoMessageDelegate ckVideoMessageRecordingViewControllerRecordingCanceled:self];
}

- (void)ckVideoRecorderRecordingCanceled:(id)canceled
{
  canceledCopy = canceled;
  videoMessageDelegate = [(CKVideoMessageRecordingViewController *)self videoMessageDelegate];
  [videoMessageDelegate ckVideoMessageRecordingViewControllerRecordingCanceled:self];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  outputFileURL = [canceledCopy outputFileURL];

  [defaultManager removeItemAtURL:outputFileURL error:0];
}

- (void)ckVideoRecorder:(id)recorder videoCaptured:(id)captured error:(id)error
{
  recorderCopy = recorder;
  capturedCopy = captured;
  errorCopy = error;
  v11 = errorCopy;
  if (capturedCopy)
  {
    if (!errorCopy)
    {
      v12 = +[CKMediaObjectManager sharedInstance];
      v13 = [v12 mediaObjectWithFileURL:capturedCopy filename:@"Video Message.mov" transcoderUserInfo:0];

      goto LABEL_8;
    }
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CKVideoMessageRecordingViewController ckVideoRecorder:v11 videoCaptured:v14 error:?];
    }
  }

  v13 = 0;
LABEL_8:
  [(CKVideoMessageRecordingViewController *)self setMediaObjectForSending:v13];
  [(CKVideoMessageRecordingViewController *)self setCaptureError:v11];
  mediaExportCompletionBlock = [(CKVideoMessageRecordingViewController *)self mediaExportCompletionBlock];

  if (mediaExportCompletionBlock)
  {
    mediaExportCompletionBlock2 = [(CKVideoMessageRecordingViewController *)self mediaExportCompletionBlock];
    mediaExportCompletionBlock2[2]();

    [(CKVideoMessageRecordingViewController *)self setMediaExportCompletionBlock:0];
  }

  if (capturedCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:capturedCopy error:0];
  }
}

- (void)ckVideoRecorder:(id)recorder imageDataCaptured:(id)captured error:(id)error
{
  recorderCopy = recorder;
  capturedCopy = captured;
  errorCopy = error;
  if (capturedCopy)
  {
    v10 = [CKImageData UTITypeForData:capturedCopy];
    v11 = +[CKMediaObjectManager sharedInstance];
    v12 = [v11 mediaObjectWithData:capturedCopy UTIType:v10 filename:0 transcoderUserInfo:0];
  }

  else
  {
    v12 = 0;
  }

  [(CKVideoMessageRecordingViewController *)self setMediaObjectForSending:v12];
  [(CKVideoMessageRecordingViewController *)self setCaptureError:errorCopy];
  mediaExportCompletionBlock = [(CKVideoMessageRecordingViewController *)self mediaExportCompletionBlock];

  if (mediaExportCompletionBlock)
  {
    mediaExportCompletionBlock2 = [(CKVideoMessageRecordingViewController *)self mediaExportCompletionBlock];
    mediaExportCompletionBlock2[2]();

    [(CKVideoMessageRecordingViewController *)self setMediaExportCompletionBlock:0];
  }
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  infoCopy = info;
  if ([(CKVideoMessageRecordingViewController *)self canceled])
  {
    goto LABEL_24;
  }

  v6 = [infoCopy objectForKey:*MEMORY[0x1E69DDE00]];
  if (UTTypeConformsTo(v6, *MEMORY[0x1E6963850]))
  {
    v7 = [infoCopy objectForKey:*MEMORY[0x1E69DDE08]];
    if (v7)
    {
      v8 = [infoCopy objectForKey:*MEMORY[0x1E69DE9C0]];
      v9 = [infoCopy objectForKey:*MEMORY[0x1E69DE9B8]];
      [v9 doubleValue];
      v11 = v10;
      [v8 doubleValue];
      if (v11 - v12 <= 2.22044605e-16)
      {
        v13 = 0;
      }

      else
      {
        v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
        [v13 setObject:v8 forKey:*MEMORY[0x1E69A6F90]];
        [v13 setObject:v9 forKey:*MEMORY[0x1E69A6F68]];
      }

      v18 = +[CKMediaObjectManager sharedInstance];
      v16 = [v18 mediaObjectWithFileURL:v7 filename:@"Video Message.mov" transcoderUserInfo:v13];

      goto LABEL_17;
    }

    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CKVideoMessageRecordingViewController imagePickerController:v17 didFinishPickingMediaWithInfo:?];
    }

    goto LABEL_16;
  }

  if (!UTTypeConformsTo(v6, *MEMORY[0x1E69637F8]))
  {
    v16 = 0;
    goto LABEL_18;
  }

  v7 = [infoCopy objectForKey:*MEMORY[0x1E69DE960]];
  if (!v7)
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CKVideoMessageRecordingViewController imagePickerController:v17 didFinishPickingMediaWithInfo:?];
    }

LABEL_16:

    v16 = 0;
    goto LABEL_17;
  }

  v14 = [CKImageData UTITypeForData:v7];
  v15 = +[CKMediaObjectManager sharedInstance];
  v16 = [v15 mediaObjectWithData:v7 UTIType:v14 filename:0 transcoderUserInfo:0];

LABEL_17:
LABEL_18:
  [(CKVideoMessageRecordingViewController *)self setMediaObjectForSending:v16];
  mediaExportCompletionBlock = [(CKVideoMessageRecordingViewController *)self mediaExportCompletionBlock];

  if (mediaExportCompletionBlock)
  {
    goto LABEL_22;
  }

  if ([(CKVideoMessageRecordingViewController *)self recording])
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __93__CKVideoMessageRecordingViewController_imagePickerController_didFinishPickingMediaWithInfo___block_invoke;
    v22[3] = &unk_1E72EBA18;
    v22[4] = self;
    [(CKVideoMessageRecordingViewController *)self stopRecordingWithCompletionBlock:v22];
  }

  mediaExportCompletionBlock2 = [(CKVideoMessageRecordingViewController *)self mediaExportCompletionBlock];

  if (mediaExportCompletionBlock2)
  {
LABEL_22:
    mediaExportCompletionBlock3 = [(CKVideoMessageRecordingViewController *)self mediaExportCompletionBlock];
    mediaExportCompletionBlock3[2]();

    [(CKVideoMessageRecordingViewController *)self setMediaExportCompletionBlock:0];
  }

LABEL_24:
}

- (void)_cleanupCamera
{
  if ([(UIImagePickerController *)self->_cameraViewController isViewLoaded])
  {
    view = [(UIImagePickerController *)self->_cameraViewController view];
    [view removeFromSuperview];
  }

  [(CKVideoMessageRecordingViewController *)self removeChildViewController:self->_cameraViewController];
  [(UIImagePickerController *)self->_cameraViewController setDelegate:0];
  cameraViewController = self->_cameraViewController;
  self->_cameraViewController = 0;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  [(CKActionMenuController *)self->_videoActionMenuController setDelegate:0];
  [(CKVideoMessageRecordingViewController *)self _cleanupCamera];
  presentationView = self->_presentationView;
  self->_presentationView = 0;

  v5.receiver = self;
  v5.super_class = CKVideoMessageRecordingViewController;
  [(CKVideoMessageRecordingViewController *)&v5 dealloc];
}

- (CKVideoMessageRecordingViewControllerDelegate)videoMessageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_videoMessageDelegate);

  return WeakRetained;
}

- (void)ckVideoRecorder:(uint64_t)a1 videoCaptured:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "No video data (%@)", &v2, 0xCu);
}

@end