@interface ICDocCamViewController
+ (BOOL)isLiquidGlassEnabledForCapture;
+ (float)cameraIntrinsicMatrixForWidth:(double)a1 height:(double)a2 pixelFocalLength:(float)a3;
+ (id)deviceWithMediaType:(id)a3 preferringPosition:(int64_t)a4;
+ (void)initialize;
+ (void)registerDefaults;
+ (void)warnAboutMaxScansReachedForViewController:(id)a3 completionHandler:(id)a4;
- (AVCaptureVideoPreviewLayer)videoPreviewLayer;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isConstantColorAvailable;
- (BOOL)shouldAutoShoot;
- (BOOL)sufficientlyLarge:(id)a3 forImageSize:(CGSize)a4;
- (BOOL)useDocumentSegmentation;
- (BOOL)validRect:(id)a3 forImageSize:(CGSize)a4;
- (CGPoint)segmentBottomLeft;
- (CGPoint)segmentBottomRight;
- (CGPoint)segmentTopLeft;
- (CGPoint)segmentTopRight;
- (CGRect)targetViewRect;
- (CGRect)zoomTargetCustomImageFrame;
- (CGRect)zoomTargetForIndexPath:(id)a3;
- (CGSize)streamingImageSize;
- (CGSize)viewBoundsSize;
- (CIContext)sharedCoreImageContext;
- (ICDocCamOverlayView)overlayView;
- (ICDocCamPreviewView)previewView;
- (ICDocCamShutterButton)shutterButton;
- (ICDocCamViewController)initWithImageCache:(id)a3;
- (ICDocCamViewControllerDelegate)delegate;
- (NSLayoutConstraint)autoShutterOffFeedbackBottomConstraint;
- (NSLayoutConstraint)autoShutterOffTopLayoutConstraint;
- (NSLayoutConstraint)autoShutterOnFeedbackBottomConstraint;
- (NSLayoutConstraint)filterNameFeedbackBottomConstraint;
- (NSLayoutConstraint)filterViewLeadingConstraint;
- (NSLayoutConstraint)filterViewTrailingConstraint;
- (NSLayoutConstraint)flashFeedbackBottomConstraint;
- (NSLayoutConstraint)flashSettingWidthConstraint;
- (NSLayoutConstraint)moveCameraCloserViewVerticalConstraint;
- (NSLayoutConstraint)topToolbarForIPhoneHeightConstraint;
- (NSLayoutConstraint)userPromptViewVerticalConstraint;
- (UIButton)autoButton;
- (UIButton)autoButtonForIPhone;
- (UIButton)cancelButton;
- (UIButton)cancelButtonForIPhone;
- (UIButton)filterButton;
- (UIButton)filterButtonForIPhone;
- (UIButton)filterViewButton;
- (UIButton)flashButton;
- (UIButton)flashButtonForIPhone;
- (UIButton)flashSettingViewAutoButton;
- (UIButton)flashSettingViewFlashIcon;
- (UIButton)flashSettingViewOffButton;
- (UIButton)flashSettingViewOnButton;
- (UIButton)manualButton;
- (UIButton)recordButton;
- (UIButton)resumeButton;
- (UILabel)autoShutterOffLabel;
- (UILabel)autoShutterOnLabel;
- (UILabel)cameraUnavailableLabel;
- (UILabel)filterNameFeedbackLabel;
- (UILabel)flashFeedbackLabel;
- (UILabel)moveCameraCloserLabel;
- (UILabel)userPromptLabel;
- (UIScrollView)filterScrollView;
- (UIView)autoShutterOffView;
- (UIView)autoShutterOnView;
- (UIView)cameraUnavailableScrim;
- (UIView)cameraUnavailableView;
- (UIView)filterNameFeedbackView;
- (UIView)filterScrollViewContainer;
- (UIView)filterView;
- (UIView)filterViewContainer;
- (UIView)flashFeedbackView;
- (UIView)flashSettingButtonView;
- (UIView)flashSettingView;
- (UIView)liquidGlassControls;
- (UIView)moveCameraCloserView;
- (UIView)scrimView;
- (UIView)topToolbarForIPhone;
- (UIView)userPromptView;
- (double)filterScrollViewContentWidthWithInterItemSpacing:(double)a3 startPadding:(double)a4 endPadding:(double)a5;
- (double)flashSettingViewWidthForIPad;
- (id)createNSDataFrom:(id)a3 metaData:(id)a4;
- (id)cropAndFilterImage:(id)a3 rects:(id)a4 filterType:(signed __int16)a5 constantColor:(BOOL)a6;
- (id)detectRectanglesRequest;
- (id)extractedDocumentControllerMarkupModelDataForDocument:(id)a3;
- (id)filterButtonImage;
- (id)filteredImageForDocument:(id)a3;
- (id)flashButtonImage;
- (id)flashMenuButtonSizes;
- (id)imageMeshTransformWithImage:(id)a3 backgroundImage:(id)a4 imageViewFrame:(CGRect)a5 imageQuad:(id)a6 previewView:(id)a7 previewBounds:(CGRect)a8 scrimView:(id)a9;
- (id)localizedFlashFlashDescription;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (unsigned)imageOrientationFromDevice;
- (void)addNewDocument:(id)a3;
- (void)addObserversIfNecessary;
- (void)analyzerCallbackWithDictionaryResults:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)cancelAction:(id)a3;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)changeFlashAction:(id)a3;
- (void)changeRecordButtonTitle:(id)a3;
- (void)clearQueue;
- (void)clearRectangles;
- (void)createCaptureEventInteractionIfNecessary;
- (void)dealloc;
- (void)detectRectanglesAndSaveCapturedImage:(__CVBuffer *)a3 metadata:(id)a4 constantColor:(BOOL)a5 completionHandler:(id)a6;
- (void)didFinishWithImage:(id)a3;
- (void)didRecognizeRectangleForAccessibility:(BOOL)a3;
- (void)dismissFilterAndFlashUI;
- (void)dismissFilterUI;
- (void)dismissFlashUI;
- (void)enableRecordButton:(BOOL)a3;
- (void)enableShutter:(BOOL)a3;
- (void)enableShutterButtonIfPossible;
- (void)enableUIElements:(BOOL)a3;
- (void)enableUIElementsForMovieRecording:(BOOL)a3;
- (void)extractedDocumentController:(id)a3 didTapRecrop:(id)a4 index:(int64_t)a5;
- (void)extractedDocumentController:(id)a3 startMarkupOnDocument:(id)a4 inkStyle:(unint64_t)a5 startPresentBlock:(id)a6 dismissCompletionBlock:(id)a7;
- (void)extractedDocumentControllerDidDeleteDocument:(id)a3;
- (void)extractedDocumentControllerDidTapDone:(unint64_t)a3;
- (void)extractedDocumentControllerDidTapRetake:(unint64_t)a3;
- (void)extractedDocumentControllerDiscardMarkupModelDataForDocument:(id)a3;
- (void)filterButtonAction:(id)a3;
- (void)filterButtonCancelUI:(id)a3;
- (void)filterButtonChoiceAction:(id)a3;
- (void)flashButtonAction:(id)a3;
- (void)flashButtonCancelUI:(id)a3;
- (void)flashFilterButtonNameFeedback;
- (void)flashFlashButtonNameFeedback;
- (void)flashMoveCloserFeedback;
- (void)focusWithMode:(int64_t)a3 exposeWithMode:(int64_t)a4 atDevicePoint:(CGPoint)a5 monitorSubjectAreaChange:(BOOL)a6;
- (void)handleCaptureEventInteractionEvent:(id)a3;
- (void)handlePhysicalButtonPressCancelled;
- (void)handlePhysicalButtonPressed;
- (void)handlePhysicalButtonReleased;
- (void)hideFilterSettingUI;
- (void)hideFlashSettingUI;
- (void)hideShutter:(BOOL)a3;
- (void)hideUIForInterruptedSession:(BOOL)a3;
- (void)image:(id)a3 didFinishSavingWithError:(id)a4 contextInfo:(void *)a5;
- (void)initializeFilters;
- (void)initializeUserInterface;
- (void)killFeedbackDisplayIncludingUserPrompts:(BOOL)a3;
- (void)killFeedbackDisplayInternalIncludingUserPrompts:(BOOL)a3;
- (void)launchCaptureSession;
- (void)legacyUpdateConstraintsForIPad;
- (void)legacyUpdateConstraintsForIPhone;
- (void)logAlgoChoice;
- (void)markupCancelAction:(id)a3;
- (void)markupDoneAction:(id)a3;
- (void)modernUpdateConstraintsForIPad;
- (void)modernUpdateConstraintsForIPhone;
- (void)modernUpdatePlacardConstraints;
- (void)myApplicationDidBecomeActive:(id)a3;
- (void)myApplicationWillResignActive:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)overlayCaptureButtonTapped:(id)a3;
- (void)overlayCloseButtonTapped:(id)a3;
- (void)overlayDoneButtonTapped:(id)a3;
- (void)pauseCaptureSessionForMovieRecording;
- (void)popViewController:(id)a3 subtype:(id)a4 duration:(double)a5 completion:(id)a6;
- (void)preWarmFilters;
- (void)prepareForDismissal;
- (void)pushViewController:(id)a3 type:(id)a4 subtype:(id)a5 duration:(double)a6 completion:(id)a7;
- (void)removeAllNotifications;
- (void)removeNonLiquidGlassViewsIfNecessary;
- (void)removeObserversIfNecessary;
- (void)removeSaveActionBlockerForFiles;
- (void)restartImageCaptureSessionIfNecessary;
- (void)resumeCaptureSessionForMovieRecording;
- (void)resumeInterruptedSession:(id)a3;
- (void)retakeButtonWasPressed;
- (void)saveAction:(id)a3;
- (void)saveCapturedImage:(id)a3 metaData:(id)a4 rects:(id)a5 constantColor:(BOOL)a6 completionHandler:(id)a7;
- (void)sessionInterruptionEnded:(id)a3;
- (void)sessionRuntimeError:(id)a3;
- (void)sessionWasInterrupted:(id)a3;
- (void)setDoneButtonVisible:(BOOL)a3;
- (void)setFlashMode:(int64_t)a3;
- (void)setOverlayFilter:(signed __int16)a3;
- (void)setOverlayFlashMode:(int64_t)a3;
- (void)setUpFilterScrollView;
- (void)setUpUserDefaults;
- (void)setViewControllers:(id)a3 type:(id)a4 subtype:(id)a5 duration:(double)a6 completion:(id)a7;
- (void)setupAccessibilityInfo;
- (void)setupCaptureSession;
- (void)setupThumbnailViewControllerIfNecessary;
- (void)showErrorForMovieRecording:(id)a3;
- (void)shutterButtonAction:(id)a3;
- (void)singleTap;
- (void)snapStillImageWithMode:(int64_t)a3;
- (void)speakLabelTextForAccessibilityIfNecessary:(id)a3 afterDelay:(double)a4;
- (void)stopImageCaptureSession;
- (void)subjectAreaDidChange:(id)a3;
- (void)thumbnailViewDidTap:(id)a3;
- (void)toggleAutoCapture:(id)a3;
- (void)toggleRecording:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAccessibilityEnabledStateForUIElements;
- (void)updateAccessibilityFocusForHidingFilterSettingsUI;
- (void)updateAccessibilityFocusForHidingFlashSettingsUI;
- (void)updateAccessibilityForAutoShutterMode:(BOOL)a3;
- (void)updateAccessibilityForCurrentFilter;
- (void)updateAccessibilityForCurrentFlashMode;
- (void)updateAllConstraints;
- (void)updateAutoButtonTitleForAutoMode:(BOOL)a3;
- (void)updateConstraintsForIPad;
- (void)updateConstraintsForIPhone;
- (void)updateFilterAndFlashButtons;
- (void)updateFilterButtonTint;
- (void)updateFilterChoiceButtonScrollPositionAnimated:(BOOL)a3;
- (void)updateFilterChoiceButtonSelection:(signed __int16)a3;
- (void)updateFonts;
- (void)updateLabelColors;
- (void)updateRecentlyObservedRectanglesWithRect:(id)a3;
- (void)updateThumbnailConstraintsForIPhone;
- (void)updateThumbnailContainerConstraintsForIpad;
- (void)updateThumbnailContainerViewConstraintConstantForIPad;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)warnAboutMaxScansIfNecessary;
@end

@implementation ICDocCamViewController

- (id)imageMeshTransformWithImage:(id)a3 backgroundImage:(id)a4 imageViewFrame:(CGRect)a5 imageQuad:(id)a6 previewView:(id)a7 previewBounds:(CGRect)a8 scrimView:(id)a9
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v16 = a5.size.height;
  v17 = a5.size.width;
  v18 = a5.origin.y;
  v19 = a5.origin.x;
  v22 = a9;
  v23 = a7;
  v24 = a6;
  v25 = a4;
  v26 = a3;
  v27 = [ICDocCamViewControllerMeshTransform alloc];
  v28 = [(ICDocCamViewController *)self view];
  v29 = [(ICDocCamViewControllerMeshTransform *)v27 initWithImage:v26 backgroundImage:v25 imageViewFrame:v28 view:v24 imageQuad:v23 previewView:v22 previewBounds:v19 scrimView:v18, v17, v16, x, y, width, height];

  return v29;
}

- (void)pushViewController:(id)a3 type:(id)a4 subtype:(id)a5 duration:(double)a6 completion:(id)a7
{
  v23 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [MEMORY[0x277CDA000] animation];
  if (v14)
  {
    v16 = _Block_copy(v14);
    [v15 setValue:v16 forKey:@"animationCompletionBlockKey"];

    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  [v15 setDelegate:v17];
  [v15 setRemovedOnCompletion:1];
  [v15 setDuration:a6];
  v18 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v15 setTimingFunction:v18];

  [v15 setType:v12];
  [v15 setSubtype:v13];
  v19 = [(ICDocCamViewController *)self navigationController];
  v20 = [v19 view];
  v21 = [v20 layer];
  [v21 addAnimation:v15 forKey:0];

  v22 = [(ICDocCamViewController *)self navigationController];
  [v22 pushViewController:v23 animated:0];
}

- (void)popViewController:(id)a3 subtype:(id)a4 duration:(double)a5 completion:(id)a6
{
  v21 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [MEMORY[0x277CDA000] animation];
  if (v11)
  {
    v13 = _Block_copy(v11);
    [v12 setValue:v13 forKey:@"animationCompletionBlockKey"];

    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  [v12 setDelegate:v14];
  [v12 setRemovedOnCompletion:1];
  [v12 setDuration:a5];
  v15 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v12 setTimingFunction:v15];

  [v12 setType:v21];
  [v12 setSubtype:v10];
  v16 = [(ICDocCamViewController *)self navigationController];
  v17 = [v16 view];
  v18 = [v17 layer];
  [v18 addAnimation:v12 forKey:0];

  v19 = [(ICDocCamViewController *)self navigationController];
  v20 = [v19 popViewControllerAnimated:0];
}

- (void)setViewControllers:(id)a3 type:(id)a4 subtype:(id)a5 duration:(double)a6 completion:(id)a7
{
  v22 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [MEMORY[0x277CDA000] animation];
  if (v14)
  {
    v16 = _Block_copy(v14);
    [v15 setValue:v16 forKey:@"animationCompletionBlockKey"];
  }

  [v15 setDelegate:self];
  [v15 setRemovedOnCompletion:0];
  [v15 setDuration:a6];
  v17 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v15 setTimingFunction:v17];

  [v15 setType:v12];
  [v15 setSubtype:v13];
  v18 = [(ICDocCamViewController *)self navigationController];
  v19 = [v18 view];
  v20 = [v19 layer];
  [v20 addAnimation:v15 forKey:0];

  v21 = [(ICDocCamViewController *)self navigationController];
  [v21 setViewControllers:v22 animated:0];
}

- (CIContext)sharedCoreImageContext
{
  v2 = self;
  objc_sync_enter(v2);
  sharedCoreImageContext = v2->_sharedCoreImageContext;
  if (!sharedCoreImageContext)
  {
    v4 = +[ICDocCamImageFilters sharedCoreImageContext];
    v5 = v2->_sharedCoreImageContext;
    v2->_sharedCoreImageContext = v4;

    sharedCoreImageContext = v2->_sharedCoreImageContext;
  }

  v6 = sharedCoreImageContext;
  objc_sync_exit(v2);

  return v6;
}

+ (float)cameraIntrinsicMatrixForWidth:(double)a1 height:(double)a2 pixelFocalLength:(float)a3
{
  __asm
  {
    FMOV            V1.2S, #-1.0
    FMOV            V3.4S, #1.0
  }

  return a3;
}

+ (void)initialize
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___ICDocCamViewController;
  objc_msgSendSuper2(&v3, sel_initialize);
  if (objc_opt_class() == a1)
  {
    +[ICDocCamViewController registerDefaults];
  }
}

+ (void)registerDefaults
{
  v5[23] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4[0] = @"internalSettings.docCam.rectangle.segmentFudgeFactor";
  v4[1] = @"internalSettings.docCam.rectangle.segmentVisualConfidence";
  v5[0] = &unk_285C6D258;
  v5[1] = &unk_285C6D268;
  v4[2] = @"internalSettings.docCam.rectangle.segmentVisualConfidence60Frames";
  v4[3] = @"internalSettings.docCam.rectangle.segmentVisualConfidenceFinalScan";
  v5[2] = &unk_285C6D278;
  v5[3] = &unk_285C6D288;
  v4[4] = @"internalSettings.docCam.rectangle.segmentStabilityStdDev";
  v4[5] = @"internalSettings.docCam.rectangle.minimumAspectRatio";
  v5[4] = &unk_285C6D298;
  v5[5] = &unk_285C6D2A8;
  v4[6] = @"internalSettings.docCam.rectangle.maximumAspectRatio";
  v4[7] = @"internalSettings.docCam.rectangle.quadratureTolerance";
  v5[6] = &unk_285C6D2B8;
  v5[7] = &unk_285C6D2C8;
  v4[8] = @"internalSettings.docCam.rectangle.minimumSize";
  v4[9] = @"internalSettings.docCam.rectangle.minimumConfidence";
  v5[8] = &unk_285C6D2D8;
  v5[9] = &unk_285C6D278;
  v4[10] = @"internalSettings.docCam.rectangle.visualConfidence";
  v4[11] = @"internalSettings.docCam.rectangle.maximumNumber";
  v5[10] = &unk_285C6D2E8;
  v5[11] = &unk_285C6D4E0;
  v4[12] = @"internalSettings.docCam.rectangle.stabilityStdDev";
  v4[13] = @"internalSettings.docCam.rectangle.detectionEnabled";
  v5[12] = &unk_285C6D2F8;
  v5[13] = MEMORY[0x277CBEC38];
  v4[14] = @"internalSettings.docCam.registration.enabled";
  v4[15] = @"internalSettings.docCam.debugRectangles.enabled";
  v5[14] = MEMORY[0x277CBEC28];
  v5[15] = MEMORY[0x277CBEC28];
  v4[16] = @"internalSettings.docCam.displayString.enabled";
  v4[17] = @"internalSettings.docCam.rectangle.realTime";
  v5[16] = MEMORY[0x277CBEC28];
  v5[17] = MEMORY[0x277CBEC28];
  v4[18] = @"internalSettings.docCam.rectangle.synchronous";
  v4[19] = @"internalSettings.docCam.rectangle.queueSize";
  v5[18] = MEMORY[0x277CBEC28];
  v5[19] = &unk_285C6D4F8;
  v4[20] = @"internalSettings.docCam.imageStabilization.disabled";
  v4[21] = @"internalSettings.docCam.format";
  v5[20] = MEMORY[0x277CBEC28];
  v5[21] = &unk_285C6D510;
  v4[22] = @"internalSettings.docCam.scanMovieRecording.enabled";
  v5[22] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:23];
  [v2 registerDefaults:v3];
}

- (ICDocCamViewController)initWithImageCache:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14.receiver = self;
  v14.super_class = ICDocCamViewController;
  v6 = [(ICDocCamViewController *)&v14 initWithNibName:@"ICDocCamViewController" bundle:v5];

  if (v6)
  {
    v7 = objc_alloc_init(ICDocCamDocumentInfoCollection);
    documentInfoCollection = v6->_documentInfoCollection;
    v6->_documentInfoCollection = v7;

    [(ICDocCamViewController *)v6 setImageCache:v4];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("session queue", v9);
    sessionQueue = v6->_sessionQueue;
    v6->_sessionQueue = v10;

    v12 = objc_alloc_init(MEMORY[0x277CF05B0]);
    [(ICDocCamViewController *)v6 setAccelerometer:v12];
  }

  return v6;
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = ICDocCamViewController;
  [(ICDocCamViewController *)&v31 viewDidLoad];
  v3 = UIAccessibilityLibrary();
  dlsym(v3, "_UIAccessibilityStart");
  v4 = [(ICDocCamViewController *)self view];
  v5 = [v4 tintColor];
  v6 = [v5 dc_lighterColor];
  cameraHighlightColor = self->_cameraHighlightColor;
  self->_cameraHighlightColor = v6;

  [(ICDocCamViewController *)self preWarmFilters];
  [(ICDocCamViewController *)self setUpUserDefaults];
  [(ICDocCamViewController *)self setCaptureDebugDone:0];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.documentcamera.DocCamSpinnerQueue", v8);
  [(ICDocCamViewController *)self setSnapshotSpinnerQueue:v9];

  v10 = +[DCSettings sharedSettings];
  LOBYTE(v9) = [v10 finishAfterFirstScan];

  if ((v9 & 1) == 0)
  {
    v11 = [ICDocCamSpinner alloc];
    v12 = [(ICDocCamViewController *)self view];
    v13 = [(ICDocCamSpinner *)v11 initWithView:v12 minimumDuration:1.0];
    [(ICDocCamViewController *)self setSnapshotSpinner:v13];
  }

  v14 = dispatch_semaphore_create(1);
  [(ICDocCamViewController *)self setFlashAndFilterUISemaphore:v14];

  v15 = [(ICDocCamViewController *)self previewView];
  v16 = [v15 layer];
  [v16 setOpacity:0.0];

  v17 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_singleTap];
  [(ICDocCamViewController *)self setSingleTapGestureRecognizer:v17];

  v18 = [(ICDocCamViewController *)self singleTapGestureRecognizer];
  [v18 setNumberOfTapsRequired:1];

  v19 = [(ICDocCamViewController *)self singleTapGestureRecognizer];
  [v19 setDelegate:self];

  v20 = [(ICDocCamViewController *)self view];
  v21 = [(ICDocCamViewController *)self singleTapGestureRecognizer];
  [v20 addGestureRecognizer:v21];

  [(ICDocCamViewController *)self setSnapStillImageMode:0];
  [(ICDocCamViewController *)self setDefaultFilter:1];
  v22 = [[ICDocCamProcessingBlocker alloc] initWithDelegate:self];
  [(ICDocCamViewController *)self setProcessRequestsBlocker:v22];

  v23 = [(ICDocCamViewController *)self processRequestsBlocker];
  [v23 addBlockerOfType:@"ViewLifetimeBlocker" clearRectangles:1 clearQueue:1];

  v24 = [[ICDocCamProcessingBlocker alloc] initWithDelegate:self];
  [(ICDocCamViewController *)self setSnapStillImageBlocker:v24];

  v25 = [MEMORY[0x277CCAB98] defaultCenter];
  [v25 addObserver:self selector:sel_myApplicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  v26 = [MEMORY[0x277CCAB98] defaultCenter];
  [v26 addObserver:self selector:sel_myApplicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  v27 = [MEMORY[0x277CCAB98] defaultCenter];
  [v27 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

  [(ICDocCamViewController *)self setDidAddAppLifetimeObservers:1];
  [(ICDocCamViewController *)self disableRetakeMode];
  v28 = [MEMORY[0x277CBEAA8] date];
  [(ICDocCamViewController *)self setLastSubjectAreaChange:v28];

  self->_requestTimeSum = 0.0;
  self->_requestTimeIndex = 0;
  *&self->_requestTime[6] = 0u;
  *&self->_requestTime[8] = 0u;
  *&self->_requestTime[2] = 0u;
  *&self->_requestTime[4] = 0u;
  *self->_requestTime = 0u;
  v29 = objc_alloc_init(ICDocCamRectangleResultsQueue);
  [(ICDocCamViewController *)self setRectResultsQueue:v29];

  v30 = [MEMORY[0x277CBEB18] array];
  [(ICDocCamViewController *)self setRecentRectangleObservations:v30];

  [(ICDocCamViewController *)self setOverrideUserInterfaceStyle:2];
  [(ICDocCamViewController *)self initializeUserInterface];
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = ICDocCamViewController;
  [(ICDocCamViewController *)&v9 viewWillAppear:a3];
  [(ICDocCamViewController *)self setupThumbnailViewControllerIfNecessary];
  v4 = [(ICDocCamViewController *)self navigationController];
  [v4 setNavigationBarHidden:1 animated:0];

  v5 = [(ICDocCamViewController *)self session];

  if (v5)
  {
    [(ICDocCamViewController *)self launchCaptureSession];
  }

  [(ICDocCamViewController *)self updateFonts];
  v6 = [(ICDocCamViewController *)self documentInfoCollection];
  v7 = [v6 docInfos];
  if ([v7 count])
  {
    v8 = [(ICDocCamViewController *)self isInRetakeMode]^ 1;
  }

  else
  {
    v8 = 0;
  }

  [(ICDocCamViewController *)self setDoneButtonVisible:v8];
  [(ICDocCamViewController *)self removeNonLiquidGlassViewsIfNecessary];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = ICDocCamViewController;
  [(ICDocCamViewController *)&v8 viewDidAppear:a3];
  v4 = [(ICDocCamViewController *)self session];

  if (!v4)
  {
    [(ICDocCamViewController *)self setupCaptureSession];
    [(ICDocCamViewController *)self launchCaptureSession];
  }

  [(ICDocCamViewController *)self createCaptureEventInteractionIfNecessary];
  [(ICDocCamViewController *)self updateFilterButtonTint];
  v5 = [(ICDocCamViewController *)self processRequestsBlocker];
  [v5 removeBlockerOfType:@"SaveActionBlocker"];

  v6 = [MEMORY[0x277D75128] sharedApplication];
  [v6 setIdleTimerDisabled:1];

  v7 = [(ICDocCamViewController *)self userPromptLabel];
  [(ICDocCamViewController *)self speakLabelTextForAccessibilityIfNecessary:v7 afterDelay:3.0];

  [(ICDocCamViewController *)self logAlgoChoice];
}

- (void)removeNonLiquidGlassViewsIfNecessary
{
  if ([objc_opt_class() isLiquidGlassEnabledForCapture])
  {
    v3 = [(ICDocCamViewController *)self autoButtonForIPhone];
    [v3 removeFromSuperview];

    v4 = [(ICDocCamViewController *)self autoButton];
    [v4 removeFromSuperview];

    v5 = [(ICDocCamViewController *)self manualButton];
    [v5 removeFromSuperview];

    v6 = [(ICDocCamViewController *)self cancelButton];
    [v6 removeFromSuperview];

    v7 = [(ICDocCamViewController *)self cancelButtonForIPhone];
    [v7 removeFromSuperview];

    v8 = [(ICDocCamViewController *)self flashButton];
    [v8 removeFromSuperview];

    v9 = [(ICDocCamViewController *)self flashButtonForIPhone];
    [v9 removeFromSuperview];

    v10 = [(ICDocCamViewController *)self filterButton];
    [v10 removeFromSuperview];

    v11 = [(ICDocCamViewController *)self filterButtonForIPhone];
    [v11 removeFromSuperview];

    v12 = [(ICDocCamViewController *)self shutterButton];
    [v12 removeFromSuperview];

    v13 = [(ICDocCamViewController *)self topToolbarForIPhone];
    [v13 removeFromSuperview];

    v14 = [(ICDocCamViewController *)self saveButton];
    [v14 removeFromSuperview];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ICDocCamViewController;
  [(ICDocCamViewController *)&v5 viewWillDisappear:a3];
  v4 = [(ICDocCamViewController *)self processRequestsBlocker];
  [v4 addBlockerOfType:@"ViewLifetimeBlocker" clearRectangles:1 clearQueue:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICDocCamViewController *)self sessionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ICDocCamViewController_viewDidDisappear___block_invoke;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_async(v5, block);

  v15.receiver = self;
  v15.super_class = ICDocCamViewController;
  [(ICDocCamViewController *)&v15 viewDidDisappear:v3];
  v6 = [(ICDocCamViewController *)self previewView];
  v7 = [v6 layer];
  [v7 setOpacity:0.0];

  v8 = [MEMORY[0x277D75128] sharedApplication];
  [v8 setIdleTimerDisabled:0];

  v9 = [(ICDocCamViewController *)self presentedViewController];

  if (!v9)
  {
    v10 = [(ICDocCamViewController *)self thumbnailViewController];
    [v10 willMoveToParentViewController:0];

    v11 = [(ICDocCamViewController *)self thumbnailViewController];
    [v11 removeFromParentViewController];

    v12 = [(ICDocCamViewController *)self thumbnailViewController];
    v13 = [v12 collectionView];
    [v13 removeFromSuperview];

    [(ICDocCamViewController *)self setThumbnailViewController:0];
  }

  v14 = [(ICDocCamViewController *)self captureEventInteraction];
  [v14 setEnabled:0];
}

void __43__ICDocCamViewController_viewDidDisappear___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) setupResult])
  {
    v2 = [*(a1 + 32) session];
    v3 = [v2 isRunning];

    if (v3)
    {
      v4 = [*(a1 + 32) session];
      [v4 stopRunning];

      v5 = *(a1 + 32);

      [v5 removeObserversIfNecessary];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v3 = [(ICDocCamViewController *)self view];
  [v3 bounds];
  [(ICDocCamViewController *)self setViewBoundsSize:v4, v5];

  v6 = [(ICDocCamViewController *)self view];
  v7 = [v6 window];
  v8 = [v7 windowScene];
  -[ICDocCamViewController setStatusBarOrientation:](self, "setStatusBarOrientation:", [v8 interfaceOrientation]);

  v9 = [(ICDocCamViewController *)self view];
  v10 = [v9 tintColor];
  v11 = [v10 dc_lighterColor];
  cameraHighlightColor = self->_cameraHighlightColor;
  self->_cameraHighlightColor = v11;

  [(ICDocCamViewController *)self setupThumbnailViewControllerIfNecessary];
  [(ICDocCamViewController *)self updateAutoButtonTitleForAutoMode:[(ICDocCamViewController *)self autoMode]];
  [(ICDocCamViewController *)self updateFilterAndFlashButtons];
  [(ICDocCamViewController *)self updateAllConstraints];

  [(ICDocCamViewController *)self setUpFilterScrollView];
}

- (void)dealloc
{
  [(ICDocCamViewController *)self removeAllNotifications];
  v3.receiver = self;
  v3.super_class = ICDocCamViewController;
  [(ICDocCamViewController *)&v3 dealloc];
}

- (void)viewSafeAreaInsetsDidChange
{
  [(ICDocCamViewController *)self setNeedsStatusBarAppearanceUpdate];
  v3 = [(ICDocCamViewController *)self view];
  [v3 setNeedsUpdateConstraints];

  v4.receiver = self;
  v4.super_class = ICDocCamViewController;
  [(ICDocCamViewController *)&v4 viewSafeAreaInsetsDidChange];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = ICDocCamViewController;
  [(ICDocCamViewController *)&v5 traitCollectionDidChange:v4];
  [(ICDocCamViewController *)self updateLabelColors];
}

- (void)initializeUserInterface
{
  v3 = [(ICDocCamViewController *)self scanMovieRecordingEnabled];
  v4 = [(ICDocCamViewController *)self recordButton];
  v204 = v4;
  if (v3)
  {
    [v4 setEnabled:1];

    v205 = [(ICDocCamViewController *)self recordButton];
    [v205 setHidden:0];
  }

  else
  {
    [v4 setEnabled:0];

    v205 = [(ICDocCamViewController *)self recordButton];
    [v205 setHidden:1];
  }

  v206 = [(ICDocCamViewController *)self view];
  v5 = [v206 window];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277D75DA0] _applicationKeyWindow];
  }

  v7 = [v6 windowScene];
  -[ICDocCamViewController setStatusBarOrientation:](self, "setStatusBarOrientation:", [v7 interfaceOrientation]);

  if (!v5)
  {
  }

  [(ICDocCamViewController *)self setEdgesForExtendedLayout:15];
  [(ICDocCamViewController *)self setExtendedLayoutIncludesOpaqueBars:0];
  v207 = [(ICDocCamViewController *)self navigationController];
  v8 = [v207 navigationBar];
  [v8 setBarStyle:0];

  v208 = [MEMORY[0x277D75348] dc_barColor];
  v9 = [(ICDocCamViewController *)self navigationController];
  v10 = [v9 navigationBar];
  [v10 setBarTintColor:v208];

  [(ICDocCamViewController *)self setNeedsStatusBarAppearanceUpdate];
  v209 = [ICDocCamSaveButton buttonWithType:1];
  [(ICDocCamViewController *)self setSaveButton:?];

  v210 = [(ICDocCamViewController *)self saveButton];
  [v210 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(ICDocCamViewController *)self setDoneButtonVisible:0];
  v211 = [(ICDocCamViewController *)self view];
  v11 = [(ICDocCamViewController *)self saveButton];
  [v211 addSubview:v11];

  v212 = [(ICDocCamViewController *)self documentInfoCollection];
  v12 = [v212 docInfos];
  v13 = [v12 count];
  v14 = [(ICDocCamViewController *)self saveButton];
  [v14 setDocumentCount:v13];

  v213 = [(ICDocCamViewController *)self saveButton];
  [v213 addTarget:self action:sel_saveAction_ forControlEvents:64];

  v214 = [(ICDocCamViewController *)self autoShutterOnView];
  [v214 setHidden:0];

  v215 = [(ICDocCamViewController *)self autoShutterOnView];
  [v215 setAlpha:1.0];

  v216 = [(ICDocCamViewController *)self autoShutterOnView];
  v15 = [v216 layer];
  [v15 setOpacity:0.0];

  v217 = [(ICDocCamViewController *)self autoShutterOffView];
  [v217 setHidden:0];

  v218 = [(ICDocCamViewController *)self autoShutterOffView];
  [v218 setAlpha:1.0];

  v219 = [(ICDocCamViewController *)self autoShutterOffView];
  v16 = [v219 layer];
  [v16 setOpacity:0.0];

  v220 = [(ICDocCamViewController *)self filterNameFeedbackView];
  [v220 setHidden:0];

  v221 = [(ICDocCamViewController *)self filterNameFeedbackView];
  [v221 setAlpha:1.0];

  v222 = [(ICDocCamViewController *)self filterNameFeedbackView];
  v17 = [v222 layer];
  [v17 setOpacity:0.0];

  v223 = [(ICDocCamViewController *)self moveCameraCloserView];
  [v223 setHidden:0];

  v224 = [(ICDocCamViewController *)self moveCameraCloserView];
  [v224 setAlpha:1.0];

  v225 = [(ICDocCamViewController *)self moveCameraCloserView];
  v18 = [v225 layer];
  [v18 setOpacity:0.0];

  v226 = [(ICDocCamViewController *)self flashFeedbackView];
  [v226 setHidden:0];

  v227 = [(ICDocCamViewController *)self flashFeedbackView];
  [v227 setAlpha:1.0];

  v228 = [(ICDocCamViewController *)self flashFeedbackView];
  v19 = [v228 layer];
  [v19 setOpacity:0.0];

  [(ICDocCamViewController *)self setFilterSettingUIShowing:0];
  v229 = [(ICDocCamViewController *)self cameraUnavailableScrim];
  [v229 setHidden:1];

  v230 = [MEMORY[0x277D75348] blackColor];
  v20 = [(ICDocCamViewController *)self autoShutterOnLabel];
  [v20 setTextColor:v230];

  v231 = [MEMORY[0x277D75348] blackColor];
  v21 = [(ICDocCamViewController *)self autoShutterOffLabel];
  [v21 setTextColor:v231];

  v232 = [MEMORY[0x277D75348] blackColor];
  v22 = [(ICDocCamViewController *)self filterNameFeedbackLabel];
  [v22 setTextColor:v232];

  v233 = [MEMORY[0x277D75348] blackColor];
  v23 = [(ICDocCamViewController *)self flashFeedbackLabel];
  [v23 setTextColor:v233];

  v234 = [MEMORY[0x277D75418] currentDevice];
  v24 = [v234 userInterfaceIdiom];

  if (v24)
  {
    v235 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
    [v235 setHidden:1];

    v236 = [(ICDocCamViewController *)self filterViewButton];
    [v236 setHidden:1];

    v237 = [(ICDocCamViewController *)self filterViewContainer];
    [v237 setHidden:0];

    v238 = [(ICDocCamViewController *)self filterViewButton];
    [v238 removeFromSuperview];

    [(ICDocCamViewController *)self setFilterViewButton:0];
  }

  else
  {
    v239 = [(ICDocCamViewController *)self filterButton];
    [v239 setHidden:1];
  }

  v240 = [MEMORY[0x277D75418] currentDevice];
  v25 = [v240 userInterfaceIdiom];

  if (v25)
  {
    v241 = [(ICDocCamViewController *)self flashSettingView];
    v26 = [v241 layer];
    [v26 setShadowRadius:0.0];

    v242 = [(ICDocCamViewController *)self flashSettingView];
    v27 = [v242 layer];
    LODWORD(v28) = 1050253722;
    [v27 setShadowOpacity:v28];

    v243 = [(ICDocCamViewController *)self flashSettingView];
    v29 = [v243 layer];
    [v29 setShadowOffset:{0.0, 0.0}];

    v244 = [(ICDocCamViewController *)self flashSettingView];
    v30 = [v244 layer];
    [v30 setMasksToBounds:0];

    v245 = [(ICDocCamViewController *)self flashSettingView];
    v31 = [v245 layer];
    [v31 setCornerRadius:13.0];

    v246 = [(ICDocCamViewController *)self flashSettingView];
    v32 = [v246 layer];
    [v32 setBorderWidth:0.0];
  }

  else
  {
    v246 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.5];
    v32 = [(ICDocCamViewController *)self flashSettingView];
    [v32 setBackgroundColor:v246];
  }

  [(ICDocCamViewController *)self setFlashMode:2];
  v247 = [(ICDocCamViewController *)self flashButtonImage];
  v33 = [(ICDocCamViewController *)self flashButton];
  [v33 setImage:v247 forState:0];

  v34 = [(ICDocCamViewController *)self flashButtonForIPhone];
  [v34 setImage:v247 forState:0];

  v35 = [(ICDocCamViewController *)self flashButton];
  v36 = [MEMORY[0x277D75348] whiteColor];
  [v35 setTintColor:v36];

  v37 = [(ICDocCamViewController *)self flashButtonForIPhone];
  v38 = [MEMORY[0x277D75348] whiteColor];
  [v37 setTintColor:v38];

  v39 = [(ICDocCamViewController *)self flashButtonForIPhone];
  [v39 setLargeContentImage:v247];

  [(ICDocCamViewController *)self setAutoMode:1];
  if ([(ICDocCamViewController *)self autoMode])
  {
    v40 = [(ICDocCamViewController *)self userPromptView];
    [v40 setHidden:0];
  }

  else
  {
    [(ICDocCamViewController *)self hideShutter:0];
    v40 = [(ICDocCamViewController *)self userPromptView];
    [v40 setHidden:1];
  }

  v41 = [(ICDocCamViewController *)self flashFeedbackView];
  [v41 setHidden:1];

  v42 = [(ICDocCamViewController *)self autoMode];
  v43 = [(ICDocCamViewController *)self overlayView];
  [v43 setShowGridAnimation:v42];

  v44 = [(ICDocCamViewController *)self cameraHighlightColor];
  v45 = [(ICDocCamViewController *)self overlayView];
  [v45 setRectColor:v44];

  if ((DCDebugInterfaceEnabled() & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "userInterfaceIdiom"), v46, v47 == 1))
  {
    v48 = [(ICDocCamViewController *)self flashButton];
    v49 = [v48 layer];
    [v49 setShadowOpacity:0.0];

    v50 = [(ICDocCamViewController *)self flashButton];
    v51 = [v50 layer];
    [v51 setShadowRadius:0.0];
  }

  v52 = [MEMORY[0x277CE5AC8] defaultDeviceWithMediaType:*MEMORY[0x277CE5EA8]];
  if ([v52 hasFlash])
  {
    v53 = [MEMORY[0x277D75418] currentDevice];
    v54 = [v53 userInterfaceIdiom];

    v55 = [(ICDocCamViewController *)self flashSettingView];
    if (v54)
    {
      [v55 setHidden:0];
    }

    else
    {
      [v55 setHidden:1];
    }
  }

  else
  {
    v56 = [(ICDocCamViewController *)self flashButton];
    [v56 setHidden:1];

    v55 = [(ICDocCamViewController *)self flashSettingView];
    [v55 setHidden:1];
  }

  [(ICDocCamViewController *)self enableUIElements:0];
  [(ICDocCamViewController *)self initializeFilters];
  if ([objc_opt_class() isLiquidGlassEnabledForCapture])
  {
    v57 = [[DCCaptureControlsOverlayViewController alloc] initWithNibName:0 bundle:0];
    [(ICDocCamViewController *)self setLiquidGlassEvolutionControlsOverlayViewController:v57];

    v58 = [(ICDocCamViewController *)self liquidGlassEvolutionControlsOverlayViewController];
    [v58 setDelegate:self];

    v59 = [(ICDocCamViewController *)self liquidGlassEvolutionControlsOverlayViewController];
    [(ICDocCamViewController *)self addChildViewController:v59];

    v60 = [(ICDocCamViewController *)self liquidGlassControls];
    v61 = [(ICDocCamViewController *)self liquidGlassEvolutionControlsOverlayViewController];
    v62 = [v61 view];
    [v60 addSubview:v62];

    v63 = [(ICDocCamViewController *)self liquidGlassEvolutionControlsOverlayViewController];
    v64 = [v63 view];
    [v64 dc_addConstraintsToFillSuperview];

    v65 = [(ICDocCamViewController *)self liquidGlassEvolutionControlsOverlayViewController];
    [v65 didMoveToParentViewController:self];

    v66 = [(ICDocCamViewController *)self liquidGlassControls];
    [v66 setUserInteractionEnabled:1];

    v67 = [(ICDocCamViewController *)self liquidGlassEvolutionControlsOverlayViewController];
    v68 = [v67 view];
    [v68 setUserInteractionEnabled:1];
  }

  else
  {
    [(ICDocCamViewController *)self enableShutter:0];
    v69 = [MEMORY[0x277D75418] currentDevice];
    v70 = [v69 userInterfaceIdiom];

    if (v70)
    {
      [(ICDocCamViewController *)self topToolbarForIPhone];
    }

    else
    {
      v72 = [(ICDocCamViewController *)self cancelButton];
      [v72 setHidden:1];

      v73 = [(ICDocCamViewController *)self flashButton];
      [v73 setHidden:1];

      v74 = [(ICDocCamViewController *)self filterButton];
      [v74 setHidden:1];

      v75 = [(ICDocCamViewController *)self autoButton];
      [v75 setHidden:1];

      [(ICDocCamViewController *)self manualButton];
    }
    v71 = ;
    [v71 setHidden:1];

    if ((DCDebugInterfaceEnabled() & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v76 = objc_claimAutoreleasedReturnValue(), v77 = objc_msgSend(v76, "userInterfaceIdiom"), v76, v77 == 1))
    {
      v78 = [(ICDocCamViewController *)self autoButton];
      [v78 sizeToFit];

      v79 = [(ICDocCamViewController *)self manualButton];
      [v79 sizeToFit];

      v80 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
      v81 = [MEMORY[0x277D75348] clearColor];
      v82 = [MEMORY[0x277D75348] whiteColor];
      v83 = [v82 CGColor];
      v84 = [(ICDocCamViewController *)self flashSettingView];
      v85 = [v84 layer];
      [v85 setBorderColor:v83];

      v86 = [(ICDocCamViewController *)self flashSettingView];
      v87 = [v86 layer];
      [v87 setBorderWidth:0.0];

      v88 = [(ICDocCamViewController *)self flashSettingView];
      [v88 frame];
      v90 = v89;
      v91 = [(ICDocCamViewController *)self flashSettingView];
      v92 = [v91 layer];
      [v92 setCornerRadius:v90 * 0.5];

      v93 = [(ICDocCamViewController *)self flashSettingView];
      [v93 setBackgroundColor:v80];

      v94 = [MEMORY[0x277D75348] whiteColor];
      v95 = [v94 CGColor];
      v96 = [(ICDocCamViewController *)self autoButton];
      v97 = [v96 layer];
      [v97 setBorderColor:v95];

      v98 = [(ICDocCamViewController *)self autoButton];
      v99 = [v98 layer];
      [v99 setBorderWidth:0.0];

      v100 = [(ICDocCamViewController *)self autoButton];
      [v100 frame];
      v102 = v101;
      v103 = [(ICDocCamViewController *)self autoButton];
      v104 = [v103 layer];
      [v104 setCornerRadius:v102 * 0.5];

      if ([(ICDocCamViewController *)self autoMode])
      {
        v105 = v80;
      }

      else
      {
        v105 = v81;
      }

      v106 = [v105 CGColor];
      v107 = [(ICDocCamViewController *)self autoButton];
      v108 = [v107 layer];
      [v108 setBackgroundColor:v106];

      v109 = [MEMORY[0x277D75348] whiteColor];
      v110 = [v109 CGColor];
      v111 = [(ICDocCamViewController *)self manualButton];
      v112 = [v111 layer];
      [v112 setBorderColor:v110];

      v113 = [(ICDocCamViewController *)self manualButton];
      v114 = [v113 layer];
      [v114 setBorderWidth:0.0];

      v115 = [(ICDocCamViewController *)self manualButton];
      [v115 frame];
      v117 = v116;
      v118 = [(ICDocCamViewController *)self manualButton];
      v119 = [v118 layer];
      [v119 setCornerRadius:v117 * 0.5];

      if ([(ICDocCamViewController *)self autoMode])
      {
        v120 = v81;
      }

      else
      {
        v120 = v80;
      }

      v121 = [v120 CGColor];
      v122 = [(ICDocCamViewController *)self manualButton];
      v123 = [v122 layer];
      [v123 setBackgroundColor:v121];

      v124 = [MEMORY[0x277D75348] whiteColor];
      v125 = [v124 CGColor];
      v126 = [(ICDocCamViewController *)self filterViewContainer];
      v127 = [v126 layer];
      [v127 setBorderColor:v125];

      v128 = [(ICDocCamViewController *)self filterViewContainer];
      v129 = [v128 layer];
      [v129 setBorderWidth:0.0];

      v130 = [(ICDocCamViewController *)self filterViewContainer];
      [v130 frame];
      v132 = v131;
      v133 = [(ICDocCamViewController *)self filterViewContainer];
      v134 = [v133 layer];
      [v134 setCornerRadius:v132 * 0.5];

      v135 = [(ICDocCamViewController *)self filterViewContainer];
      [v135 setBackgroundColor:v80];
    }

    v136 = [MEMORY[0x277D75418] currentDevice];
    v137 = [v136 userInterfaceIdiom];

    v138 = MEMORY[0x277D74418];
    if (!v137)
    {
      v139 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74418]];
      v140 = [(ICDocCamViewController *)self cancelButton];
      v141 = [v140 titleLabel];
      [v141 setFont:v139];
    }

    v142 = [(ICDocCamViewController *)self saveButton];
    v143 = [v142 layer];
    [v143 setMasksToBounds:0];

    v144 = [MEMORY[0x277D75348] blackColor];
    v145 = [v144 CGColor];
    v146 = [(ICDocCamViewController *)self saveButton];
    v147 = [v146 layer];
    [v147 setShadowColor:v145];

    v148 = [(ICDocCamViewController *)self saveButton];
    v149 = [v148 layer];
    LODWORD(v150) = 1047904911;
    [v149 setShadowOpacity:v150];

    v151 = [(ICDocCamViewController *)self saveButton];
    v152 = [v151 layer];
    [v152 setShadowRadius:2.0];

    v153 = [(ICDocCamViewController *)self saveButton];
    v154 = [v153 layer];
    [v154 setShadowOffset:{0.0, 0.0}];

    v155 = [(ICDocCamViewController *)self saveButton];
    [v155 sizeToFit];

    v156 = [(ICDocCamViewController *)self cancelButton];
    v157 = [v156 layer];
    [v157 setMasksToBounds:0];

    v158 = [MEMORY[0x277D75348] blackColor];
    v159 = [v158 CGColor];
    v160 = [(ICDocCamViewController *)self cancelButton];
    v161 = [v160 layer];
    [v161 setShadowColor:v159];

    v162 = [(ICDocCamViewController *)self cancelButton];
    v163 = [v162 layer];
    LODWORD(v164) = 1053609165;
    [v163 setShadowOpacity:v164];

    v165 = [(ICDocCamViewController *)self cancelButton];
    v166 = [v165 layer];
    [v166 setShadowRadius:2.0];

    v167 = [(ICDocCamViewController *)self cancelButton];
    v168 = [v167 layer];
    [v168 setShadowOffset:{0.0, 1.0}];

    if ((DCDebugInterfaceEnabled() & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v169 = objc_claimAutoreleasedReturnValue(), v170 = objc_msgSend(v169, "userInterfaceIdiom"), v169, v170 == 1))
    {
      v171 = *v138;
      v172 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:*v138];
      v173 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      v174 = [v173 titleLabel];
      [v174 setFont:v172];

      v175 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:v171];
      v176 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      v177 = [v176 titleLabel];
      [v177 setFont:v175];

      v178 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:v171];
      v179 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      v180 = [v179 titleLabel];
      [v180 setFont:v178];
    }

    else
    {
      v181 = *MEMORY[0x277D74410];
      v182 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:*MEMORY[0x277D74410]];
      v183 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      v184 = [v183 titleLabel];
      [v184 setFont:v182];

      v185 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:v181];
      v186 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      v187 = [v186 titleLabel];
      [v187 setFont:v185];

      v178 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:v181];
      v179 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      v180 = [v179 titleLabel];
      [v180 setFont:v178];
    }

    v188 = [(ICDocCamViewController *)self filterViewContainer];
    [v188 setAccessibilityLabel:@"Filter View Container"];

    v189 = [(ICDocCamViewController *)self filterView];
    [v189 setAccessibilityLabel:@"Filter View"];

    v190 = [(ICDocCamViewController *)self filterScrollViewContainer];
    [v190 setAccessibilityLabel:@"Filter Scroll View Container"];

    v191 = [(ICDocCamViewController *)self filterScrollView];
    [v191 setAccessibilityLabel:@"Filter Scroll View"];

    v192 = [(ICDocCamViewController *)self flashSettingView];
    [v192 setAccessibilityLabel:@"Flash Setting View"];

    v193 = [(ICDocCamViewController *)self flashSettingButtonView];
    [v193 setAccessibilityLabel:@"Flash Setting Button View"];

    v194 = [(ICDocCamViewController *)self autoButton];
    [v194 _accessibilitySetInterfaceStyleIntent:2];

    v195 = [(ICDocCamViewController *)self manualButton];
    [v195 _accessibilitySetInterfaceStyleIntent:2];

    v196 = [(ICDocCamViewController *)self flashButton];
    [v196 _accessibilitySetInterfaceStyleIntent:2];

    v197 = [(ICDocCamViewController *)self flashButtonForIPhone];
    [v197 _accessibilitySetInterfaceStyleIntent:2];

    v198 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
    [v198 _accessibilitySetInterfaceStyleIntent:2];

    v199 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
    [v199 _accessibilitySetInterfaceStyleIntent:2];

    v200 = [(ICDocCamViewController *)self flashSettingViewOnButton];
    [v200 _accessibilitySetInterfaceStyleIntent:2];

    v201 = [(ICDocCamViewController *)self flashSettingViewOffButton];
    [v201 _accessibilitySetInterfaceStyleIntent:2];

    [(ICDocCamViewController *)self updateLabelColors];
    [(ICDocCamViewController *)self setupAccessibilityInfo];
    v202 = [(ICDocCamViewController *)self cancelButton];
    v203 = objc_alloc_init(MEMORY[0x277D75870]);
    [v202 addInteraction:v203];

    v67 = [(ICDocCamViewController *)self saveButton];
    v68 = objc_alloc_init(MEMORY[0x277D75870]);
    [v67 addInteraction:v68];
  }
}

- (void)setUpUserDefaults
{
  [(ICDocCamViewController *)self setSegmentTopLeft:0.0, 0.0];
  [(ICDocCamViewController *)self setSegmentTopRight:0.0, 0.0];
  [(ICDocCamViewController *)self setSegmentBottomLeft:0.0, 0.0];
  [(ICDocCamViewController *)self setSegmentBottomRight:0.0, 0.0];
  [(ICDocCamViewController *)self setSegmentMeanComputed:0];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 floatForKey:@"internalSettings.docCam.rectangle.segmentFudgeFactor"];
  [(ICDocCamViewController *)self setSegmentationFudgeFactor:?];

  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 floatForKey:@"internalSettings.docCam.rectangle.segmentVisualConfidence"];
  [(ICDocCamViewController *)self setSegmentMinimumVisualConfidence:?];

  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v5 floatForKey:@"internalSettings.docCam.rectangle.segmentVisualConfidence60Frames"];
  [(ICDocCamViewController *)self setSegmentMinimumVisualConfidence60Frames:?];

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v6 floatForKey:@"internalSettings.docCam.rectangle.segmentVisualConfidenceFinalScan"];
  [(ICDocCamViewController *)self setSegmentMinimumVisualConfidenceFinalScan:?];

  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v7 floatForKey:@"internalSettings.docCam.rectangle.segmentStabilityStdDev"];
  [(ICDocCamViewController *)self setSegmentStabilityStdDev:?];

  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v8 floatForKey:@"internalSettings.docCam.rectangle.minimumAspectRatio"];
  [(ICDocCamViewController *)self setRectangleMinimumAspectRatio:?];

  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v9 floatForKey:@"internalSettings.docCam.rectangle.maximumAspectRatio"];
  [(ICDocCamViewController *)self setRectangleMaximumAspectRatio:?];

  v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v10 floatForKey:@"internalSettings.docCam.rectangle.quadratureTolerance"];
  [(ICDocCamViewController *)self setRectangleQuadratureTolerance:?];

  v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v11 floatForKey:@"internalSettings.docCam.rectangle.minimumSize"];
  [(ICDocCamViewController *)self setRectangleMinimumSize:?];

  v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v12 floatForKey:@"internalSettings.docCam.rectangle.minimumConfidence"];
  [(ICDocCamViewController *)self setRectangleMinimumConfidence:?];

  v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v13 floatForKey:@"internalSettings.docCam.rectangle.visualConfidence"];
  [(ICDocCamViewController *)self setRectangleMinimumVisualConfidence:?];

  v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setRectangleMaximumNumber:](self, "setRectangleMaximumNumber:", [v14 integerForKey:@"internalSettings.docCam.rectangle.maximumNumber"]);

  v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v15 floatForKey:@"internalSettings.docCam.rectangle.stabilityStdDev"];
  [(ICDocCamViewController *)self setRectangleStabilityStdDev:?];

  v16 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setRectangleDetectionEnabled:](self, "setRectangleDetectionEnabled:", [v16 BOOLForKey:@"internalSettings.docCam.rectangle.detectionEnabled"]);

  v17 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setRegistrationEnabled:](self, "setRegistrationEnabled:", [v17 BOOLForKey:@"internalSettings.docCam.registration.enabled"]);

  v18 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setDebugRectanglesEnabled:](self, "setDebugRectanglesEnabled:", [v18 BOOLForKey:@"internalSettings.docCam.debugRectangles.enabled"]);

  v19 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setDisplayStringEnabled:](self, "setDisplayStringEnabled:", [v19 BOOLForKey:@"internalSettings.docCam.displayString.enabled"]);

  v20 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setRealTimeRectangleDetection:](self, "setRealTimeRectangleDetection:", [v20 BOOLForKey:@"internalSettings.docCam.rectangle.realTime"]);

  v21 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setSynchronousRectangleDetection:](self, "setSynchronousRectangleDetection:", [v21 BOOLForKey:@"internalSettings.docCam.rectangle.synchronous"]);

  v22 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setQueueSizeForRectangleDetection:](self, "setQueueSizeForRectangleDetection:", [v22 integerForKey:@"internalSettings.docCam.rectangle.queueSize"]);

  v23 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setScanMovieRecordingEnabled:](self, "setScanMovieRecordingEnabled:", [v23 BOOLForKey:@"internalSettings.docCam.scanMovieRecording.enabled"]);

  v24 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setScanMovieRecordingDontShowWarning:](self, "setScanMovieRecordingDontShowWarning:", [v24 BOOLForKey:@"internalSettings.docCam.scanMovieRecording.doNotShowWarning"]);
}

- (void)preWarmFilters
{
  if ([ICDocCamViewController preWarmFilters]::onceToken != -1)
  {
    [ICDocCamViewController preWarmFilters];
  }
}

void __40__ICDocCamViewController_preWarmFilters__block_invoke()
{
  v0 = dispatch_get_global_queue(0, 0);
  dispatch_async(v0, &__block_literal_global_581);
}

void __40__ICDocCamViewController_preWarmFilters__block_invoke_2()
{
  v21 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAA8] date];
  v22.width = 32.0;
  v22.height = 32.0;
  UIGraphicsBeginImageContext(v22);
  CurrentContext = UIGraphicsGetCurrentContext();
  v2 = [MEMORY[0x277D75348] redColor];
  CGContextSetFillColorWithColor(CurrentContext, [v2 CGColor]);

  v23.size.width = 32.0;
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.height = 32.0;
  CGContextFillRect(CurrentContext, v23);
  v3 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v4 = [[ICDocCamImageQuad alloc] initWithBottomLeft:0.1 bottomRight:0.1 topLeft:0.9 topRight:0.1, 0.1, 0.9, 0.9, 0.9];
  v5 = [ICDocCamImageFilters perspectiveCorrectedImageFromImage:v3 normalizedImageQuad:v4];
  v6 = [ICDocCamImageFilters filteredImage:v5 orientation:0 imageFilterType:0];
  v7 = [ICDocCamImageFilters filteredImage:v5 orientation:0 imageFilterType:1];
  v8 = [ICDocCamImageFilters filteredImage:v5 orientation:0 imageFilterType:2];
  v9 = [ICDocCamImageFilters filteredImage:v5 orientation:0 imageFilterType:3];
  v10 = [MEMORY[0x277CBEAA8] date];
  [v10 timeIntervalSinceDate:v0];
  v12 = v11;
  v13 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134217984;
    v20 = v12;
    _os_log_impl(&dword_249253000, v13, OS_LOG_TYPE_DEFAULT, "Finished prewarming filters in: %.2f seconds", &v19, 0xCu);
  }

  if (!v5)
  {
    v14 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __40__ICDocCamViewController_preWarmFilters__block_invoke_2_cold_1();
    }
  }

  if (!v6)
  {
    v15 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __40__ICDocCamViewController_preWarmFilters__block_invoke_2_cold_2();
    }
  }

  if (!v7)
  {
    v16 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __40__ICDocCamViewController_preWarmFilters__block_invoke_2_cold_3();
    }
  }

  if (!v8)
  {
    v17 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __40__ICDocCamViewController_preWarmFilters__block_invoke_2_cold_4();
    }
  }

  if (!v9)
  {
    v18 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __40__ICDocCamViewController_preWarmFilters__block_invoke_2_cold_5();
    }
  }
}

- (void)setupThumbnailViewControllerIfNecessary
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = [(ICDocCamViewController *)self thumbnailViewController];

  if (!v3)
  {
    v4 = [[ICDocCamThumbnailCollectionViewController alloc] initWithDelegate:self];
    [(ICDocCamViewController *)self setThumbnailViewController:v4];

    v5 = [(ICDocCamViewController *)self documentInfoCollection];
    v6 = [v5 docInfos];
    v7 = [(ICDocCamViewController *)self thumbnailViewController];
    [v7 setDocumentInfoArray:v6];

    v8 = [(ICDocCamViewController *)self imageCache];
    v9 = [(ICDocCamViewController *)self thumbnailViewController];
    [v9 setImageCache:v8];

    v10 = [(ICDocCamViewController *)self thumbnailViewController];
    [(ICDocCamViewController *)self addChildViewController:v10];

    v11 = [(ICDocCamViewController *)self thumbnailViewController];
    v12 = [v11 collectionView];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = [(ICDocCamViewController *)self thumbnailContainerView];
    v14 = [(ICDocCamViewController *)self thumbnailViewController];
    v15 = [v14 collectionView];
    [v13 addSubview:v15];

    v16 = [(ICDocCamViewController *)self thumbnailViewController];
    [v16 didMoveToParentViewController:self];

    v17 = MEMORY[0x277CCAAD0];
    v34 = @"childView";
    v18 = [(ICDocCamViewController *)self thumbnailViewController];
    v19 = [v18 collectionView];
    v35[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v21 = [v17 constraintsWithVisualFormat:@"H:|[childView]|" options:0 metrics:0 views:v20];

    v22 = MEMORY[0x277CCAAD0];
    v32 = @"childView";
    v23 = [(ICDocCamViewController *)self thumbnailViewController];
    v24 = [v23 collectionView];
    v33 = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v26 = [v22 constraintsWithVisualFormat:@"V:|[childView]|" options:0 metrics:0 views:v25];

    v27 = [(ICDocCamViewController *)self thumbnailViewController];
    v28 = [v27 collectionView];
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

    [MEMORY[0x277CCAAD0] activateConstraints:v21];
    [MEMORY[0x277CCAAD0] activateConstraints:v26];
    v29 = [(ICDocCamViewController *)self thumbnailViewController];
    v30 = [v29 collectionView];
    v31 = [(ICDocCamViewController *)self thumbnailContainerView];
    [v31 setCollectionView:v30];
  }
}

- (BOOL)useDocumentSegmentation
{
  if ([ICDocCamViewController useDocumentSegmentation]::onceToken != -1)
  {
    [ICDocCamViewController useDocumentSegmentation];
  }

  return [ICDocCamViewController useDocumentSegmentation]::isEnabled;
}

void __49__ICDocCamViewController_useDocumentSegmentation__block_invoke()
{
  if (MGIsQuestionValid() && MGGetBoolAnswer())
  {
    v0 = +[DCSettings sharedSettings];
    v1 = [v0 useDocumentSegmentationRequest];

    if (v1)
    {
      [ICDocCamViewController useDocumentSegmentation]::isEnabled = 1;
    }
  }
}

- (void)updateAllConstraints
{
  if (DCDebugInterfaceEnabled())
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v3 = [v4 userInterfaceIdiom] == 1;
  }

  v5 = [(ICDocCamViewController *)self statusBarOrientation]- 1;
  if ([objc_opt_class() isLiquidGlassEnabledForCapture])
  {
    if (v5 >= 2)
    {
      v6 = 40.0;
    }

    else
    {
      v6 = 120.0;
    }
  }

  else
  {
    v7 = [(ICDocCamViewController *)self view];
    [v7 safeAreaInsets];
    v9 = -60.0;
    if (v5 < 2)
    {
      v9 = -104.0;
    }

    if (v3)
    {
      v9 = -100.0;
    }

    v6 = v9 - v8;
  }

  v10 = [(ICDocCamViewController *)self userPromptViewVerticalConstraint];
  [v10 setConstant:v6];

  v11 = [(ICDocCamViewController *)self moveCameraCloserViewVerticalConstraint];
  [v11 setConstant:v6];

  if (v3)
  {

    [(ICDocCamViewController *)self updateConstraintsForIPad];
  }

  else
  {

    [(ICDocCamViewController *)self updateConstraintsForIPhone];
  }
}

- (void)updateConstraintsForIPad
{
  if ([objc_opt_class() isLiquidGlassEnabledForCapture])
  {

    [(ICDocCamViewController *)self modernUpdateConstraintsForIPad];
  }

  else
  {
    [(ICDocCamViewController *)self legacyUpdateConstraintsForIPad];
    [(ICDocCamViewController *)self modernUpdatePlacardConstraints];

    [(ICDocCamViewController *)self updateThumbnailContainerConstraintsForIpad];
  }
}

- (void)updateThumbnailContainerConstraintsForIpad
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = [(ICDocCamViewController *)self thumbnailContainerView];
  if (v3)
  {
    v4 = [(ICDocCamViewController *)self view];

    if (v4)
    {
      v5 = [(ICDocCamViewController *)self thumbnailContainerView];
      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

      v20 = [(ICDocCamViewController *)self thumbnailContainerView];
      v19 = [v20 bottomAnchor];
      v18 = [(ICDocCamViewController *)self view];
      v16 = [v18 safeAreaLayoutGuide];
      v17 = [v16 bottomAnchor];
      v6 = [v19 constraintEqualToAnchor:?];
      v21[0] = v6;
      v7 = [(ICDocCamViewController *)self thumbnailContainerView];
      v8 = [v7 widthAnchor];
      v9 = [(ICDocCamViewController *)self view];
      v10 = [v9 widthAnchor];
      v11 = [v8 constraintEqualToAnchor:v10];
      v21[1] = v11;
      v12 = [(ICDocCamViewController *)self thumbnailContainerView];
      v13 = [v12 heightAnchor];
      +[_TtC14DocumentCamera22DCLiquidGlassConstants thumbnailHeight];
      v14 = [v13 constraintEqualToConstant:?];
      v21[2] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];

      [MEMORY[0x277CCAAD0] activateConstraints:v15];
    }
  }
}

- (void)modernUpdateConstraintsForIPad
{
  [(ICDocCamViewController *)self updateThumbnailContainerConstraintsForIpad];

  [(ICDocCamViewController *)self modernUpdatePlacardConstraints];
}

- (void)legacyUpdateConstraintsForIPad
{
  v195[1] = *MEMORY[0x277D85DE8];
  v3 = [(ICDocCamViewController *)self iPadLayoutConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v191 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    [v4 activateConstraints:v191];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(ICDocCamViewController *)self setIPadLayoutConstraints:v5];

    v6 = [(ICDocCamViewController *)self filterNameFeedbackBottomConstraint];
    [v6 setConstant:30.0];

    v7 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v8 = [(ICDocCamViewController *)self filterNameFeedbackBottomConstraint];
    [v7 addObject:v8];

    v9 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v10 = [(ICDocCamViewController *)self shutterButton];
    v11 = [v10 centerXAnchor];
    v12 = [(ICDocCamViewController *)self view];
    v13 = [v12 trailingAnchor];
    v14 = [v11 constraintEqualToAnchor:v13 constant:-50.0];
    [v9 addObject:v14];

    v15 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v16 = [(ICDocCamViewController *)self shutterButton];
    v17 = [v16 centerYAnchor];
    v18 = [(ICDocCamViewController *)self view];
    v19 = [v18 centerYAnchor];
    v20 = [v17 constraintEqualToAnchor:v19 constant:0.0];
    [v15 addObject:v20];

    v21 = [(ICDocCamViewController *)self manualButton];
    v22 = [v21 titleLabel];
    v23 = [v22 text];

    v24 = [(ICDocCamViewController *)self autoButton];
    v25 = [v24 titleLabel];
    v26 = [v25 text];

    v194 = *MEMORY[0x277D740A8];
    v27 = v194;
    v28 = [(ICDocCamViewController *)self manualButton];
    v29 = [v28 titleLabel];
    v30 = [v29 font];
    v195[0] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v195 forKeys:&v194 count:1];
    [v23 sizeWithAttributes:v31];
    v33 = v32;

    v192 = v27;
    v34 = [(ICDocCamViewController *)self autoButton];
    v35 = [v34 titleLabel];
    v36 = [v35 font];
    v193 = v36;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
    [v26 sizeWithAttributes:v37];
    v39 = v38;

    if (v33 >= v39)
    {
      v40 = v33;
    }

    else
    {
      v40 = v39;
    }

    v41 = v40;
    v42 = ceilf(v41) + 32.0;
    v43 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v44 = [(ICDocCamViewController *)self manualButton];
    if (v42 * 0.5 >= 43.0)
    {
      v45 = [v44 trailingAnchor];
      v46 = [(ICDocCamViewController *)self view];
      v47 = [v46 trailingAnchor];
      [v45 constraintGreaterThanOrEqualToAnchor:v47 constant:-11.0];
    }

    else
    {
      v45 = [v44 centerXAnchor];
      v46 = [(ICDocCamViewController *)self shutterButton];
      v47 = [v46 centerXAnchor];
      [v45 constraintEqualToAnchor:v47 constant:0.0];
    }
    v48 = ;
    [v43 addObject:v48];

    v49 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v50 = [(ICDocCamViewController *)self manualButton];
    v51 = [v50 centerYAnchor];
    v52 = [(ICDocCamViewController *)self view];
    v53 = [v52 centerYAnchor];
    v54 = [v51 constraintEqualToAnchor:v53 constant:164.0];
    [v49 addObject:v54];

    v55 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v56 = [(ICDocCamViewController *)self manualButton];
    v57 = [v56 widthAnchor];
    v58 = [v57 constraintEqualToConstant:v42];
    [v55 addObject:v58];

    v59 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v60 = [(ICDocCamViewController *)self autoButton];
    if (v42 * 0.5 >= 43.0)
    {
      v61 = [v60 trailingAnchor];
      v62 = [(ICDocCamViewController *)self view];
      v63 = [v62 trailingAnchor];
      [v61 constraintGreaterThanOrEqualToAnchor:v63 constant:-11.0];
    }

    else
    {
      v61 = [v60 centerXAnchor];
      v62 = [(ICDocCamViewController *)self shutterButton];
      v63 = [v62 centerXAnchor];
      [v61 constraintEqualToAnchor:v63 constant:0.0];
    }
    v64 = ;
    [v59 addObject:v64];

    v65 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v66 = [(ICDocCamViewController *)self autoButton];
    v67 = [v66 centerYAnchor];
    v68 = [(ICDocCamViewController *)self view];
    v69 = [v68 centerYAnchor];
    v70 = [v67 constraintEqualToAnchor:v69 constant:118.0];
    [v65 addObject:v70];

    v71 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v72 = [(ICDocCamViewController *)self autoButton];
    v73 = [v72 widthAnchor];
    v74 = [v73 constraintEqualToConstant:v42];
    [v71 addObject:v74];

    v75 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v76 = [(ICDocCamViewController *)self saveButton];
    v77 = [v76 trailingAnchor];
    v78 = [(ICDocCamViewController *)self view];
    v79 = [v78 trailingAnchor];
    v80 = [v77 constraintEqualToAnchor:v79 constant:-21.0];
    [v75 addObject:v80];

    v81 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v82 = [(ICDocCamViewController *)self saveButton];
    v83 = [v82 centerYAnchor];
    v84 = [(ICDocCamViewController *)self cancelButton];
    v85 = [v84 centerYAnchor];
    v86 = [v83 constraintEqualToAnchor:v85 constant:0.0];
    [v81 addObject:v86];

    v87 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v88 = [(ICDocCamViewController *)self cancelButton];
    v89 = [v88 leadingAnchor];
    v90 = [(ICDocCamViewController *)self view];
    v91 = [v90 leadingAnchor];
    v92 = [v89 constraintEqualToAnchor:v91 constant:21.0];
    [v87 addObject:v92];

    v93 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v94 = [(ICDocCamViewController *)self cancelButton];
    v95 = [v94 firstBaselineAnchor];
    v96 = [(ICDocCamViewController *)self view];
    v97 = [v96 bottomAnchor];
    v98 = [v95 constraintEqualToAnchor:v97 constant:-40.0];
    [v93 addObject:v98];

    v99 = [(ICDocCamViewController *)self thumbnailContainerView];
    [v99 setTranslatesAutoresizingMaskIntoConstraints:0];

    v100 = [(ICDocCamViewController *)self thumbnailContainerView];
    v101 = [v100 leadingAnchor];
    v102 = [(ICDocCamViewController *)self cancelButton];
    v103 = [v102 trailingAnchor];
    v104 = [v101 constraintEqualToAnchor:v103 constant:48.0];
    [(ICDocCamViewController *)self setThumbnailContainerViewLeadingConstraintForIPad:v104];

    v105 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v106 = [(ICDocCamViewController *)self thumbnailContainerViewLeadingConstraintForIPad];
    [v105 addObject:v106];

    v107 = [(ICDocCamViewController *)self thumbnailContainerView];
    v108 = [v107 trailingAnchor];
    v109 = [(ICDocCamViewController *)self saveButton];
    v110 = [v109 leadingAnchor];
    v111 = [v108 constraintEqualToAnchor:v110 constant:48.0];
    [(ICDocCamViewController *)self setThumbnailContainerViewTrailingConstraintForIPad:v111];

    [(ICDocCamViewController *)self updateThumbnailContainerViewConstraintConstantForIPad];
    v112 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v113 = [(ICDocCamViewController *)self thumbnailContainerViewTrailingConstraintForIPad];
    [v112 addObject:v113];

    v114 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v115 = [(ICDocCamViewController *)self thumbnailContainerView];
    v116 = [v115 bottomAnchor];
    v117 = [(ICDocCamViewController *)self view];
    v118 = [v117 safeAreaLayoutGuide];
    v119 = [v118 bottomAnchor];
    v120 = [v116 constraintEqualToAnchor:v119 constant:-16.0];
    [v114 addObject:v120];

    v121 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v122 = [(ICDocCamViewController *)self flashSettingView];
    v123 = [v122 trailingAnchor];
    v124 = [(ICDocCamViewController *)self flashButton];
    v125 = [v124 trailingAnchor];
    v126 = [v123 constraintEqualToAnchor:v125 constant:0.0];
    [v121 addObject:v126];

    v127 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v128 = [(ICDocCamViewController *)self flashSettingView];
    v129 = [v128 centerYAnchor];
    v130 = [(ICDocCamViewController *)self flashButton];
    v131 = [v130 centerYAnchor];
    v132 = [v129 constraintEqualToAnchor:v131 constant:0.0];
    [v127 addObject:v132];

    v133 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v134 = [(ICDocCamViewController *)self flashSettingView];
    v135 = [v134 heightAnchor];
    v136 = [v135 constraintEqualToConstant:44.0];
    [v133 addObject:v136];

    v137 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v138 = [(ICDocCamViewController *)self filterViewContainer];
    v139 = [v138 centerYAnchor];
    v140 = [(ICDocCamViewController *)self filterButton];
    v141 = [v140 centerYAnchor];
    v142 = [v139 constraintEqualToAnchor:v141 constant:0.0];
    [v137 addObject:v142];

    v143 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v144 = [(ICDocCamViewController *)self filterViewContainer];
    v145 = [v144 heightAnchor];
    v146 = [v145 constraintEqualToConstant:44.0];
    [v143 addObject:v146];

    v147 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v148 = [(ICDocCamViewController *)self filterViewContainer];
    v149 = [v148 trailingAnchor];
    v150 = [(ICDocCamViewController *)self filterButton];
    v151 = [v150 trailingAnchor];
    v152 = [v149 constraintEqualToAnchor:v151 constant:0.0];
    [v147 addObject:v152];

    v153 = [(ICDocCamViewController *)self filterScrollView];
    [v153 setContentInset:{0.0, 6.0, 0.0, 0.0}];

    v154 = [(ICDocCamViewController *)self filterViewContainer];
    v155 = [v154 widthAnchor];
    v156 = [v155 constraintEqualToConstant:44.0];
    [(ICDocCamViewController *)self setFilterViewContainerWidthConstraint:v156];

    v157 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v158 = [(ICDocCamViewController *)self filterViewContainerWidthConstraint];
    [v157 addObject:v158];

    v159 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v160 = [(ICDocCamViewController *)self filterViewContainer];
    v161 = [v160 centerYAnchor];
    v162 = [(ICDocCamViewController *)self filterButton];
    v163 = [v162 centerYAnchor];
    v164 = [v161 constraintEqualToAnchor:v163 constant:0.0];
    [v159 addObject:v164];

    v165 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v166 = [(ICDocCamViewController *)self filterScrollViewContainer];
    v167 = [v166 leadingAnchor];
    v168 = [(ICDocCamViewController *)self filterView];
    v169 = [v168 leadingAnchor];
    v170 = [v167 constraintEqualToAnchor:v169 constant:0.0];
    [v165 addObject:v170];

    v171 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v172 = [(ICDocCamViewController *)self filterScrollViewContainer];
    v173 = [v172 topAnchor];
    v174 = [(ICDocCamViewController *)self filterView];
    v175 = [v174 topAnchor];
    v176 = [v173 constraintEqualToAnchor:v175 constant:0.0];
    [v171 addObject:v176];

    v177 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v178 = [(ICDocCamViewController *)self filterScrollViewContainer];
    v179 = [v178 bottomAnchor];
    v180 = [(ICDocCamViewController *)self filterView];
    v181 = [v180 bottomAnchor];
    v182 = [v179 constraintEqualToAnchor:v181 constant:0.0];
    [v177 addObject:v182];

    v183 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    v184 = [(ICDocCamViewController *)self filterScrollViewContainer];
    v185 = [v184 trailingAnchor];
    v186 = [(ICDocCamViewController *)self filterView];
    v187 = [v186 trailingAnchor];
    v188 = [v185 constraintEqualToAnchor:v187 constant:0.0];
    [v183 addObject:v188];

    v189 = MEMORY[0x277CCAAD0];
    v190 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    [v189 activateConstraints:v190];
  }
}

- (void)updateConstraintsForIPhone
{
  if ([objc_opt_class() isLiquidGlassEnabledForCapture])
  {

    [(ICDocCamViewController *)self modernUpdateConstraintsForIPhone];
  }

  else
  {

    [(ICDocCamViewController *)self legacyUpdateConstraintsForIPhone];
  }
}

- (void)modernUpdateConstraintsForIPhone
{
  [(ICDocCamViewController *)self updateThumbnailConstraintsForIPhone];

  [(ICDocCamViewController *)self modernUpdatePlacardConstraints];
}

- (void)modernUpdatePlacardConstraints
{
  v13 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v13 userInterfaceIdiom];

  v4 = [(ICDocCamViewController *)self statusBarOrientation];
  v14 = [(ICDocCamViewController *)self view];
  [v14 safeAreaInsets];
  v6 = v5;
  v8 = v7;

  if (v3)
  {
    +[_TtC14DocumentCamera22DCLiquidGlassConstants bottomPlacardSpacingToBottomLandscapePad];
  }

  else
  {
    v15 = [(ICDocCamViewController *)self view];
    [DCLiquidGlassConstants topPlacardSpacingFor:"topPlacardSpacingFor:isPortrait:" isPortrait:?];
    v6 = v10;

    if ((v4 - 1) > 1)
    {
      +[_TtC14DocumentCamera22DCLiquidGlassConstants bottomPlacardSpacingToBottomLandscape];
    }

    else
    {
      +[_TtC14DocumentCamera22DCLiquidGlassConstants bottomPlacardSpacingToBottomPortrait];
    }
  }

  v11 = v9;
  v16 = [(ICDocCamViewController *)self userPromptViewVerticalConstraint];
  [v16 setConstant:v6];

  v17 = [(ICDocCamViewController *)self moveCameraCloserViewVerticalConstraint];
  [v17 setConstant:v6];

  v12 = -(v8 + v11);
  v18 = [(ICDocCamViewController *)self flashFeedbackBottomConstraint];
  [v18 setConstant:v12];

  v19 = [(ICDocCamViewController *)self filterNameFeedbackBottomConstraint];
  [v19 setConstant:v12];

  v20 = [(ICDocCamViewController *)self autoShutterOnFeedbackBottomConstraint];
  [v20 setConstant:v12];

  v21 = [(ICDocCamViewController *)self autoShutterOffFeedbackBottomConstraint];
  [v21 setConstant:v12];
}

- (void)updateThumbnailConstraintsForIPhone
{
  v31 = [MEMORY[0x277CBEB18] array];
  v3 = [(ICDocCamViewController *)self view];
  v4 = [(ICDocCamViewController *)self thumbnailContainerView];
  [v3 dc_removeAllConstraintsForSubview:v4];

  v5 = [(ICDocCamViewController *)self thumbnailContainerView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = 16.0;
  if ([objc_opt_class() isLiquidGlassEnabledForCapture])
  {
    +[_TtC14DocumentCamera22DCLiquidGlassConstants thumbnailSpacingToLeadingEdge];
    v6 = v7;
  }

  v8 = [(ICDocCamViewController *)self thumbnailContainerView];
  v9 = [v8 leadingAnchor];
  v10 = [(ICDocCamViewController *)self view];
  v11 = [v10 leadingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:v6];
  [(ICDocCamViewController *)self setThumbnailContainerViewLeadingConstraintForIPhone:v12];

  v13 = [(ICDocCamViewController *)self thumbnailContainerViewLeadingConstraintForIPhone];
  [v31 addObject:v13];

  v14 = 0.0;
  if ([objc_opt_class() isLiquidGlassEnabledForCapture])
  {
    +[_TtC14DocumentCamera22DCLiquidGlassConstants thumbnailSpacingToBottom];
    v14 = -v15;
  }

  v16 = [(ICDocCamViewController *)self thumbnailContainerView];
  v17 = [v16 bottomAnchor];
  v18 = [(ICDocCamViewController *)self view];
  v19 = [v18 bottomAnchor];
  v20 = [v17 constraintEqualToAnchor:v19 constant:v14];
  [(ICDocCamViewController *)self setThumbnailContainerViewBottomConstraintForIPhone:v20];

  v21 = [(ICDocCamViewController *)self thumbnailContainerViewBottomConstraintForIPhone];
  [v31 addObject:v21];

  v22 = [(ICDocCamViewController *)self thumbnailContainerView];
  v23 = [v22 heightAnchor];
  v24 = [v23 constraintEqualToConstant:80.0];
  [v31 addObject:v24];

  v25 = [(ICDocCamViewController *)self thumbnailContainerView];
  v26 = [v25 widthAnchor];
  v27 = [v26 constraintEqualToConstant:100.0];
  [v31 addObject:v27];

  v28 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
  [v28 addObjectsFromArray:v31];

  v29 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
  [v29 addObjectsFromArray:v31];

  v30 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
  [v30 addObjectsFromArray:v31];

  [MEMORY[0x277CCAAD0] activateConstraints:v31];
}

- (void)legacyUpdateConstraintsForIPhone
{
  v645 = *MEMORY[0x277D85DE8];
  v3 = [(ICDocCamViewController *)self view];
  [v3 dc_directionalSafeAreaInsets];
  v634 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [(ICDocCamViewController *)self statusBarOrientation]- 1;
  if (v11 > 1)
  {
    v15 = [(ICDocCamViewController *)self view];
    v16 = [v15 window];
    v17 = [v16 dc_requiresCompactLandscapeIcons];

    v633 = v17;
    if (v17)
    {
      v14 = 32.0;
    }

    else
    {
      v14 = 44.0;
    }

    v18 = [(ICDocCamViewController *)self view];
    v19 = [v18 window];
    v20 = [v19 windowScene];
    v21 = [v20 statusBarManager];
    [v21 statusBarFrame];
    v23 = v22;

    v12 = 0.0;
    v6 = fmax(v6 - v23, 0.0);
    v13 = v10;
  }

  else
  {
    v633 = 0;
    if (v8 <= 0.0)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 10.0;
    }

    v13 = v8 + v12;
    v14 = 44.0;
  }

  v24 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
  v25 = -(v13 + 13.0);
  if (v24 || ([(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v94 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];

    if (!v94)
    {
      v95 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(ICDocCamViewController *)self setIPhonePortraitLayoutConstraints:v95];

      v96 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(ICDocCamViewController *)self setIPhoneLandscapeLayoutConstraints:v96];

      v97 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(ICDocCamViewController *)self setIPhoneCompactLandscapeLayoutConstraints:v97];

      v98 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      v99 = [(ICDocCamViewController *)self filterNameFeedbackBottomConstraint];
      [v98 addObject:v99];

      v100 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      v101 = [(ICDocCamViewController *)self filterNameFeedbackBottomConstraint];
      [v100 addObject:v101];

      v102 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      v103 = [(ICDocCamViewController *)self filterNameFeedbackBottomConstraint];
      [v102 addObject:v103];

      v104 = [(ICDocCamViewController *)self topToolbarForIPhone];
      [v104 setTranslatesAutoresizingMaskIntoConstraints:0];

      v105 = [(ICDocCamViewController *)self cancelButtonForIPhone];
      [v105 setTranslatesAutoresizingMaskIntoConstraints:0];

      v106 = [(ICDocCamViewController *)self autoButtonForIPhone];
      [v106 setTranslatesAutoresizingMaskIntoConstraints:0];

      v107 = [(ICDocCamViewController *)self flashButtonForIPhone];
      [v107 setTranslatesAutoresizingMaskIntoConstraints:0];

      v108 = [(ICDocCamViewController *)self filterButtonForIPhone];
      [v108 setTranslatesAutoresizingMaskIntoConstraints:0];

      v109 = [(ICDocCamViewController *)self saveButton];
      [v109 setTranslatesAutoresizingMaskIntoConstraints:0];

      v110 = [(ICDocCamViewController *)self filterScrollViewContainer];
      [v110 setTranslatesAutoresizingMaskIntoConstraints:0];

      v111 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      v112 = [(ICDocCamViewController *)self shutterButton];
      v113 = [v112 centerXAnchor];
      v114 = [(ICDocCamViewController *)self view];
      v115 = [v114 centerXAnchor];
      v116 = [v113 constraintEqualToAnchor:v115 constant:0.0];
      [v111 addObject:v116];

      v117 = [(ICDocCamViewController *)self shutterButton];
      v118 = [v117 bottomAnchor];
      v119 = [(ICDocCamViewController *)self view];
      v120 = [v119 bottomAnchor];
      v121 = [v118 constraintEqualToAnchor:v120 constant:v25];
      [(ICDocCamViewController *)self setShutterButtonBottomConstraintForPortraitIPhone:v121];

      v122 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      v123 = [(ICDocCamViewController *)self shutterButtonBottomConstraintForPortraitIPhone];
      [v122 addObject:v123];

      v124 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      v125 = [(ICDocCamViewController *)self shutterButton];
      v126 = [v125 centerYAnchor];
      v127 = [(ICDocCamViewController *)self view];
      v128 = [v127 centerYAnchor];
      v129 = [v126 constraintEqualToAnchor:v128 constant:0.0];
      [v124 addObject:v129];

      v130 = [(ICDocCamViewController *)self shutterButton];
      v131 = [v130 trailingAnchor];
      v132 = [(ICDocCamViewController *)self view];
      v133 = [v132 trailingAnchor];
      v134 = [v131 constraintEqualToAnchor:v133 constant:v25];
      [(ICDocCamViewController *)self setShutterButtonBottomConstraintForLandscapeIPhone:v134];

      v135 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      v136 = [(ICDocCamViewController *)self shutterButtonBottomConstraintForLandscapeIPhone];
      [v135 addObject:v136];

      v137 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      v138 = [(ICDocCamViewController *)self shutterButton];
      v139 = [v138 centerYAnchor];
      v140 = [(ICDocCamViewController *)self view];
      v141 = [v140 centerYAnchor];
      v142 = [v139 constraintEqualToAnchor:v141 constant:0.0];
      [v137 addObject:v142];

      v143 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      v144 = [(ICDocCamViewController *)self shutterButtonBottomConstraintForLandscapeIPhone];
      [v143 addObject:v144];

      v145 = [MEMORY[0x277CBEB18] array];
      v146 = [(ICDocCamViewController *)self saveButton];
      v147 = [v146 centerYAnchor];
      v148 = [(ICDocCamViewController *)self shutterButton];
      v149 = [v148 centerYAnchor];
      v150 = [v147 constraintEqualToAnchor:v149 constant:0.0];
      [v145 addObject:v150];

      v151 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [v151 addObjectsFromArray:v145];

      [v145 removeAllObjects];
      v152 = [(ICDocCamViewController *)self saveButton];
      v153 = [v152 centerYAnchor];
      v154 = [(ICDocCamViewController *)self view];
      v155 = [v154 bottomAnchor];
      v156 = [v153 constraintEqualToAnchor:v155 constant:-34.0];
      [(ICDocCamViewController *)self setSaveButtonLandscapeVerticalConstraintForIPhone:v156];

      v157 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      v158 = [(ICDocCamViewController *)self saveButtonLandscapeVerticalConstraintForIPhone];
      [v157 addObject:v158];

      v159 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      v160 = [(ICDocCamViewController *)self saveButtonLandscapeVerticalConstraintForIPhone];
      [v159 addObject:v160];

      v161 = [(ICDocCamViewController *)self saveButton];
      v162 = [v161 trailingAnchor];
      v163 = [(ICDocCamViewController *)self view];
      v164 = [v163 trailingAnchor];
      v165 = [v162 constraintEqualToAnchor:v164 constant:-16.0];
      [v145 addObject:v165];

      v166 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [v166 addObjectsFromArray:v145];

      [v145 removeAllObjects];
      v167 = [(ICDocCamViewController *)self saveButton];
      v168 = [v167 trailingAnchor];
      v169 = [(ICDocCamViewController *)self view];
      v170 = [v169 trailingAnchor];
      v171 = [v168 constraintEqualToAnchor:v170 constant:0.0];
      [(ICDocCamViewController *)self setSaveButtonLandscapeTrailingConstraintForIPhone:v171];

      v172 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      v173 = [(ICDocCamViewController *)self saveButtonLandscapeTrailingConstraintForIPhone];
      [v172 addObject:v173];

      v174 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      v175 = [(ICDocCamViewController *)self saveButtonLandscapeTrailingConstraintForIPhone];
      [v174 addObject:v175];

      v176 = [MEMORY[0x277CBEB18] array];
      v177 = [(ICDocCamViewController *)self filterViewContainer];
      v178 = [v177 leadingAnchor];
      v179 = [(ICDocCamViewController *)self view];
      v180 = [v179 leadingAnchor];
      v181 = [v178 constraintEqualToAnchor:v180 constant:0.0];
      [v176 addObject:v181];

      v182 = [(ICDocCamViewController *)self filterViewContainer];
      v183 = [v182 trailingAnchor];
      v184 = [(ICDocCamViewController *)self view];
      v185 = [v184 trailingAnchor];
      v186 = [v183 constraintEqualToAnchor:v185 constant:0.0];
      [v176 addObject:v186];

      v187 = [(ICDocCamViewController *)self filterViewContainer];
      v188 = [v187 topAnchor];
      v189 = [(ICDocCamViewController *)self view];
      v190 = [v189 topAnchor];
      v191 = [v188 constraintEqualToAnchor:v190 constant:0.0];
      [v176 addObject:v191];

      v192 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [v192 addObjectsFromArray:v176];

      v193 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      [v193 addObjectsFromArray:v176];

      v194 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      [v194 addObjectsFromArray:v176];

      v195 = [(ICDocCamViewController *)self filterViewContainer];
      v196 = [v195 heightAnchor];
      v197 = [v196 constraintEqualToConstant:v14];
      [(ICDocCamViewController *)self setFilterViewContainerHeightConstraint:v197];

      v198 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      v199 = [(ICDocCamViewController *)self filterViewContainerHeightConstraint];
      [v198 addObject:v199];

      v200 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      v201 = [(ICDocCamViewController *)self filterViewContainerHeightConstraint];
      [v200 addObject:v201];

      v202 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      v203 = [(ICDocCamViewController *)self filterViewContainerHeightConstraint];
      [v202 addObject:v203];

      v204 = [MEMORY[0x277CBEB18] array];
      v205 = [(ICDocCamViewController *)self filterViewButton];
      v206 = [v205 leadingAnchor];
      v207 = [(ICDocCamViewController *)self filterView];
      v208 = [v207 leadingAnchor];
      v209 = [v206 constraintEqualToAnchor:v208 constant:4.0];
      [v204 addObject:v209];

      v210 = [(ICDocCamViewController *)self filterViewButton];
      v211 = [v210 bottomAnchor];
      v212 = [(ICDocCamViewController *)self filterView];
      v213 = [v212 bottomAnchor];
      v214 = [v211 constraintEqualToAnchor:v213 constant:0.0];
      [v204 addObject:v214];

      v215 = [(ICDocCamViewController *)self filterScrollViewContainer];
      v216 = [v215 leadingAnchor];
      v217 = [(ICDocCamViewController *)self filterViewButton];
      v218 = [v217 trailingAnchor];
      v219 = [v216 constraintEqualToAnchor:v218 constant:0.0];
      [v204 addObject:v219];

      v220 = [(ICDocCamViewController *)self filterScrollViewContainer];
      v221 = [v220 bottomAnchor];
      v222 = [(ICDocCamViewController *)self filterView];
      v223 = [v222 bottomAnchor];
      v224 = [v221 constraintEqualToAnchor:v223 constant:0.0];
      [v204 addObject:v224];

      v225 = [(ICDocCamViewController *)self filterScrollViewContainer];
      v226 = [v225 trailingAnchor];
      v227 = [(ICDocCamViewController *)self filterView];
      v228 = [v227 trailingAnchor];
      v229 = [v226 constraintEqualToAnchor:v228 constant:0.0];
      [v204 addObject:v229];

      v230 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [v230 addObjectsFromArray:v204];

      v231 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      [v231 addObjectsFromArray:v204];

      v232 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      [v232 addObjectsFromArray:v204];

      [v204 removeAllObjects];
      v233 = [(ICDocCamViewController *)self filterViewButton];
      v234 = [v233 topAnchor];
      v235 = [(ICDocCamViewController *)self filterView];
      v236 = [v235 bottomAnchor];
      v237 = [v234 constraintEqualToAnchor:v236 constant:-44.0];
      [v204 addObject:v237];

      v238 = [(ICDocCamViewController *)self filterScrollViewContainer];
      v239 = [v238 topAnchor];
      v240 = [(ICDocCamViewController *)self filterView];
      v241 = [v240 bottomAnchor];
      v242 = [v239 constraintEqualToAnchor:v241 constant:-44.0];
      [v204 addObject:v242];

      v243 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [v243 addObjectsFromArray:v204];

      [v204 removeAllObjects];
      v244 = [(ICDocCamViewController *)self filterViewButton];
      v245 = [v244 topAnchor];
      v246 = [(ICDocCamViewController *)self filterView];
      v247 = [v246 bottomAnchor];
      v248 = [v245 constraintEqualToAnchor:v247 constant:-44.0];
      [v204 addObject:v248];

      v249 = [(ICDocCamViewController *)self filterScrollViewContainer];
      v250 = [v249 topAnchor];
      v251 = [(ICDocCamViewController *)self filterView];
      v252 = [v251 bottomAnchor];
      v253 = [v250 constraintEqualToAnchor:v252 constant:-44.0];
      [v204 addObject:v253];

      v254 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      [v254 addObjectsFromArray:v204];

      [v204 removeAllObjects];
      v255 = [(ICDocCamViewController *)self filterViewButton];
      v256 = [v255 topAnchor];
      v257 = [(ICDocCamViewController *)self filterView];
      v258 = [v257 bottomAnchor];
      v259 = [v256 constraintEqualToAnchor:v258 constant:-32.0];
      [v204 addObject:v259];

      v260 = [(ICDocCamViewController *)self filterScrollViewContainer];
      v261 = [v260 topAnchor];
      v262 = [(ICDocCamViewController *)self filterView];
      v263 = [v262 bottomAnchor];
      v264 = [v261 constraintEqualToAnchor:v263 constant:-32.0];
      [v204 addObject:v264];

      v265 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      [v265 addObjectsFromArray:v204];

      v266 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      v267 = [(ICDocCamViewController *)self cancelButtonForIPhone];
      v268 = [v267 centerYAnchor];
      v269 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v270 = [v269 bottomAnchor];
      v271 = [v268 constraintEqualToAnchor:v270 constant:-22.0];
      [v266 addObject:v271];

      v272 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      v273 = [(ICDocCamViewController *)self cancelButtonForIPhone];
      v274 = [v273 centerYAnchor];
      v275 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v276 = [v275 bottomAnchor];
      v277 = [v274 constraintEqualToAnchor:v276 constant:-22.0];
      [v272 addObject:v277];

      v278 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      v279 = [(ICDocCamViewController *)self cancelButtonForIPhone];
      v280 = [v279 centerYAnchor];
      v281 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v282 = [v281 bottomAnchor];
      v283 = [v280 constraintEqualToAnchor:v282 constant:-16.0];
      [v278 addObject:v283];

      v284 = [(ICDocCamViewController *)self cancelButtonForIPhone];
      v285 = [v284 leadingAnchor];
      v286 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v287 = [v286 leadingAnchor];
      v288 = [v285 constraintEqualToAnchor:v287 constant:0.0];
      [(ICDocCamViewController *)self setCancelButtonForIPhoneLeadingConstraint:v288];

      v289 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      v290 = [(ICDocCamViewController *)self cancelButtonForIPhoneLeadingConstraint];
      [v289 addObject:v290];

      v291 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      v292 = [(ICDocCamViewController *)self cancelButtonForIPhoneLeadingConstraint];
      [v291 addObject:v292];

      v293 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      v294 = [(ICDocCamViewController *)self cancelButtonForIPhoneLeadingConstraint];
      [v293 addObject:v294];

      v295 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      v296 = [(ICDocCamViewController *)self autoButtonForIPhone];
      v297 = [v296 centerYAnchor];
      v298 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v299 = [v298 bottomAnchor];
      v300 = [v297 constraintEqualToAnchor:v299 constant:-22.0];
      [v295 addObject:v300];

      v301 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      v302 = [(ICDocCamViewController *)self autoButtonForIPhone];
      v303 = [v302 centerYAnchor];
      v304 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v305 = [v304 bottomAnchor];
      v306 = [v303 constraintEqualToAnchor:v305 constant:-22.0];
      [v301 addObject:v306];

      v307 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      v308 = [(ICDocCamViewController *)self autoButtonForIPhone];
      v309 = [v308 centerYAnchor];
      v310 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v311 = [v310 bottomAnchor];
      v312 = [v309 constraintEqualToAnchor:v311 constant:-16.0];
      [v307 addObject:v312];

      v313 = [(ICDocCamViewController *)self autoButtonForIPhone];
      v314 = [v313 trailingAnchor];
      v315 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v316 = [v315 trailingAnchor];
      v317 = [v314 constraintEqualToAnchor:v316 constant:0.0];
      [(ICDocCamViewController *)self setAutoButtonForIPhoneTrailingConstraint:v317];

      v318 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      v319 = [(ICDocCamViewController *)self autoButtonForIPhoneTrailingConstraint];
      [v318 addObject:v319];

      v320 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      v321 = [(ICDocCamViewController *)self autoButtonForIPhoneTrailingConstraint];
      [v320 addObject:v321];

      v322 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      v323 = [(ICDocCamViewController *)self autoButtonForIPhoneTrailingConstraint];
      [v322 addObject:v323];

      v324 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      v325 = [(ICDocCamViewController *)self flashButtonForIPhone];
      v326 = [v325 centerYAnchor];
      v327 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v328 = [v327 bottomAnchor];
      v329 = [v326 constraintEqualToAnchor:v328 constant:-22.0];
      [v324 addObject:v329];

      v330 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      v331 = [(ICDocCamViewController *)self flashButtonForIPhone];
      v332 = [v331 centerYAnchor];
      v333 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v334 = [v333 bottomAnchor];
      v335 = [v332 constraintEqualToAnchor:v334 constant:-22.0];
      [v330 addObject:v335];

      v336 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      v337 = [(ICDocCamViewController *)self flashButtonForIPhone];
      v338 = [v337 centerYAnchor];
      v339 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v340 = [v339 bottomAnchor];
      v341 = [v338 constraintEqualToAnchor:v340 constant:-16.0];
      [v336 addObject:v341];

      v342 = [(ICDocCamViewController *)self view];
      [v342 bounds];
      v344 = v343;

      v345 = [(ICDocCamViewController *)self view];
      [v345 bounds];
      v347 = v346;

      if (v344 < v347)
      {
        v347 = v344;
      }

      v348 = [(ICDocCamViewController *)self cancelButtonForIPhone];
      [v348 bounds];
      v350 = v349;

      v351 = [(ICDocCamViewController *)self autoButtonForIPhone];
      v632 = v14;
      [v351 bounds];
      v352 = v350 + 12.0;
      v354 = v353 + 12.0;

      if (v352 < v354)
      {
        v352 = v354;
      }

      v355 = [MEMORY[0x277CBEB18] array];
      v356 = [(ICDocCamViewController *)self flashButtonForIPhone];
      v357 = [v356 centerXAnchor];
      v358 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v359 = [v358 centerXAnchor];
      v360 = (v347 - (v352 + v352) + -88.0) / 3.0 * 0.5;
      v361 = [v357 constraintEqualToAnchor:v359 constant:-22.0 - v360];
      [v355 addObject:v361];

      v362 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [v362 addObjectsFromArray:v355];

      [v355 removeAllObjects];
      v363 = [(ICDocCamViewController *)self view];
      [v363 bounds];
      v365 = v364;

      v366 = [(ICDocCamViewController *)self view];
      [v366 bounds];
      v368 = v367;

      if (v365 >= v368)
      {
        v368 = v365;
      }

      v369 = [(ICDocCamViewController *)self cancelButtonForIPhone];
      [v369 bounds];
      v371 = v370;

      v372 = [(ICDocCamViewController *)self autoButtonForIPhone];
      v631 = v360;
      [v372 bounds];
      v373 = v371 + 12.0;
      v375 = v374 + 12.0;

      if (v373 >= v375)
      {
        v375 = v373;
      }

      v376 = [(ICDocCamViewController *)self flashButtonForIPhone];
      v377 = [v376 centerXAnchor];
      v378 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v379 = [v378 centerXAnchor];
      v380 = (v368 - (v375 + v375) + -88.0) / 3.0 * 0.5;
      v381 = [v377 constraintEqualToAnchor:v379 constant:-22.0 - v380];
      [v355 addObject:v381];

      v382 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      [v382 addObjectsFromArray:v355];

      [v355 removeAllObjects];
      v383 = [(ICDocCamViewController *)self view];
      [v383 bounds];
      v385 = v384;

      v386 = [(ICDocCamViewController *)self view];
      [v386 bounds];
      v388 = v387;

      if (v385 >= v388)
      {
        v388 = v385;
      }

      v389 = [(ICDocCamViewController *)self cancelButtonForIPhone];
      [v389 bounds];
      v391 = v390;

      v392 = [(ICDocCamViewController *)self autoButtonForIPhone];
      v630 = v380;
      [v392 bounds];
      v393 = v391 + 12.0;
      v395 = v394 + 12.0;

      if (v393 >= v395)
      {
        v395 = v393;
      }

      [(ICDocCamViewController *)self flashButtonForIPhone];
      v396 = v14 = v632;
      v397 = [v396 centerXAnchor];
      v398 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v399 = [v398 centerXAnchor];
      v400 = (v388 - (v395 + v395) + -64.0) / 3.0 * 0.5;
      v401 = [v397 constraintEqualToAnchor:v399 constant:-16.0 - v400];
      [v355 addObject:v401];

      v402 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      [v402 addObjectsFromArray:v355];

      [v355 removeAllObjects];
      v403 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      v404 = [(ICDocCamViewController *)self filterButtonForIPhone];
      v405 = [v404 centerYAnchor];
      v406 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v407 = [v406 bottomAnchor];
      v408 = [v405 constraintEqualToAnchor:v407 constant:-22.0];
      [v403 addObject:v408];

      v409 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      v410 = [(ICDocCamViewController *)self filterButtonForIPhone];
      v411 = [v410 centerYAnchor];
      v412 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v413 = [v412 bottomAnchor];
      v414 = [v411 constraintEqualToAnchor:v413 constant:-22.0];
      [v409 addObject:v414];

      v415 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      v416 = [(ICDocCamViewController *)self filterButtonForIPhone];
      v417 = [v416 centerYAnchor];
      v418 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v419 = [v418 bottomAnchor];
      v420 = [v417 constraintEqualToAnchor:v419 constant:-16.0];
      [v415 addObject:v420];

      v421 = [(ICDocCamViewController *)self filterButtonForIPhone];
      v422 = [v421 centerXAnchor];
      v423 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v424 = [v423 centerXAnchor];
      v425 = [v422 constraintEqualToAnchor:v424 constant:v631 + 22.0];
      [v355 addObject:v425];

      v426 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [v426 addObjectsFromArray:v355];

      [v355 removeAllObjects];
      v427 = [(ICDocCamViewController *)self filterButtonForIPhone];
      v428 = [v427 centerXAnchor];
      v429 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v430 = [v429 centerXAnchor];
      v431 = [v428 constraintEqualToAnchor:v430 constant:v630 + 22.0];
      [v355 addObject:v431];

      v432 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      [v432 addObjectsFromArray:v355];

      [v355 removeAllObjects];
      v433 = [(ICDocCamViewController *)self filterButtonForIPhone];
      v434 = [v433 centerXAnchor];
      v435 = [(ICDocCamViewController *)self topToolbarForIPhone];
      v436 = [v435 centerXAnchor];
      v437 = [v434 constraintEqualToAnchor:v436 constant:v400 + 16.0];
      [v355 addObject:v437];

      v438 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      [v438 addObjectsFromArray:v355];

      v439 = [MEMORY[0x277CBEB18] array];
      v641 = 0u;
      v642 = 0u;
      v639 = 0u;
      v640 = 0u;
      v440 = [(ICDocCamViewController *)self flashSettingView];
      v441 = [v440 constraints];

      v442 = [v441 countByEnumeratingWithState:&v639 objects:v644 count:16];
      if (v442)
      {
        v443 = *v640;
        do
        {
          for (i = 0; i != v442; ++i)
          {
            if (*v640 != v443)
            {
              objc_enumerationMutation(v441);
            }

            [v439 addObject:*(*(&v639 + 1) + 8 * i)];
          }

          v442 = [v441 countByEnumeratingWithState:&v639 objects:v644 count:16];
        }

        while (v442);
      }

      v445 = [(ICDocCamViewController *)self flashSettingView];
      [v445 removeConstraints:v439];

      v446 = [MEMORY[0x277CBEB18] array];

      v637 = 0u;
      v638 = 0u;
      v635 = 0u;
      v636 = 0u;
      v447 = [(ICDocCamViewController *)self flashSettingButtonView];
      v448 = [v447 constraints];

      v449 = [v448 countByEnumeratingWithState:&v635 objects:v643 count:16];
      if (v449)
      {
        v450 = *v636;
        do
        {
          for (j = 0; j != v449; ++j)
          {
            if (*v636 != v450)
            {
              objc_enumerationMutation(v448);
            }

            [v446 addObject:*(*(&v635 + 1) + 8 * j)];
          }

          v449 = [v448 countByEnumeratingWithState:&v635 objects:v643 count:16];
        }

        while (v449);
      }

      v452 = [(ICDocCamViewController *)self flashSettingButtonView];
      [v452 removeConstraints:v446];

      v453 = [(ICDocCamViewController *)self view];
      v454 = [(ICDocCamViewController *)self flashSettingView];
      [v453 dc_removeAllConstraintsForSubview:v454];

      v455 = [(ICDocCamViewController *)self flashSettingView];
      [v455 setTranslatesAutoresizingMaskIntoConstraints:0];

      v456 = [(ICDocCamViewController *)self flashSettingView];
      v457 = [(ICDocCamViewController *)self flashSettingButtonView];
      [v456 dc_removeAllConstraintsForSubview:v457];

      v458 = [(ICDocCamViewController *)self flashSettingButtonView];
      [v458 setTranslatesAutoresizingMaskIntoConstraints:0];

      v459 = [(ICDocCamViewController *)self flashSettingButtonView];
      v460 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      [v459 dc_removeAllConstraintsForSubview:v460];

      v461 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      [v461 setTranslatesAutoresizingMaskIntoConstraints:0];

      v462 = [(ICDocCamViewController *)self flashSettingButtonView];
      v463 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      [v462 dc_removeAllConstraintsForSubview:v463];

      v464 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      [v464 setTranslatesAutoresizingMaskIntoConstraints:0];

      v465 = [(ICDocCamViewController *)self flashSettingButtonView];
      v466 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      [v465 dc_removeAllConstraintsForSubview:v466];

      v467 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      [v467 setTranslatesAutoresizingMaskIntoConstraints:0];

      v468 = [(ICDocCamViewController *)self flashSettingButtonView];
      v469 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      [v468 dc_removeAllConstraintsForSubview:v469];

      v470 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      [v470 setTranslatesAutoresizingMaskIntoConstraints:0];

      v471 = [(ICDocCamViewController *)self flashButton];
      [v471 setHidden:1];

      v472 = [MEMORY[0x277CBEB18] array];
      v473 = [(ICDocCamViewController *)self flashSettingView];
      v474 = [v473 leadingAnchor];
      v475 = [(ICDocCamViewController *)self view];
      v476 = [v475 leadingAnchor];
      v477 = [v474 constraintEqualToAnchor:v476 constant:0.0];
      [v472 addObject:v477];

      v478 = [(ICDocCamViewController *)self flashSettingView];
      v479 = [v478 trailingAnchor];
      v480 = [(ICDocCamViewController *)self view];
      v481 = [v480 trailingAnchor];
      v482 = [v479 constraintEqualToAnchor:v481 constant:0.0];
      [v472 addObject:v482];

      v483 = [(ICDocCamViewController *)self flashSettingView];
      v484 = [v483 topAnchor];
      v485 = [(ICDocCamViewController *)self view];
      v486 = [v485 topAnchor];
      v487 = [v484 constraintEqualToAnchor:v486 constant:0.0];
      [v472 addObject:v487];

      v488 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [v488 addObjectsFromArray:v472];

      v489 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      [v489 addObjectsFromArray:v472];

      v490 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      [v490 addObjectsFromArray:v472];

      v491 = [(ICDocCamViewController *)self flashSettingView];
      v492 = [v491 heightAnchor];
      v493 = [v492 constraintEqualToConstant:v632];
      [(ICDocCamViewController *)self setFlashSettingViewHeightConstraint:v493];

      v494 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      v495 = [(ICDocCamViewController *)self flashSettingViewHeightConstraint];
      [v494 addObject:v495];

      v496 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      v497 = [(ICDocCamViewController *)self flashSettingViewHeightConstraint];
      [v496 addObject:v497];

      v498 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      v499 = [(ICDocCamViewController *)self flashSettingViewHeightConstraint];
      [v498 addObject:v499];

      v500 = [MEMORY[0x277CBEB18] array];
      v501 = [(ICDocCamViewController *)self flashSettingButtonView];
      v502 = [v501 leadingAnchor];
      v503 = [(ICDocCamViewController *)self flashSettingView];
      v504 = [v503 leadingAnchor];
      v505 = [v502 constraintEqualToAnchor:v504 constant:0.0];
      [v500 addObject:v505];

      v506 = [(ICDocCamViewController *)self flashSettingButtonView];
      v507 = [v506 trailingAnchor];
      v508 = [(ICDocCamViewController *)self flashSettingView];
      v509 = [v508 trailingAnchor];
      v510 = [v507 constraintEqualToAnchor:v509 constant:0.0];
      [v500 addObject:v510];

      v511 = [(ICDocCamViewController *)self flashSettingButtonView];
      v512 = [v511 bottomAnchor];
      v513 = [(ICDocCamViewController *)self flashSettingView];
      v514 = [v513 bottomAnchor];
      v515 = [v512 constraintEqualToAnchor:v514 constant:0.0];
      [v500 addObject:v515];

      v516 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [v516 addObjectsFromArray:v500];

      v517 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      [v517 addObjectsFromArray:v500];

      v518 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      [v518 addObjectsFromArray:v500];

      v519 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      v520 = [(ICDocCamViewController *)self flashSettingButtonView];
      v521 = [v520 topAnchor];
      v522 = [(ICDocCamViewController *)self flashSettingView];
      v523 = [v522 bottomAnchor];
      v524 = [v521 constraintEqualToAnchor:v523 constant:-44.0];
      [v519 addObject:v524];

      v525 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      v526 = [(ICDocCamViewController *)self flashSettingButtonView];
      v527 = [v526 topAnchor];
      v528 = [(ICDocCamViewController *)self flashSettingView];
      v529 = [v528 bottomAnchor];
      v530 = [v527 constraintEqualToAnchor:v529 constant:-44.0];
      [v525 addObject:v530];

      v531 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      v532 = [(ICDocCamViewController *)self flashSettingButtonView];
      v533 = [v532 topAnchor];
      v534 = [(ICDocCamViewController *)self flashSettingView];
      v535 = [v534 bottomAnchor];
      v536 = [v533 constraintEqualToAnchor:v535 constant:-32.0];
      [v531 addObject:v536];

      v537 = [(ICDocCamViewController *)self view];
      [v537 bounds];
      v539 = v538;

      v540 = [(ICDocCamViewController *)self view];
      [v540 bounds];
      v542 = v541;

      if (v539 >= v542)
      {
        v539 = v542;
      }

      v543 = [MEMORY[0x277CBEB18] array];
      v544 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      v545 = [v544 centerXAnchor];
      v546 = [(ICDocCamViewController *)self flashSettingButtonView];
      v547 = [v546 leadingAnchor];
      v548 = [v545 constraintEqualToAnchor:v547 constant:24.0];
      [v543 addObject:v548];

      v549 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      v550 = [v549 centerYAnchor];
      v551 = [(ICDocCamViewController *)self flashSettingButtonView];
      v552 = [v551 centerYAnchor];
      v553 = [v550 constraintEqualToAnchor:v552 constant:0.0];
      [v543 addObject:v553];

      v554 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      v555 = [v554 centerXAnchor];
      v556 = [(ICDocCamViewController *)self flashSettingButtonView];
      v557 = [v556 leadingAnchor];
      v558 = v539 * 0.5;
      v559 = (v558 + -32.0) * 0.5;
      v560 = [v555 constraintEqualToAnchor:v557 constant:v559 + 32.0];
      [v543 addObject:v560];

      v561 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      v562 = [v561 centerYAnchor];
      v563 = [(ICDocCamViewController *)self flashSettingButtonView];
      v564 = [v563 centerYAnchor];
      v565 = [v562 constraintEqualToAnchor:v564 constant:0.0];
      [v543 addObject:v565];

      v566 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      v567 = [v566 centerXAnchor];
      v568 = [(ICDocCamViewController *)self flashSettingButtonView];
      v569 = [v568 leadingAnchor];
      v570 = [v567 constraintEqualToAnchor:v569 constant:v558];
      [v543 addObject:v570];

      v571 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      v572 = [v571 centerYAnchor];
      v573 = [(ICDocCamViewController *)self flashSettingButtonView];
      v574 = [v573 centerYAnchor];
      v575 = [v572 constraintEqualToAnchor:v574 constant:0.0];
      [v543 addObject:v575];

      v576 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      v577 = [v576 centerXAnchor];
      v578 = [(ICDocCamViewController *)self flashSettingButtonView];
      v579 = [v578 leadingAnchor];
      v580 = [v577 constraintEqualToAnchor:v579 constant:v558 + v559];
      [v543 addObject:v580];

      v581 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      v582 = [v581 centerYAnchor];
      v583 = [(ICDocCamViewController *)self flashSettingButtonView];
      v584 = [v583 centerYAnchor];
      v585 = [v582 constraintEqualToAnchor:v584 constant:0.0];
      [v543 addObject:v585];

      v586 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [v586 addObjectsFromArray:v543];

      v587 = [MEMORY[0x277CBEB18] array];
      v588 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      v589 = [v588 trailingAnchor];
      v590 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      v591 = [v590 leadingAnchor];
      v592 = [v589 constraintEqualToAnchor:v591 constant:-37.0];
      [v587 addObject:v592];

      v593 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      v594 = [v593 centerYAnchor];
      v595 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      v596 = [v595 centerYAnchor];
      v597 = [v594 constraintEqualToAnchor:v596 constant:0.0];
      [v587 addObject:v597];

      v598 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      v599 = [v598 trailingAnchor];
      v600 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      v601 = [v600 leadingAnchor];
      v602 = [v599 constraintEqualToAnchor:v601 constant:-46.0];
      [v587 addObject:v602];

      v603 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      v604 = [v603 centerYAnchor];
      v605 = [(ICDocCamViewController *)self flashSettingButtonView];
      v606 = [v605 centerYAnchor];
      v607 = [v604 constraintEqualToAnchor:v606 constant:0.0];
      [v587 addObject:v607];

      v608 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      v609 = [v608 centerXAnchor];
      v610 = [(ICDocCamViewController *)self flashSettingButtonView];
      v611 = [v610 centerXAnchor];
      v612 = [v609 constraintEqualToAnchor:v611 constant:0.0];
      [v587 addObject:v612];

      v613 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      v614 = [v613 centerYAnchor];
      v615 = [(ICDocCamViewController *)self flashSettingButtonView];
      v616 = [v615 centerYAnchor];
      v617 = [v614 constraintEqualToAnchor:v616 constant:0.0];
      [v587 addObject:v617];

      v618 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      v619 = [v618 leadingAnchor];
      v620 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      v621 = [v620 trailingAnchor];
      v622 = [v619 constraintEqualToAnchor:v621 constant:46.0];
      [v587 addObject:v622];

      v623 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      v624 = [v623 centerYAnchor];
      v625 = [(ICDocCamViewController *)self flashSettingButtonView];
      v626 = [v625 centerYAnchor];
      v627 = [v624 constraintEqualToAnchor:v626 constant:0.0];
      [v587 addObject:v627];

      v628 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      [v628 addObjectsFromArray:v587];

      v629 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      [v629 addObjectsFromArray:v587];

      [(ICDocCamViewController *)self updateThumbnailConstraintsForIPhone];
    }
  }

  v26 = [(ICDocCamViewController *)self autoShutterOffTopLayoutConstraint];
  [v26 setConstant:v6 + 60.0];

  v27 = [(ICDocCamViewController *)self autoShutterOffTopLayoutConstraint];
  [v27 setConstant:v6 + 60.0];

  v28 = [(ICDocCamViewController *)self shutterButtonBottomConstraintForPortraitIPhone];
  [v28 setConstant:v25];

  v29 = [(ICDocCamViewController *)self shutterButtonBottomConstraintForLandscapeIPhone];
  [v29 setConstant:v25];

  v30 = [(ICDocCamViewController *)self filterViewContainerHeightConstraint];
  v31 = v14 + v6;
  [v30 setConstant:v31];

  v32 = [(ICDocCamViewController *)self flashSettingViewHeightConstraint];
  [v32 setConstant:v31];

  v33 = [(ICDocCamViewController *)self thumbnailContainerViewBottomConstraintForIPhone];
  [v33 setConstant:-16.0 - v8 - v12];

  v34 = [(ICDocCamViewController *)self thumbnailContainerViewLeadingConstraintForIPhone];
  [v34 setConstant:v634 + 16.0];

  v35 = [(ICDocCamViewController *)self cancelButtonForIPhoneLeadingConstraint];
  [v35 setConstant:v634 + 12.0];

  v36 = [(ICDocCamViewController *)self autoButtonForIPhoneTrailingConstraint];
  [v36 setConstant:-12.0 - v10];

  v37 = [(ICDocCamViewController *)self saveButtonLandscapeVerticalConstraintForIPhone];
  [v37 setConstant:-34.0 - v8];

  v38 = [(ICDocCamViewController *)self saveButtonLandscapeTrailingConstraintForIPhone];
  [v38 setConstant:-21.0 - v10];

  v39 = [(ICDocCamViewController *)self view];
  [v39 frame];
  v41 = v40;

  v42 = [(ICDocCamViewController *)self view];
  [v42 frame];
  v44 = v43;

  if (v41 >= v44)
  {
    v41 = v44;
  }

  v45 = [(ICDocCamViewController *)self saveButton];
  [v45 setMaxWidthForPortraitIPhone:(v41 * 0.5 + -43.0 + -16.0)];

  v46 = [(ICDocCamViewController *)self filterButtonImage];
  v47 = [(ICDocCamViewController *)self filterButton];
  [v47 setImage:v46 forState:0];

  v48 = [(ICDocCamViewController *)self filterButtonForIPhone];
  [v48 setImage:v46 forState:0];

  v49 = [(ICDocCamViewController *)self filterViewButton];
  [v49 setImage:v46 forState:0];

  v50 = [(ICDocCamViewController *)self flashButtonImage];
  v51 = [(ICDocCamViewController *)self flashButton];
  [v51 setImage:v50 forState:0];

  v52 = [(ICDocCamViewController *)self flashButtonForIPhone];
  [v52 setImage:v50 forState:0];

  v53 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
  [v53 setImage:v50 forState:0];

  [(ICDocCamViewController *)self filterScrollViewContentWidthWithInterItemSpacing:20.0 startPadding:10.0 endPadding:0.0];
  v55 = v54;
  v56 = [(ICDocCamViewController *)self filterViewButton];
  [v56 frame];
  v58 = v57;

  v59 = [(ICDocCamViewController *)self view];
  [v59 bounds];
  v61 = v60;

  v62 = [(ICDocCamViewController *)self filterViewLeadingConstraint];
  [v62 setConstant:0.0];

  v63 = [(ICDocCamViewController *)self filterViewTrailingConstraint];
  [v63 setConstant:0.0];

  if (v61 <= v55 + v58 || v11 < 2)
  {
    if (v11 <= 1)
    {
      v65 = MEMORY[0x277CCAAD0];
      v66 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      [v65 deactivateConstraints:v66];

      v67 = MEMORY[0x277CCAAD0];
      v68 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      [v67 deactivateConstraints:v68];

      v69 = MEMORY[0x277CCAAD0];
      v70 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [v69 activateConstraints:v70];

      v71 = [(ICDocCamViewController *)self topToolbarForIPhoneHeightConstraint];
      [v71 setConstant:v6 + 44.0];

      v72 = [(ICDocCamViewController *)self filterNameFeedbackBottomConstraint];
      [v72 setConstant:v6 + 59.0];
      goto LABEL_25;
    }
  }

  else
  {
    v73 = [(ICDocCamViewController *)self view];
    [v73 bounds];
    v75 = v74;

    v76 = [(ICDocCamViewController *)self filterViewButton];
    [v76 frame];
    v78 = v77;
    v79 = [(ICDocCamViewController *)self filterViewLeadingConstraint];
    v80 = v75 - v55 + -10.0;
    [v79 setConstant:v80 * 0.5 - v78 + -4.0];

    v81 = [(ICDocCamViewController *)self filterViewTrailingConstraint];
    [v81 setConstant:v80 * -0.5];
  }

  v82 = MEMORY[0x277CCAAD0];
  v83 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
  [v82 deactivateConstraints:v83];

  v84 = MEMORY[0x277CCAAD0];
  if (v633)
  {
    v85 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
    [v84 deactivateConstraints:v85];

    v86 = MEMORY[0x277CCAAD0];
    v87 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
    [v86 activateConstraints:v87];

    v88 = [(ICDocCamViewController *)self topToolbarForIPhoneHeightConstraint];
    [v88 setConstant:v6 + 32.0];

    v72 = [(ICDocCamViewController *)self filterNameFeedbackBottomConstraint];
    [v72 setConstant:v6 + 45.0];
  }

  else
  {
    v89 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
    [v84 deactivateConstraints:v89];

    v90 = MEMORY[0x277CCAAD0];
    v91 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
    [v90 activateConstraints:v91];

    v92 = [(ICDocCamViewController *)self topToolbarForIPhoneHeightConstraint];
    [v92 setConstant:v6 + 44.0];

    v72 = [(ICDocCamViewController *)self filterNameFeedbackBottomConstraint];
    [v72 setConstant:v6 + 59.0];
  }

LABEL_25:

  v93 = [(ICDocCamViewController *)self view];
  [v93 layoutIfNeeded];
}

- (void)updateThumbnailContainerViewConstraintConstantForIPad
{
  v8 = [(ICDocCamViewController *)self cancelButton];
  [v8 bounds];
  v4 = v3;

  v9 = [(ICDocCamViewController *)self saveButton];
  [v9 bounds];
  v6 = v5;

  v7 = vabdd_f64(v4, v6);
  v10 = [(ICDocCamViewController *)self thumbnailContainerViewLeadingConstraintForIPad];
  if (v4 >= v6)
  {
    [v10 setConstant:48.0];

    v11 = [(ICDocCamViewController *)self thumbnailContainerViewTrailingConstraintForIPad];
    [v11 setConstant:-(v7 + 48.0)];
  }

  else
  {
    [v10 setConstant:v7 + 48.0];

    v11 = [(ICDocCamViewController *)self thumbnailContainerViewTrailingConstraintForIPad];
    [v11 setConstant:-48.0];
  }
}

- (double)filterScrollViewContentWidthWithInterItemSpacing:(double)a3 startPadding:(double)a4 endPadding:(double)a5
{
  for (i = 0; ; ++i)
  {
    v10 = [(ICDocCamViewController *)self filterButtons];
    v11 = [v10 count];

    if (v11 <= i)
    {
      break;
    }

    v12 = [(ICDocCamViewController *)self filterButtons];
    v13 = [v12 objectAtIndexedSubscript:i];

    [v13 frame];
    v15 = v14;
    v16 = [(ICDocCamViewController *)self filterNames];
    v17 = [v16 count] - 1;

    if (v17 <= i)
    {
      v18 = a5;
    }

    else
    {
      v18 = a3;
    }

    a4 = a4 + v15 + v18;
  }

  return a4;
}

+ (BOOL)isLiquidGlassEnabledForCapture
{
  if (+[ICDocCamViewController isLiquidGlassEnabledForCapture]::onceToken != -1)
  {
    +[ICDocCamViewController isLiquidGlassEnabledForCapture];
  }

  return +[ICDocCamViewController isLiquidGlassEnabledForCapture]::liquidGlassEnabled;
}

uint64_t __56__ICDocCamViewController_isLiquidGlassEnabledForCapture__block_invoke()
{
  result = _UISolariumEnabled();
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  +[ICDocCamViewController isLiquidGlassEnabledForCapture]::liquidGlassEnabled = result;
  return result;
}

- (void)overlayCloseButtonTapped:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.documentcamera", "LiquidGlass");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamViewController overlayCloseButtonTapped:];
  }

  [(ICDocCamViewController *)self cancelAction:v4];
}

- (void)overlayCaptureButtonTapped:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.documentcamera", "LiquidGlass");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamViewController overlayCaptureButtonTapped:];
  }

  [(ICDocCamViewController *)self shutterButtonAction:v4];
  v6 = [(ICDocCamViewController *)self thumbnailViewController];
  [v6 update];
}

- (void)overlayDoneButtonTapped:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.documentcamera", "LiquidGlass");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamViewController overlayDoneButtonTapped:];
  }

  [(ICDocCamViewController *)self saveAction:v4];
}

- (void)setOverlayFlashMode:(int64_t)a3
{
  v5 = os_log_create("com.apple.documentcamera", "LiquidGlass");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamViewController setOverlayFlashMode:];
  }

  [(ICDocCamViewController *)self setFlashMode:a3];
  [(ICDocCamViewController *)self flashFlashButtonNameFeedback];
}

- (void)setOverlayFilter:(signed __int16)a3
{
  [(ICDocCamViewController *)self setDefaultFilter:?];
  [(ICDocCamViewController *)self flashFilterButtonNameFeedback];
  v4 = os_log_create("com.apple.documentcamera", "LiquidGlass");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamViewController setOverlayFilter:];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(ICDocCamViewController *)self processRequestsBlocker];
  [v8 addBlockerOfType:@"OrientationBlocker" clearRectangles:1 clearQueue:1];

  v20.receiver = self;
  v20.super_class = ICDocCamViewController;
  [(ICDocCamViewController *)&v20 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v9 = [(ICDocCamViewController *)self accelerometer];
  v10 = [v9 currentDeviceOrientation];

  if ((v10 - 1) <= 3)
  {
    v11 = [(ICDocCamViewController *)self videoPreviewLayer];
    v12 = [v11 connection];
    [v12 setVideoOrientation:v10];
  }

  v13 = [(ICDocCamViewController *)self navigationController];
  v14 = [v13 viewControllers];
  v15 = [v14 lastObject];
  v16 = v15;
  if (v15 == self)
  {
    v17 = [(ICDocCamViewController *)self presentedViewController];

    if (v17)
    {
      goto LABEL_7;
    }

    v13 = [(ICDocCamViewController *)self shutterButton];
    [ICDocCamUtilities prepareForRotationIfNecessaryWithShutterButton:v13 coodinator:v7];
  }

  else
  {
  }

LABEL_7:
  v18[4] = self;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__ICDocCamViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v19[3] = &unk_278F93AD8;
  v19[4] = self;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__ICDocCamViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v18[3] = &unk_278F93AD8;
  [v7 animateAlongsideTransition:v19 completion:v18];
}

uint64_t __77__ICDocCamViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) saveButton];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) saveButton];
  [v3 layoutIfNeeded];

  [*(a1 + 32) updateAllConstraints];
  [*(a1 + 32) setUpFilterScrollView];
  v4 = *(a1 + 32);

  return [v4 updateFilterChoiceButtonScrollPositionAnimated:1];
}

void __77__ICDocCamViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];
  v4 = [v3 windowScene];
  [*(a1 + 32) setStatusBarOrientation:{objc_msgSend(v4, "interfaceOrientation")}];

  v5 = [*(a1 + 32) processRequestsBlocker];
  [v5 removeBlockerOfType:@"OrientationBlocker"];

  v6 = [*(a1 + 32) accelerometer];
  v7 = [v6 currentDeviceOrientation];

  if ((v7 - 1) <= 3)
  {
    v8 = *(a1 + 32);

    [v8 setReferenceOrientation:v7];
  }
}

- (void)updateAutoButtonTitleForAutoMode:(BOOL)a3
{
  v3 = a3;
  v27 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
  v5 = [MEMORY[0x277D75348] clearColor];
  v6 = [(ICDocCamViewController *)self view];
  v7 = [v6 tintColor];

  if (v3)
  {
    v8 = [DCLocalization localizedStringForKey:@"Auto" value:@"Auto" table:@"Localizable"];
    v9 = [(ICDocCamViewController *)self autoButtonForIPhone];
    [v9 setTitle:v8 forState:0];

    v10 = [(ICDocCamViewController *)self autoButtonForIPhone];
    [v10 setLargeContentTitle:v8];

    v11 = [(ICDocCamViewController *)self cameraHighlightColor];
    v12 = [(ICDocCamViewController *)self autoButton];
    [v12 setTintColor:v11];

    v13 = [MEMORY[0x277D75348] whiteColor];
    v14 = [(ICDocCamViewController *)self manualButton];
    [v14 setTintColor:v13];

    v15 = [(ICDocCamViewController *)self autoButton];
    [v15 setBackgroundColor:v27];

    v16 = [(ICDocCamViewController *)self manualButton];
    [v16 setBackgroundColor:v5];
  }

  else
  {
    v8 = [DCLocalization localizedStringForKey:@"Manual" value:@"Manual" table:@"Localizable"];
    v17 = [(ICDocCamViewController *)self autoButtonForIPhone];
    [v17 setTitle:v8 forState:0];

    v18 = [(ICDocCamViewController *)self autoButtonForIPhone];
    [v18 setLargeContentTitle:v8];

    v19 = [MEMORY[0x277D75348] whiteColor];
    v20 = [(ICDocCamViewController *)self autoButton];
    [v20 setTintColor:v19];

    v21 = [(ICDocCamViewController *)self cameraHighlightColor];
    v22 = [(ICDocCamViewController *)self manualButton];
    [v22 setTintColor:v21];

    v23 = [(ICDocCamViewController *)self autoButton];
    [v23 setBackgroundColor:v5];

    v16 = [(ICDocCamViewController *)self manualButton];
    [v16 setBackgroundColor:v27];
  }

  v24 = [(ICDocCamViewController *)self autoShutterOnView];
  [v24 setBackgroundColor:v7];

  if ([v7 dc_colorIsLight])
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v25 = ;
  v26 = [(ICDocCamViewController *)self autoShutterOnLabel];
  [v26 setTextColor:v25];
}

- (void)enableShutterButtonIfPossible
{
  if ([(ICDocCamViewController *)self isInRetakeMode])
  {
    v3 = 1;
  }

  else
  {
    v4 = [(ICDocCamViewController *)self delegate];
    v5 = [(ICDocCamViewController *)self documentInfoCollection];
    v6 = [v5 docInfos];
    v3 = [v4 documentCameraController:self canAddImages:{objc_msgSend(v6, "count") + 1}];
  }

  [(ICDocCamViewController *)self enableShutter:v3];
}

- (void)enableUIElements:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICDocCamViewController *)self flashButton];
  [v5 setEnabled:v3];

  v6 = [(ICDocCamViewController *)self filterButton];
  [v6 setEnabled:v3];

  v7 = [(ICDocCamViewController *)self autoButton];
  [v7 setEnabled:v3];

  v8 = [(ICDocCamViewController *)self manualButton];
  [v8 setEnabled:v3];

  v9 = [(ICDocCamViewController *)self flashButtonForIPhone];
  [v9 setEnabled:v3];

  v10 = [(ICDocCamViewController *)self filterButtonForIPhone];
  [v10 setEnabled:v3];

  v11 = [(ICDocCamViewController *)self autoButtonForIPhone];
  [v11 setEnabled:v3];

  [(ICDocCamViewController *)self updateAccessibilityEnabledStateForUIElements];
}

- (void)killFeedbackDisplayIncludingUserPrompts:(BOOL)a3
{
  v3 = a3;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {

    [(ICDocCamViewController *)self killFeedbackDisplayInternalIncludingUserPrompts:v3];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __66__ICDocCamViewController_killFeedbackDisplayIncludingUserPrompts___block_invoke;
    v5[3] = &unk_278F93B00;
    v5[4] = self;
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

- (void)killFeedbackDisplayInternalIncludingUserPrompts:(BOOL)a3
{
  v3 = a3;
  v16 = [(ICDocCamViewController *)self autoShutterOffView];
  v5 = [v16 layer];
  [v5 removeAllAnimations];

  v17 = [(ICDocCamViewController *)self autoShutterOnView];
  v6 = [v17 layer];
  [v6 removeAllAnimations];

  v18 = [(ICDocCamViewController *)self filterNameFeedbackView];
  v7 = [v18 layer];
  [v7 removeAllAnimations];

  v19 = [(ICDocCamViewController *)self flashFeedbackView];
  v8 = [v19 layer];
  [v8 removeAllAnimations];

  v20 = [(ICDocCamViewController *)self autoShutterOnView];
  [v20 setHidden:0];

  v21 = [(ICDocCamViewController *)self autoShutterOnView];
  [v21 setAlpha:1.0];

  v22 = [(ICDocCamViewController *)self autoShutterOnView];
  v9 = [v22 layer];
  [v9 setOpacity:0.0];

  v23 = [(ICDocCamViewController *)self autoShutterOffView];
  [v23 setHidden:0];

  v24 = [(ICDocCamViewController *)self autoShutterOffView];
  [v24 setAlpha:1.0];

  v25 = [(ICDocCamViewController *)self autoShutterOffView];
  v10 = [v25 layer];
  [v10 setOpacity:0.0];

  v26 = [(ICDocCamViewController *)self filterNameFeedbackView];
  [v26 setHidden:0];

  v27 = [(ICDocCamViewController *)self filterNameFeedbackView];
  [v27 setAlpha:1.0];

  v28 = [(ICDocCamViewController *)self filterNameFeedbackView];
  v11 = [v28 layer];
  [v11 setOpacity:0.0];

  v29 = [(ICDocCamViewController *)self flashFeedbackView];
  [v29 setHidden:0];

  v30 = [(ICDocCamViewController *)self flashFeedbackView];
  [v30 setAlpha:1.0];

  v31 = [(ICDocCamViewController *)self flashFeedbackView];
  v12 = [v31 layer];
  [v12 setOpacity:0.0];

  if (v3)
  {
    v32 = [(ICDocCamViewController *)self moveCameraCloserView];
    v13 = [v32 layer];
    [v13 removeAllAnimations];

    v33 = [(ICDocCamViewController *)self userPromptView];
    v14 = [v33 layer];
    [v14 removeAllAnimations];

    v34 = [(ICDocCamViewController *)self moveCameraCloserView];
    [v34 setHidden:0];

    v35 = [(ICDocCamViewController *)self moveCameraCloserView];
    [v35 setAlpha:1.0];

    v36 = [(ICDocCamViewController *)self moveCameraCloserView];
    v15 = [v36 layer];
    [v15 setOpacity:0.0];

    v37 = [(ICDocCamViewController *)self userPromptView];
    [v37 setAlpha:0.0];

    v38 = [(ICDocCamViewController *)self userPromptView];
    [v38 setHidden:1];
  }
}

- (void)updateLabelColors
{
  v9 = [MEMORY[0x277D75348] labelColor];
  v3 = [(ICDocCamViewController *)self autoShutterOffLabel];
  [v3 setTextColor:v9];

  v10 = [MEMORY[0x277D75348] dc_labelBackgroundColor];
  v4 = [(ICDocCamViewController *)self autoShutterOffView];
  [v4 setBackgroundColor:v10];

  v11 = [MEMORY[0x277D75348] labelColor];
  v5 = [(ICDocCamViewController *)self filterNameFeedbackLabel];
  [v5 setTextColor:v11];

  v12 = [MEMORY[0x277D75348] dc_labelBackgroundColor];
  v6 = [(ICDocCamViewController *)self filterNameFeedbackView];
  [v6 setBackgroundColor:v12];

  v13 = [MEMORY[0x277D75348] labelColor];
  v7 = [(ICDocCamViewController *)self flashFeedbackLabel];
  [v7 setTextColor:v13];

  v14 = [MEMORY[0x277D75348] dc_labelBackgroundColor];
  v8 = [(ICDocCamViewController *)self flashFeedbackView];
  [v8 setBackgroundColor:v14];
}

- (void)setDoneButtonVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [objc_opt_class() isLiquidGlassEnabledForCapture];
  if (v3)
  {
    if (v5)
    {
      v6 = [(ICDocCamViewController *)self liquidGlassEvolutionControlsOverlayViewController];
      [v6 setDoneButtonShowing:1];
    }

    else
    {
      v6 = [(ICDocCamViewController *)self saveButton];
      [v6 setHidden:0];
    }
  }

  else if (v5)
  {
    v6 = [(ICDocCamViewController *)self liquidGlassEvolutionControlsOverlayViewController];
    [v6 setDoneButtonShowing:0];
  }

  else
  {
    v6 = [(ICDocCamViewController *)self saveButton];
    [v6 setHidden:1];
  }
}

- (void)retakeButtonWasPressed
{
  v6 = [(ICDocCamViewController *)self delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v7 = [(ICDocCamViewController *)self delegate];
    v4 = [(ICDocCamViewController *)self documentInfoCollection];
    v5 = [v4 docInfos];
    [v7 documentCameraControllerDidRetake:self pageCount:{objc_msgSend(v5, "count")}];
  }
}

- (void)setFlashMode:(int64_t)a3
{
  self->_flashMode = a3;
  v5 = [(ICDocCamViewController *)self photoOutput];
  v4 = [v5 photoSettingsForSceneMonitoring];
  [v4 setFlashMode:a3];
}

- (void)setupCaptureSession
{
  v20[7] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CE5B38]);
  [(ICDocCamViewController *)self setSession:v3];

  v4 = [(ICDocCamViewController *)self session];
  v5 = [(ICDocCamViewController *)self previewView];
  [v5 setSession:v4];

  [(ICDocCamViewController *)self setSetupResult:0];
  v6 = *MEMORY[0x277CE5EA8];
  if ([MEMORY[0x277CE5AC8] authorizationStatusForMediaType:*MEMORY[0x277CE5EA8]] != 3)
  {
    v7 = [(ICDocCamViewController *)self sessionQueue];
    dispatch_suspend(v7);

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __45__ICDocCamViewController_setupCaptureSession__block_invoke;
    v18[3] = &unk_278F93B28;
    v18[4] = self;
    [MEMORY[0x277CE5AC8] requestAccessForMediaType:v6 completionHandler:v18];
  }

  v19[0] = @"ICDocCamImageSequenceAnalyzer_Rectangles";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICDocCamViewController rectangleDetectionEnabled](self, "rectangleDetectionEnabled")}];
  v20[0] = v8;
  v19[1] = @"ICDocCamImageSequenceAnalyzer_Registration";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICDocCamViewController registrationEnabled](self, "registrationEnabled")}];
  v20[1] = v9;
  v20[2] = MEMORY[0x277CBEC28];
  v19[2] = @"ICDocCamImageSequenceAnalyzer_SceneClassification";
  v19[3] = @"ICDocCamImageSequenceAnalyzer_RealTime";
  v20[3] = MEMORY[0x277CBEC38];
  v20[4] = MEMORY[0x277CBEC38];
  v19[4] = @"ICDocCamImageSequenceAnalyzer_Synchronous";
  v19[5] = @"ICDocCamImageSequenceAnalyzer_MaxBufferQueueSize";
  v19[6] = @"ICDocCamImageSequenceAnalyzer_Debug";
  v20[5] = &unk_285C6D4E0;
  v20[6] = MEMORY[0x277CBEC38];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:7];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__ICDocCamViewController_setupCaptureSession__block_invoke_2;
  aBlock[3] = &unk_278F93B50;
  objc_copyWeak(&v16, &location);
  v11 = _Block_copy(aBlock);
  v12 = [[ICDocCamImageSequenceAnalyzer alloc] initWithOptions:v10 callback:v11];
  [(ICDocCamViewController *)self setVkAnalyzer:v12];

  v13 = [(ICDocCamViewController *)self sessionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ICDocCamViewController_setupCaptureSession__block_invoke_3;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_async(v13, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __45__ICDocCamViewController_setupCaptureSession__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) setSetupResult:1];
  }

  v3 = [*(a1 + 32) sessionQueue];
  dispatch_resume(v3);
}

void __45__ICDocCamViewController_setupCaptureSession__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained analyzerCallbackWithDictionaryResults:v3];
}

void __45__ICDocCamViewController_setupCaptureSession__block_invoke_3(uint64_t a1)
{
  v117 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) setupResult])
  {
    return;
  }

  v94 = *MEMORY[0x277CE5EA8];
  v2 = [ICDocCamViewController deviceWithMediaType:"deviceWithMediaType:preferringPosition:" preferringPosition:?];
  v110 = 0;
  v97 = [MEMORY[0x277CE5AD8] deviceInputWithDevice:v2 error:&v110];
  v95 = v110;
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 integerForKey:@"internalSettings.docCam.format"];

  if (v4 <= 3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = [MEMORY[0x277D759A0] mainScreen];
  [v11 scale];
  v13 = v12;

  if (v8 >= v10)
  {
    v14 = v8;
  }

  else
  {
    v14 = v10;
  }

  if (v8 >= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v8;
  }

  if (v4 == 2)
  {
    [v2 formats];
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v16 = v107 = 0u;
    v31 = [v16 countByEnumeratingWithState:&v106 objects:v116 count:16];
    if (v31)
    {
      v18 = 0;
      v32 = v8 * v13;
      v33 = v10 * v13;
      v34 = v14 / v15;
      v35 = *v107;
      if (v32 >= v33)
      {
        v36 = v33;
      }

      else
      {
        v36 = v32;
      }

      if (v32 >= v33)
      {
        v37 = v32;
      }

      else
      {
        v37 = v33;
      }

      v38 = 3.40282347e38;
      do
      {
        v39 = 0;
        do
        {
          if (*v107 != v35)
          {
            objc_enumerationMutation(v16);
          }

          v40 = *(*(&v106 + 1) + 8 * v39);
          v41 = [v40 formatDescription];
          PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(v41, 0, 0);
          MediaSubType = CMFormatDescriptionGetMediaSubType(v41);
          if (PresentationDimensions.width >= PresentationDimensions.height)
          {
            width = PresentationDimensions.width;
          }

          else
          {
            width = PresentationDimensions.height;
          }

          if (PresentationDimensions.width >= PresentationDimensions.height)
          {
            height = PresentationDimensions.height;
          }

          else
          {
            height = PresentationDimensions.width;
          }

          if (MediaSubType == 875704422 && height >= v36 && width >= v37 && vabdd_f64(v34, width / height) < 0.1 && PresentationDimensions.width * PresentationDimensions.height < v38)
          {
            v49 = v40;

            [*(a1 + 32) setStreamingImageSize:{PresentationDimensions.width, PresentationDimensions.height}];
            v38 = PresentationDimensions.width * PresentationDimensions.height;
            v18 = v49;
          }

          ++v39;
        }

        while (v31 != v39);
        v50 = [v16 countByEnumeratingWithState:&v106 objects:v116 count:16];
        v31 = v50;
      }

      while (v50);

      if (v18)
      {
        v5 = 2;
        goto LABEL_76;
      }
    }

    else
    {
    }

    v51 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      goto LABEL_74;
    }

LABEL_75:

    v5 = 0;
    v18 = 0;
    goto LABEL_76;
  }

  if (v4 != 3)
  {
    v18 = 0;
    goto LABEL_77;
  }

  [v2 formats];
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v16 = v103 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v102 objects:v115 count:16];
  if (!v17)
  {

    goto LABEL_69;
  }

  v18 = 0;
  v19 = *v103;
  v20 = 0.0;
  v21 = 0.0;
  do
  {
    v22 = 0;
    v23 = v20;
    v24 = v21;
    do
    {
      if (*v103 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v25 = *(*(&v102 + 1) + 8 * v22);
      v26 = [v25 formatDescription];
      v27 = CMVideoFormatDescriptionGetPresentationDimensions(v26, 0, 0);
      v21 = v27.width;
      v20 = v27.height;
      if (CMFormatDescriptionGetMediaSubType(v26) != 875704422 || v27.width < v24 || v27.height <= v23)
      {
        v20 = v23;
        v21 = v24;
      }

      else
      {
        v30 = v25;

        v18 = v30;
        [*(a1 + 32) setStreamingImageSize:{v27.width, v27.height}];
      }

      ++v22;
      v23 = v20;
      v24 = v21;
    }

    while (v17 != v22);
    v17 = [v16 countByEnumeratingWithState:&v102 objects:v115 count:16];
  }

  while (v17);

  if (!v18)
  {
LABEL_69:
    v51 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
LABEL_74:
      _os_log_impl(&dword_249253000, v51, OS_LOG_TYPE_DEFAULT, "Unable to find chosenFormat, defaulting to PhotoPreset", buf, 2u);
      goto LABEL_75;
    }

    goto LABEL_75;
  }

  v5 = 3;
LABEL_76:

LABEL_77:
  if (!v97)
  {
    v52 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      __45__ICDocCamViewController_setupCaptureSession__block_invoke_3_cold_1();
    }
  }

  v53 = [*(a1 + 32) session];
  [v53 beginConfiguration];

  v54 = [*(a1 + 32) session];
  AVCaptureSessionSetAuthorizedToUseCameraInMultipleForegroundAppLayout();

  v55 = [*(a1 + 32) session];
  v56 = [v55 canAddInput:v97];

  if (v56)
  {
    v57 = [*(a1 + 32) session];
    [v57 addInput:v97];

    [*(a1 + 32) setVideoDeviceInput:v97];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__ICDocCamViewController_setupCaptureSession__block_invoke_628;
    block[3] = &unk_278F93AB0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v58 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249253000, v58, OS_LOG_TYPE_DEFAULT, "Could not add video device input to the session", buf, 2u);
    }

    [*(a1 + 32) setSetupResult:2];
  }

  v59 = objc_alloc_init(MEMORY[0x277CE5B28]);
  v60 = [*(a1 + 32) session];
  v61 = [v60 canAddOutput:v59];

  if (v61)
  {
    v62 = [*(a1 + 32) session];
    [v62 addOutput:v59];

    [*(a1 + 32) setPhotoOutput:v59];
    v63 = [*(a1 + 32) photoOutput];
    [v63 setHighResolutionCaptureEnabled:1];

    v64 = [*(a1 + 32) photoOutput];
    [v64 setLivePhotoCaptureEnabled:0];

    v65 = [MEMORY[0x277CE5B30] photoSettings];
    [v65 setFlashMode:{objc_msgSend(*(a1 + 32), "flashMode")}];
    v66 = [*(a1 + 32) photoOutput];
    [v66 setPhotoSettingsForSceneMonitoring:v65];

    v67 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setInProgressPhotoCaptureDelegates:v67];
  }

  else
  {
    v68 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249253000, v68, OS_LOG_TYPE_DEFAULT, "Could not add still image output to the session", buf, 2u);
    }

    [*(a1 + 32) setSetupResult:2];
  }

  v69 = objc_alloc_init(MEMORY[0x277CE5B60]);
  v70 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v96 = dispatch_queue_create("VideoDataOutputQueue", v70);

  v113 = *MEMORY[0x277CC4E30];
  v114 = &unk_285C6D528;
  v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
  [v69 setVideoSettings:v71];

  [v69 setSampleBufferDelegate:*(a1 + 32) queue:v96];
  v72 = [*(a1 + 32) session];
  v73 = [v72 canAddOutput:v69];

  if (v73)
  {
    v74 = [*(a1 + 32) session];
    [v74 addOutput:v69];

    [*(a1 + 32) setVideoDataOutput:v69];
  }

  v75 = [v69 connectionWithMediaType:v94];
  [*(a1 + 32) setVideoConnection:v75];
  if ([v75 isCameraIntrinsicMatrixDeliverySupported])
  {
    [v75 setCameraIntrinsicMatrixDeliveryEnabled:1];
    [v75 setPreferredVideoStabilizationMode:0];
  }

  if ((v5 - 2) < 2)
  {
    v100 = 0;
    v77 = [v2 lockForConfiguration:&v100];
    v78 = v100;
    if (!v77)
    {
      v76 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v112 = v78;
        _os_log_impl(&dword_249253000, v76, OS_LOG_TYPE_DEFAULT, "Could not lock device for configuration: %@", buf, 0xCu);
      }

      goto LABEL_106;
    }

    [v2 setActiveFormat:v18];
    [v2 unlockForConfiguration];
  }

  else
  {
    if (!v5)
    {
      v76 = [*(a1 + 32) session];
      [v76 setSessionPreset:*MEMORY[0x277CE59A8]];
      goto LABEL_102;
    }

    if (v5 == 1)
    {
      v76 = [*(a1 + 32) session];
      [v76 setSessionPreset:*MEMORY[0x277CE5988]];
LABEL_102:
      v78 = 0;
LABEL_106:

      goto LABEL_107;
    }

    v78 = 0;
  }

LABEL_107:

  v99 = 0;
  v79 = [v2 lockForConfiguration:&v99];
  v80 = v99;
  if (v79)
  {
    [v2 setSubjectAreaChangeMonitoringEnabled:1];
    [v2 setProvidesStortorgetMetadata:1];
  }

  else
  {
    v81 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v112 = v80;
      _os_log_impl(&dword_249253000, v81, OS_LOG_TYPE_DEFAULT, "Could not lock device for configuration: %@", buf, 0xCu);
    }
  }

  v98 = 0;
  v82 = [v2 lockForConfiguration:&v98];
  v83 = v98;
  if (v82)
  {
    if ([v2 isAutoFocusRangeRestrictionSupported])
    {
      [v2 setAutoFocusRangeRestriction:1];
    }

    [v2 unlockForConfiguration];
  }

  else
  {
    v84 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v112 = v83;
      _os_log_impl(&dword_249253000, v84, OS_LOG_TYPE_DEFAULT, "Could not lock device for configuration: %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) setDeviceHasFlash:{objc_msgSend(v2, "hasFlash")}];
  v85 = [*(a1 + 32) session];
  [v85 commitConfiguration];

  if ([*(a1 + 32) scanMovieRecordingEnabled])
  {
    [*(a1 + 32) setReferenceOrientation:1];
    v86 = [ICDocCamDebugMovieController alloc];
    v87 = *(a1 + 32);
    v88 = [v87 videoConnection];
    v89 = -[ICDocCamDebugMovieController initWithDelegate:videoConnection:referenceOrientation:](v86, "initWithDelegate:videoConnection:referenceOrientation:", v87, v88, [*(a1 + 32) referenceOrientation]);
    [*(a1 + 32) setMovieController:v89];
  }

  if ([*(a1 + 32) isConstantColorAvailable])
  {
    v90 = [*(a1 + 32) photoOutput];
    [v90 setConstantColorEnabled:1];

    v91 = [*(a1 + 32) photoOutput];
    [v91 setConstantColorClippingRecoveryEnabled:1];

    v92 = [*(a1 + 32) photoOutput];
    v93 = objc_opt_respondsToSelector();

    if (v93)
    {
      [v59 setConstantColorSaturationBoostEnabled:1];
    }
  }
}

void __45__ICDocCamViewController_setupCaptureSession__block_invoke_628(uint64_t a1)
{
  if ([*(a1 + 32) statusBarOrientation])
  {
    v2 = [*(a1 + 32) statusBarOrientation];
  }

  else
  {
    v2 = 1;
  }

  v17 = [*(a1 + 32) previewView];
  v3 = [v17 videoPreviewLayer];
  [*(a1 + 32) setVideoPreviewLayer:v3];

  v4 = MEMORY[0x277CE5DD0];
  v5 = DCDebugInterfaceEnabled();
  if ((v5 & 1) == 0)
  {
    v17 = [MEMORY[0x277D75418] currentDevice];
    if ([v17 userInterfaceIdiom] != 1)
    {
      v4 = MEMORY[0x277CE5DD8];
    }
  }

  v6 = *v4;
  v7 = [*(a1 + 32) videoPreviewLayer];
  [v7 setVideoGravity:v6];

  if ((v5 & 1) == 0)
  {
  }

  v18 = [*(a1 + 32) videoPreviewLayer];
  v8 = [v18 connection];
  [v8 setVideoOrientation:v2];

  v19 = [*(a1 + 32) videoPreviewLayer];
  [v19 rectForMetadataOutputRectOfInterest:{0.0, 0.0, 1.0, 1.0}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v20 = [*(a1 + 32) overlayView];
  [v20 setPreviewBounds:{v10, v12, v14, v16}];
}

- (void)launchCaptureSession
{
  v3 = [(ICDocCamViewController *)self sessionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ICDocCamViewController_launchCaptureSession__block_invoke;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_async(v3, block);

  if ([(ICDocCamViewController *)self isInRetakeMode])
  {
    v4 = [(ICDocCamViewController *)self processRequestsBlocker];
    [v4 addBlockerOfType:@"ViewLifetimeBlocker" clearRectangles:1 clearQueue:1];

    v5 = [(ICDocCamViewController *)self overlayView];
    [v5 setHidden:1];

    v6 = [(ICDocCamViewController *)self overlayView];
    [v6 clearRectangles];

    v7 = dispatch_time(0, 500000000);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__ICDocCamViewController_launchCaptureSession__block_invoke_6;
    v8[3] = &unk_278F93AB0;
    v8[4] = self;
    dispatch_after(v7, MEMORY[0x277D85CD0], v8);
  }
}

void __46__ICDocCamViewController_launchCaptureSession__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) setupResult];
  switch(v2)
  {
    case 2:
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __46__ICDocCamViewController_launchCaptureSession__block_invoke_5;
      v8[3] = &unk_278F93AB0;
      v8[4] = *(a1 + 32);
      v6 = MEMORY[0x277D85CD0];
      v7 = v8;
      goto LABEL_7;
    case 1:
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __46__ICDocCamViewController_launchCaptureSession__block_invoke_3;
      v9[3] = &unk_278F93AB0;
      v9[4] = *(a1 + 32);
      v6 = MEMORY[0x277D85CD0];
      v7 = v9;
LABEL_7:
      dispatch_async(v6, v7);
      return;
    case 0:
      [*(a1 + 32) addObserversIfNecessary];
      v3 = [*(a1 + 32) session];
      [v3 startRunning];

      v4 = [*(a1 + 32) session];
      [*(a1 + 32) setSessionRunning:{objc_msgSend(v4, "isRunning")}];

      [*(a1 + 32) clearQueue];
      v5 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__ICDocCamViewController_launchCaptureSession__block_invoke_2;
      block[3] = &unk_278F93AB0;
      block[4] = *(a1 + 32);
      dispatch_after(v5, MEMORY[0x277D85CD0], block);
      break;
  }
}

void __46__ICDocCamViewController_launchCaptureSession__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) processRequestsBlocker];
  [v2 removeBlockerOfType:@"ViewLifetimeBlocker"];

  if ([*(a1 + 32) isSessionRunning])
  {
    [*(a1 + 32) enableShutterButtonIfPossible];
    [*(a1 + 32) enableUIElements:1];
    v3 = [*(a1 + 32) captureEventInteraction];
    [v3 setEnabled:1];
  }
}

void __46__ICDocCamViewController_launchCaptureSession__block_invoke_3(uint64_t a1)
{
  v14 = [*(a1 + 32) previewView];
  v2 = [v14 layer];
  LODWORD(v3) = 1.0;
  [v2 setOpacity:v3];

  v15 = [DCLocalization localizedStringForKey:@"Privacy or Restrictions settings have disabled use of the camera. You can change this in Settings." value:@"Privacy or Restrictions settings have disabled use of the camera. You can change this in Settings." table:@"Localizable"];
  v4 = MEMORY[0x277D75110];
  v5 = [DCLocalization localizedStringForKey:@"Camera Unavailable" value:@"Camera Unavailable" table:@"Localizable"];
  v6 = [v4 alertControllerWithTitle:v5 message:v15 preferredStyle:1];

  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
  [v6 setImage:v7];

  v8 = MEMORY[0x277D750F8];
  v9 = [DCLocalization localizedStringForKey:@"OK" value:@"OK" table:@"Localizable"];
  v10 = [v8 actionWithTitle:v9 style:1 handler:0];

  [v6 addAction:v10];
  v11 = MEMORY[0x277D750F8];
  v12 = [DCLocalization localizedStringForKey:@"Settings" value:@"Settings" table:@"Localizable"];
  v13 = [v11 actionWithTitle:v12 style:0 handler:&__block_literal_global_660];

  [v6 addAction:v13];
  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
}

void __46__ICDocCamViewController_launchCaptureSession__block_invoke_4()
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=ROOT"];
  v0 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v1 = [v0 openSensitiveURL:v4 withOptions:0];

  if ((v1 & 1) == 0)
  {
    v2 = [MEMORY[0x277D75128] sharedApplication];
    v3 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277D766C0]];
    [v2 openURL:v3 options:MEMORY[0x277CBEC10] completionHandler:0];
  }
}

void __46__ICDocCamViewController_launchCaptureSession__block_invoke_5(uint64_t a1)
{
  v11 = [*(a1 + 32) previewView];
  v2 = [v11 layer];
  LODWORD(v3) = 1.0;
  [v2 setOpacity:v3];

  v12 = [DCLocalization localizedStringForKey:@"Unable to capture media" value:@"Unable to capture media" table:@"Localizable"];
  v4 = MEMORY[0x277D75110];
  v5 = DCAppName();
  v6 = [v4 alertControllerWithTitle:v5 message:v12 preferredStyle:1];

  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
  [v6 setImage:v7];

  v8 = MEMORY[0x277D750F8];
  v9 = [DCLocalization localizedStringForKey:@"OK" value:@"OK" table:@"Localizable"];
  v10 = [v8 actionWithTitle:v9 style:1 handler:0];

  [v6 addAction:v10];
  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
}

void __46__ICDocCamViewController_launchCaptureSession__block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) overlayView];
  [v2 setHidden:0];

  v3 = [*(a1 + 32) processRequestsBlocker];
  [v3 removeBlockerOfType:@"ViewLifetimeBlocker"];
}

- (void)restartImageCaptureSessionIfNecessary
{
  v3 = [(ICDocCamViewController *)self sessionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ICDocCamViewController_restartImageCaptureSessionIfNecessary__block_invoke;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __63__ICDocCamViewController_restartImageCaptureSessionIfNecessary__block_invoke(uint64_t a1)
{
  [*(a1 + 32) addObserversIfNecessary];
  v2 = [*(a1 + 32) session];
  [v2 startRunning];

  v3 = [*(a1 + 32) session];
  [*(a1 + 32) setSessionRunning:{objc_msgSend(v3, "isRunning")}];
}

- (void)stopImageCaptureSession
{
  v3 = [(ICDocCamViewController *)self sessionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ICDocCamViewController_stopImageCaptureSession__block_invoke;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __49__ICDocCamViewController_stopImageCaptureSession__block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) setupResult])
  {
    v2 = [*(a1 + 32) session];
    v3 = [v2 isRunning];

    if (v3)
    {
      v4 = [*(a1 + 32) session];
      [v4 stopRunning];

      v5 = [*(a1 + 32) session];
      [*(a1 + 32) setSessionRunning:{objc_msgSend(v5, "isRunning")}];

      v6 = *(a1 + 32);

      [v6 removeObserversIfNecessary];
    }
  }
}

- (BOOL)isConstantColorAvailable
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = [(ICDocCamViewController *)self photoOutput];
  v6 = [v5 isConstantColorSupported];

  if (v4 == 1)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (void)initializeFilters
{
  v3 = MEMORY[0x277CBEA60];
  v4 = +[ICDocCamImageFilters imageFilterNames];
  v5 = [v4 objectAtIndexedSubscript:1];
  v6 = +[ICDocCamImageFilters imageFilterNames];
  v7 = [v6 objectAtIndexedSubscript:2];
  v8 = +[ICDocCamImageFilters imageFilterNames];
  v9 = [v8 objectAtIndexedSubscript:3];
  v10 = +[ICDocCamImageFilters imageFilterNames];
  v11 = [v10 objectAtIndexedSubscript:0];
  v12 = [v3 arrayWithObjects:{v5, v7, v9, v11, 0}];
  [(ICDocCamViewController *)self setFilterNames:v12];

  if ([MEMORY[0x277D74248] dc_isRTL])
  {
    v13 = [(ICDocCamViewController *)self filterNames];
    v14 = [v13 reverseObjectEnumerator];
    v15 = [v14 allObjects];
    [(ICDocCamViewController *)self setFilterNames:v15];
  }

  v16 = [(ICDocCamViewController *)self filterButtons];

  if (!v16)
  {
    v18 = [(ICDocCamViewController *)self filterScrollView];
    [v18 setShowsVerticalScrollIndicator:0];

    v19 = [(ICDocCamViewController *)self filterScrollView];
    [v19 setShowsHorizontalScrollIndicator:0];

    v20 = [(ICDocCamViewController *)self filterScrollView];
    [v20 setDelegate:self];

    v21 = [(ICDocCamViewController *)self filterScrollView];
    [v21 setClipsToBounds:1];

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(ICDocCamViewController *)self setFilterButtons:v22];

    v23 = 0;
    v24 = *MEMORY[0x277D74418];
    while (1)
    {
      v25 = [(ICDocCamViewController *)self filterNames];
      v26 = [v25 count];

      if (v26 <= v23)
      {
        break;
      }

      v27 = [MEMORY[0x277D75220] buttonWithType:1];
      v28 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:v24];
      v29 = [v27 titleLabel];
      [v29 setFont:v28];

      [v27 addTarget:self action:sel_filterButtonChoiceAction_ forControlEvents:64];
      v30 = [(ICDocCamViewController *)self filterNames];
      v31 = [v30 objectAtIndexedSubscript:v23];
      [v27 setTag:{+[ICDocCamImageFilters imageFilterTypeFromName:](ICDocCamImageFilters, "imageFilterTypeFromName:", v31)}];

      v32 = [(ICDocCamViewController *)self filterNames];
      v33 = [v32 objectAtIndexedSubscript:v23];
      [v27 setTitle:v33 forState:0];

      [v27 sizeToFit];
      [v27 _accessibilitySetInterfaceStyleIntent:2];
      v34 = [(ICDocCamViewController *)self filterButtons];
      [v34 addObject:v27];

      v35 = [(ICDocCamViewController *)self filterScrollView];
      [v35 addSubview:v27];

      [v27 _accessibilitySetIsSpeakThisElement:1];
      ++v23;
    }
  }

  v17 = [(ICDocCamViewController *)self defaultFilter];

  [(ICDocCamViewController *)self updateFilterChoiceButtonSelection:v17];
}

- (void)updateFilterChoiceButtonSelection:(signed __int16)a3
{
  v4 = 0;
  v5 = a3;
  v6 = MEMORY[0x277D85CD0];
  while (1)
  {
    v7 = [(ICDocCamViewController *)self filterButtons];
    v8 = [v7 count];

    if (v8 <= v4)
    {
      break;
    }

    v9 = [(ICDocCamViewController *)self filterButtons];
    v10 = [v9 objectAtIndexedSubscript:v4];
    v11 = [v10 tag];

    if (v11 == v5)
    {
      [(ICDocCamViewController *)self cameraHighlightColor];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v12 = ;
    v13 = [(ICDocCamViewController *)self filterButtons];
    v14 = [v13 objectAtIndexedSubscript:v4];
    [v14 setTintColor:v12];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__ICDocCamViewController_updateFilterChoiceButtonSelection___block_invoke;
    v15[3] = &unk_278F93B78;
    v15[4] = self;
    v16 = v4;
    dispatch_async(v6, v15);
    ++v4;
  }
}

void __60__ICDocCamViewController_updateFilterChoiceButtonSelection___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) filterButtons];
  v2 = [v4 objectAtIndexedSubscript:*(a1 + 40)];
  [v2 setNeedsDisplay];

  v5 = [*(a1 + 32) filterButtons];
  v3 = [v5 objectAtIndexedSubscript:*(a1 + 40)];
  [v3 forceDisplayIfNeeded];
}

- (void)hideFilterSettingUI
{
  if ([(ICDocCamViewController *)self filterSettingUIShowing])
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4)
    {
      v5 = [(ICDocCamViewController *)self view];
      [v5 layoutIfNeeded];

      [(ICDocCamViewController *)self updateFilterChoiceButtonScrollPositionAnimated:0];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __45__ICDocCamViewController_hideFilterSettingUI__block_invoke_3;
      v11[3] = &unk_278F93BA0;
      v11[4] = self;
      v11[5] = 0x4046000000000000;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __45__ICDocCamViewController_hideFilterSettingUI__block_invoke_4;
      v10[3] = &unk_278F93B28;
      v10[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v11 animations:v10 completion:0.25];
    }

    else
    {
      v6 = [(ICDocCamViewController *)self topToolbarForIPhone];
      [v6 setAlpha:0.0];

      v7 = [(ICDocCamViewController *)self topToolbarForIPhone];
      [v7 setHidden:0];

      v8 = [(ICDocCamViewController *)self filterViewContainer];
      [v8 setAlpha:1.0];

      v9 = [(ICDocCamViewController *)self filterViewContainer];
      [v9 setHidden:0];

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __45__ICDocCamViewController_hideFilterSettingUI__block_invoke;
      v13[3] = &unk_278F93AB0;
      v13[4] = self;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __45__ICDocCamViewController_hideFilterSettingUI__block_invoke_2;
      v12[3] = &unk_278F93B28;
      v12[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v13 animations:v12 completion:0.5];
    }
  }
}

void __45__ICDocCamViewController_hideFilterSettingUI__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) topToolbarForIPhone];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) filterViewContainer];
  [v3 setAlpha:0.0];
}

uint64_t __45__ICDocCamViewController_hideFilterSettingUI__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) filterViewContainer];
  [v2 setHidden:1];

  [*(a1 + 32) setFilterSettingUIShowing:0];
  [*(a1 + 32) updateFilterChoiceButtonScrollPositionAnimated:0];
  [*(a1 + 32) updateAccessibilityForCurrentFilter];
  v3 = *(a1 + 32);

  return [v3 updateAccessibilityFocusForHidingFilterSettingsUI];
}

void __45__ICDocCamViewController_hideFilterSettingUI__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) filterViewContainerWidthConstraint];
  [v3 setConstant:v2];

  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];
}

uint64_t __45__ICDocCamViewController_hideFilterSettingUI__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setFilterSettingUIShowing:0];
  [*(a1 + 32) updateAccessibilityForCurrentFilter];
  v2 = *(a1 + 32);

  return [v2 updateAccessibilityFocusForHidingFilterSettingsUI];
}

- (void)setUpFilterScrollView
{
  v83[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = 20.0;
  v6 = 22.0;
  if (!v4)
  {
    v6 = 8.0;
    if (([(ICDocCamViewController *)self statusBarOrientation]- 1) <= 1)
    {
      [(ICDocCamViewController *)self filterScrollViewContentWidthWithInterItemSpacing:20.0 startPadding:10.0 endPadding:0.0];
      v8 = v7;
      v9 = [(ICDocCamViewController *)self filterViewButton];
      [v9 frame];
      v11 = v10;

      v12 = [(ICDocCamViewController *)self view];
      [v12 bounds];
      v13 = v8 + v11 + 4.0;
      v15 = v14 + -12.0;

      v5 = 20.0;
      if (v15 > v13)
      {
        v16 = 0;
        v17 = 0.0;
        while (1)
        {
          v18 = [(ICDocCamViewController *)self filterButtons];
          v19 = [v18 count];

          if (v19 <= v16)
          {
            break;
          }

          v20 = [(ICDocCamViewController *)self filterButtons];
          v21 = [v20 objectAtIndexedSubscript:v16];

          [v21 frame];
          v17 = v17 + v22;

          ++v16;
        }

        v23 = [(ICDocCamViewController *)self filterScrollView];
        [v23 bounds];
        v25 = v24;
        v26 = [(ICDocCamViewController *)self filterButtons];
        v5 = (v25 + -12.0 + -10.0 - v17) / ([v26 count] - 1);
      }
    }
  }

  [(ICDocCamViewController *)self filterScrollViewContentWidthWithInterItemSpacing:v5 startPadding:10.0 endPadding:v6];
  v28 = v27;
  v29 = [(ICDocCamViewController *)self filterScrollView];
  [v29 bounds];
  v31 = v30;
  v32 = [(ICDocCamViewController *)self filterScrollView];
  [v32 setContentSize:{v28, v31}];

  v33 = 0;
  v34 = 10.0;
  while (1)
  {
    v35 = [(ICDocCamViewController *)self filterButtons];
    v36 = [v35 count];

    if (v36 <= v33)
    {
      break;
    }

    v37 = [(ICDocCamViewController *)self filterButtons];
    v38 = [v37 objectAtIndexedSubscript:v33];

    [v38 frame];
    v40 = v39;
    v41 = [(ICDocCamViewController *)self filterScrollView];
    [v41 bounds];
    [v38 setFrame:{v34, 0.0, v40}];

    v42 = [(ICDocCamViewController *)self filterNames];
    v43 = [v42 count] - 1;

    if (v43 <= v33)
    {
      v44 = v6;
    }

    else
    {
      v44 = v5;
    }

    v34 = v34 + v40 + v44;

    ++v33;
  }

  v45 = [MEMORY[0x277CD9EB0] layer];
  v46 = [(ICDocCamViewController *)self filterScrollViewContainer];
  [v46 bounds];
  [v45 setFrame:?];

  v47 = [MEMORY[0x277D75418] currentDevice];
  v48 = [v47 userInterfaceIdiom];

  v49 = MEMORY[0x277CBEA60];
  [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  if (v48)
    v50 = {;
    v51 = [v50 CGColor];
    v52 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v53 = [v52 CGColor];
    v54 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v55 = [v54 CGColor];
    v56 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v57 = [v49 arrayWithObjects:{v51, v53, v55, objc_msgSend(v56, "CGColor"), 0}];
    [v45 setColors:v57];

    v58 = MEMORY[0x277CCABB0];
    [v45 frame];
    v60 = [v58 numberWithDouble:8.0 / v59];
    v82[0] = v60;
    v61 = MEMORY[0x277CCABB0];
    [v45 frame];
    v63 = [v61 numberWithDouble:16.0 / v62];
    v82[1] = v63;
    v64 = MEMORY[0x277CCABB0];
    [v45 frame];
    v66 = [v64 numberWithDouble:-12.0 / v65 + 1.0];
    v82[2] = v66;
    v82[3] = &unk_285C6D4E0;
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:4];
    [v45 setLocations:v67];
  }

  else
    v68 = {;
    v69 = [v68 CGColor];
    v70 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v71 = [v70 CGColor];
    v72 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v73 = [v72 CGColor];
    v74 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v75 = [v49 arrayWithObjects:{v69, v71, v73, objc_msgSend(v74, "CGColor"), 0}];
    [v45 setColors:v75];

    v83[0] = &unk_285C6D510;
    v76 = MEMORY[0x277CCABB0];
    [v45 frame];
    v60 = [v76 numberWithDouble:8.0 / v77];
    v83[1] = v60;
    v78 = MEMORY[0x277CCABB0];
    [v45 frame];
    v63 = [v78 numberWithDouble:-8.0 / v79 + 1.0];
    v83[2] = v63;
    v83[3] = &unk_285C6D4E0;
    v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:4];
    [v45 setLocations:v66];
  }

  [v45 setStartPoint:{0.0, 0.5}];
  [v45 setEndPoint:{1.0, 0.5}];
  v80 = [(ICDocCamViewController *)self filterScrollViewContainer];
  v81 = [v80 layer];
  [v81 setMask:v45];
}

- (void)updateFilterButtonTint
{
  v3 = 0;
  v4 = MEMORY[0x277D85CD0];
  while (1)
  {
    v5 = [(ICDocCamViewController *)self filterButtons];
    v6 = [v5 count];

    if (v6 <= v3)
    {
      break;
    }

    v7 = [(ICDocCamViewController *)self filterButtons];
    v8 = [v7 objectAtIndexedSubscript:v3];

    v9 = [v8 tag];
    if (v9 == [(ICDocCamViewController *)self defaultFilter])
    {
      [(ICDocCamViewController *)self cameraHighlightColor];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v10 = ;
    [v8 setTintColor:v10];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__ICDocCamViewController_updateFilterButtonTint__block_invoke;
    block[3] = &unk_278F93AB0;
    v13 = v8;
    v11 = v8;
    dispatch_async(v4, block);

    ++v3;
  }
}

- (void)updateFilterAndFlashButtons
{
  if ((DCDebugInterfaceEnabled() & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v28 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v28, "userInterfaceIdiom"), v28, v3 == 1))
  {
    v29 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    v4 = [MEMORY[0x277D75348] whiteColor];
    v5 = [v4 CGColor];
    v6 = [(ICDocCamViewController *)self flashSettingView];
    v7 = [v6 layer];
    [v7 setBorderColor:v5];

    v8 = [(ICDocCamViewController *)self flashSettingView];
    v9 = [v8 layer];
    [v9 setBorderWidth:0.0];

    v10 = [(ICDocCamViewController *)self flashSettingView];
    [v10 frame];
    v12 = v11;
    v13 = [(ICDocCamViewController *)self flashSettingView];
    v14 = [v13 layer];
    [v14 setCornerRadius:v12 * 0.5];

    v15 = [(ICDocCamViewController *)self flashSettingView];
    [v15 setBackgroundColor:v29];

    v16 = [MEMORY[0x277D75348] whiteColor];
    v17 = [v16 CGColor];
    v18 = [(ICDocCamViewController *)self filterViewContainer];
    v19 = [v18 layer];
    [v19 setBorderColor:v17];

    v20 = [(ICDocCamViewController *)self filterViewContainer];
    v21 = [v20 layer];
    [v21 setBorderWidth:0.0];

    v22 = [(ICDocCamViewController *)self filterViewContainer];
    [v22 frame];
    v24 = v23;
    v25 = [(ICDocCamViewController *)self filterViewContainer];
    v26 = [v25 layer];
    [v26 setCornerRadius:v24 * 0.5];

    v27 = [(ICDocCamViewController *)self filterViewContainer];
    [v27 setBackgroundColor:v29];
  }
}

- (id)flashMenuButtonSizes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ICDocCamViewController_flashMenuButtonSizes__block_invoke;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  if ([ICDocCamViewController flashMenuButtonSizes]::onceToken != -1)
  {
    dispatch_once(&[ICDocCamViewController flashMenuButtonSizes]::onceToken, block);
  }

  return [ICDocCamViewController flashMenuButtonSizes]::buttonSizeDictionary;
}

void __46__ICDocCamViewController_flashMenuButtonSizes__block_invoke(uint64_t a1)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) flashSettingViewAutoButton];
  [v2 sizeToFit];

  v3 = [*(a1 + 32) flashSettingViewOnButton];
  [v3 sizeToFit];

  v4 = [*(a1 + 32) flashSettingViewOffButton];
  [v4 sizeToFit];

  v22[0] = @"Auto";
  v5 = MEMORY[0x277CCAE60];
  v6 = [*(a1 + 32) flashSettingViewAutoButton];
  [v6 frame];
  v9 = [v5 valueWithCGSize:{v7, v8}];
  v23[0] = v9;
  v22[1] = @"On";
  v10 = MEMORY[0x277CCAE60];
  v11 = [*(a1 + 32) flashSettingViewOnButton];
  [v11 frame];
  v14 = [v10 valueWithCGSize:{v12, v13}];
  v23[1] = v14;
  v22[2] = @"Off";
  v15 = MEMORY[0x277CCAE60];
  v16 = [*(a1 + 32) flashSettingViewOffButton];
  [v16 frame];
  v19 = [v15 valueWithCGSize:{v17, v18}];
  v23[2] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v21 = [ICDocCamViewController flashMenuButtonSizes]::buttonSizeDictionary;
  [ICDocCamViewController flashMenuButtonSizes]::buttonSizeDictionary = v20;
}

- (double)flashSettingViewWidthForIPad
{
  v2 = [(ICDocCamViewController *)self flashMenuButtonSizes];
  v3 = [v2 objectForKey:@"Auto"];
  [v3 CGSizeValue];
  v5 = v4;
  v6 = [v2 objectForKey:@"On"];

  [v6 CGSizeValue];
  v8 = v7;
  v9 = [v2 objectForKey:@"Off"];

  [v9 CGSizeValue];
  v11 = v5 + 0.0 + v8 + v10 + 72.0;

  return v11;
}

- (void)flashMoveCloserFeedback
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ICDocCamViewController_flashMoveCloserFeedback__block_invoke;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __49__ICDocCamViewController_flashMoveCloserFeedback__block_invoke(uint64_t a1)
{
  v11 = [*(a1 + 32) moveCameraCloserView];
  v2 = [v11 layer];
  v3 = [v2 animationKeys];

  if (!v3)
  {
    v12 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v12 setBeginTime:CACurrentMediaTime()];
    [v12 setDuration:2.0];
    [v12 setKeyTimes:&unk_285C6D648];
    [v12 setValues:&unk_285C6D660];
    [v12 setRemovedOnCompletion:1];
    [v12 setFillMode:*MEMORY[0x277CDA238]];
    LODWORD(v4) = 1.0;
    [v12 setRepeatCount:v4];
    v5 = [*(a1 + 32) moveCameraCloserView];
    v6 = [v5 layer];
    [v6 addAnimation:v12 forKey:@"opacity"];

    v7 = [*(a1 + 32) moveCameraCloserView];
    v8 = [v7 layer];
    [v8 setOpacity:0.0];

    v9 = [*(a1 + 32) moveCameraCloserLabel];
    v10 = [v9 text];
    UIAccessibilityPostNotification(*MEMORY[0x277D76438], v10);
  }
}

- (void)flashFilterButtonNameFeedback
{
  [(ICDocCamViewController *)self killFeedbackDisplayIncludingUserPrompts:0];
  v3 = [ICDocCamImageFilters localizedImageFilterNameForType:[(ICDocCamViewController *)self defaultFilter]];
  v4 = [(ICDocCamViewController *)self filterNameFeedbackLabel];
  [v4 setText:v3];

  v5 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v5 setBeginTime:CACurrentMediaTime()];
  [v5 setDuration:2.0];
  [v5 setKeyTimes:&unk_285C6D678];
  [v5 setValues:&unk_285C6D690];
  [v5 setRemovedOnCompletion:1];
  [v5 setFillMode:*MEMORY[0x277CDA238]];
  LODWORD(v6) = 1.0;
  [v5 setRepeatCount:v6];
  v7 = [(ICDocCamViewController *)self filterNameFeedbackView];
  v8 = [v7 layer];
  [v8 addAnimation:v5 forKey:@"filterName"];

  v9 = [(ICDocCamViewController *)self filterNameFeedbackView];
  v10 = [v9 layer];
  [v10 setOpacity:0.0];

  v11 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ICDocCamViewController_flashFilterButtonNameFeedback__block_invoke;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_after(v11, MEMORY[0x277D85CD0], block);
}

void __55__ICDocCamViewController_flashFilterButtonNameFeedback__block_invoke(uint64_t a1)
{
  v6 = [DCLocalization localizedStringForKey:@"Current filter: %@" value:@"Current filter: %@" table:@"Localizable"];
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) filterNameFeedbackLabel];
  v4 = [v3 text];
  v5 = [v2 stringWithFormat:v6, v4];

  UIAccessibilityPostNotification(*MEMORY[0x277D76438], v5);
}

- (id)localizedFlashFlashDescription
{
  v2 = [(ICDocCamViewController *)self flashMode];
  switch(v2)
  {
    case 2:
      v3 = @"Auto Flash On";
      goto LABEL_7;
    case 1:
      v3 = @"Flash On";
      goto LABEL_7;
    case 0:
      v3 = @"Flash Off";
LABEL_7:
      v4 = [DCLocalization localizedStringForKey:v3 value:v3 table:@"Localizable"];
      goto LABEL_9;
  }

  v4 = 0;
LABEL_9:

  return v4;
}

- (void)flashFlashButtonNameFeedback
{
  [(ICDocCamViewController *)self killFeedbackDisplayIncludingUserPrompts:0];
  v3 = [(ICDocCamViewController *)self localizedFlashFlashDescription];
  v4 = [(ICDocCamViewController *)self flashFeedbackLabel];
  [v4 setText:v3];

  v5 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v5 setBeginTime:CACurrentMediaTime()];
  [v5 setDuration:2.0];
  [v5 setKeyTimes:&unk_285C6D6A8];
  [v5 setValues:&unk_285C6D6C0];
  [v5 setRemovedOnCompletion:1];
  [v5 setFillMode:*MEMORY[0x277CDA238]];
  LODWORD(v6) = 1.0;
  [v5 setRepeatCount:v6];
  v7 = [(ICDocCamViewController *)self flashFeedbackView];
  v8 = [v7 layer];
  [v8 addAnimation:v5 forKey:@"filterName"];

  v9 = [(ICDocCamViewController *)self flashFeedbackView];
  v10 = [v9 layer];
  [v10 setOpacity:0.0];

  v11 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ICDocCamViewController_flashFlashButtonNameFeedback__block_invoke;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_after(v11, MEMORY[0x277D85CD0], block);
}

void __54__ICDocCamViewController_flashFlashButtonNameFeedback__block_invoke(uint64_t a1)
{
  v6 = [DCLocalization localizedStringForKey:@"Current filter: %@" value:@"Current filter: %@" table:@"Localizable"];
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) filterNameFeedbackLabel];
  v4 = [v3 text];
  v5 = [v2 stringWithFormat:v6, v4];

  UIAccessibilityPostNotification(*MEMORY[0x277D76438], v5);
}

- (void)filterButtonChoiceAction:(id)a3
{
  v4 = a3;
  -[ICDocCamViewController setDefaultFilter:](self, "setDefaultFilter:", [v4 tag]);
  [(ICDocCamViewController *)self updateFilterChoiceButtonSelection:[(ICDocCamViewController *)self defaultFilter]];
  [(ICDocCamViewController *)self hideFilterSettingUI];
  [(ICDocCamViewController *)self flashFilterButtonNameFeedback];
  v5 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ICDocCamViewController_filterButtonChoiceAction___block_invoke;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

void __51__ICDocCamViewController_filterButtonChoiceAction___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) processRequestsBlocker];
  [v1 removeBlockerOfType:@"FilterSettingBlocker"];
}

- (void)updateAccessibilityFocusForHidingFilterSettingsUI
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  if ([v3 userInterfaceIdiom])
  {
    [(ICDocCamViewController *)self filterButton];
  }

  else
  {
    [(ICDocCamViewController *)self filterButtonForIPhone];
  }
  argument = ;

  UIAccessibilityPostNotification(*MEMORY[0x277D76488], argument);
}

- (void)updateAccessibilityFocusForHidingFlashSettingsUI
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  if ([v3 userInterfaceIdiom])
  {
    [(ICDocCamViewController *)self flashButton];
  }

  else
  {
    [(ICDocCamViewController *)self flashButtonForIPhone];
  }
  argument = ;

  UIAccessibilityPostNotification(*MEMORY[0x277D76488], argument);
}

- (void)updateFilterChoiceButtonScrollPositionAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = 0;
  v7 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  while (1)
  {
    v10 = [(ICDocCamViewController *)self filterButtons];
    v11 = [v10 count];

    if (v11 <= v5)
    {
      break;
    }

    v12 = [(ICDocCamViewController *)self filterButtons];
    v13 = [v12 objectAtIndexedSubscript:v5];

    v14 = [v13 tag];
    if (v14 == [(ICDocCamViewController *)self defaultFilter])
    {
      [v13 frame];
      v6 = v15;
      v8 = v16;
      v7 = v17 + -16.0;
      v9 = v18 + 32.0;

      break;
    }

    ++v5;
  }

  v27.origin.x = v7;
  v27.origin.y = v6;
  v27.size.width = v9;
  v27.size.height = v8;
  if (CGRectIsEmpty(v27))
  {
    v19 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ICDocCamViewController updateFilterChoiceButtonScrollPositionAnimated:];
    }

    v20 = [(ICDocCamViewController *)self filterButtons];
    v21 = [v20 objectAtIndexedSubscript:0];
    [v21 frame];
    v7 = v22;
    v6 = v23;
    v9 = v24;
    v8 = v25;
  }

  v26 = [(ICDocCamViewController *)self filterScrollView];
  [v26 scrollRectToVisible:v3 animated:{v7, v6, v9, v8}];
}

- (id)filterButtonImage
{
  if ((-[ICDocCamViewController statusBarOrientation](self, "statusBarOrientation") - 3) <= 1 && (-[ICDocCamViewController view](self, "view"), v3 = objc_claimAutoreleasedReturnValue(), [v3 window], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "dc_requiresCompactLandscapeIcons"), v4, v3, v5))
  {
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"camera.filters"];
  }

  else
  {
    v6 = [MEMORY[0x277D755B8] dc_largeSystemImageNamed:@"camera.filters"];
  }

  return v6;
}

- (id)flashButtonImage
{
  v3 = [(ICDocCamViewController *)self flashMode];
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_278F93FA0[v3];
  }

  if ((-[ICDocCamViewController statusBarOrientation](self, "statusBarOrientation") - 3) <= 1 && (-[ICDocCamViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "dc_requiresCompactLandscapeIcons"), v6, v5, v7))
  {
    v8 = [MEMORY[0x277D755B8] systemImageNamed:v4];
  }

  else
  {
    v8 = [MEMORY[0x277D755B8] dc_largeSystemImageNamed:v4];
  }

  return v8;
}

- (void)myApplicationWillResignActive:(id)a3
{
  v4 = [(ICDocCamViewController *)self captureEventInteraction];
  [v4 setEnabled:0];

  v5 = [(ICDocCamViewController *)self processRequestsBlocker];
  [v5 addBlockerOfType:@"ApplicationActiveBlocker" clearRectangles:1 clearQueue:1];

  [(ICDocCamViewController *)self dismissFilterAndFlashUI];
}

- (void)myApplicationDidBecomeActive:(id)a3
{
  [(ICDocCamViewController *)self clearRectangles];
  [(ICDocCamViewController *)self clearQueue];
  v4 = [(ICDocCamViewController *)self processRequestsBlocker];
  [v4 removeBlockerOfType:@"ApplicationActiveBlocker"];

  v5 = [(ICDocCamViewController *)self isSessionRunning];
  if (v5)
  {
    [(ICDocCamViewController *)self enableShutterButtonIfPossible];
  }

  else
  {
    [(ICDocCamViewController *)self enableShutter:0];
  }

  [(ICDocCamViewController *)self enableUIElements:v5];
  v6 = [(ICDocCamViewController *)self view];
  v7 = [v6 window];
  v8 = [v7 isKeyWindow];

  if (v8)
  {
    v9 = [(ICDocCamViewController *)self captureEventInteraction];
    [v9 setEnabled:1];
  }

  [(ICDocCamViewController *)self logAlgoChoice];
}

- (void)removeAllNotifications
{
  sessionQueue = self->_sessionQueue;
  if (sessionQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__ICDocCamViewController_removeAllNotifications__block_invoke;
    block[3] = &unk_278F93AB0;
    block[4] = self;
    dispatch_sync(sessionQueue, block);
  }

  if ([(ICDocCamViewController *)self didAddAppLifetimeObservers])
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self name:*MEMORY[0x277D76768] object:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 removeObserver:self name:*MEMORY[0x277D76648] object:0];

    [(ICDocCamViewController *)self setDidAddAppLifetimeObservers:0];
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self];

  if (self->_sessionQueue)
  {
    v7 = [(ICDocCamViewController *)self sessionQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__ICDocCamViewController_removeAllNotifications__block_invoke_2;
    v9[3] = &unk_278F93AB0;
    v9[4] = self;
    dispatch_sync(v7, v9);
  }

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 removeObserver:self name:*MEMORY[0x277D76810] object:0];
}

void __48__ICDocCamViewController_removeAllNotifications__block_invoke_2(uint64_t a1)
{
  if (![*(a1 + 32) setupResult])
  {
    v3 = [*(a1 + 32) session];
    v2 = [v3 isRunning];

    if (v2)
    {
      v4 = [*(a1 + 32) session];
      [v4 stopRunning];

      v5 = [*(a1 + 32) session];
      [*(a1 + 32) setSessionRunning:{objc_msgSend(v5, "isRunning")}];
    }
  }
}

- (void)addObserversIfNecessary
{
  if (![(ICDocCamViewController *)self isObservingCaptureSession])
  {
    v3 = [(ICDocCamViewController *)self session];
    [v3 addObserver:self forKeyPath:@"running" options:1 context:SessionRunningContext];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = [(ICDocCamViewController *)self videoDeviceInput];
    v6 = [v5 device];
    [v4 addObserver:self selector:sel_subjectAreaDidChange_ name:*MEMORY[0x277CE5838] object:v6];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = [(ICDocCamViewController *)self session];
    [v7 addObserver:self selector:sel_sessionRuntimeError_ name:*MEMORY[0x277CE59C0] object:v8];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = [(ICDocCamViewController *)self session];
    [v9 addObserver:self selector:sel_sessionWasInterrupted_ name:*MEMORY[0x277CE59C8] object:v10];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = [(ICDocCamViewController *)self session];
    [v11 addObserver:self selector:sel_sessionInterruptionEnded_ name:*MEMORY[0x277CE5948] object:v12];

    v13 = [(ICDocCamViewController *)self videoDeviceInput];
    v14 = [v13 device];
    [v14 addObserver:self forKeyPath:@"adjustingFocus" options:1 context:0];

    [(ICDocCamViewController *)self setIsObservingCaptureSession:1];
  }
}

- (void)removeObserversIfNecessary
{
  if ([(ICDocCamViewController *)self isObservingCaptureSession])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = [(ICDocCamViewController *)self videoDeviceInput];
    v5 = [v4 device];
    [v3 removeObserver:self name:*MEMORY[0x277CE5838] object:v5];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = [(ICDocCamViewController *)self session];
    [v6 removeObserver:self name:*MEMORY[0x277CE59C0] object:v7];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = [(ICDocCamViewController *)self session];
    [v8 removeObserver:self name:*MEMORY[0x277CE59C8] object:v9];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = [(ICDocCamViewController *)self session];
    [v10 removeObserver:self name:*MEMORY[0x277CE5948] object:v11];

    v12 = [(ICDocCamViewController *)self session];
    [v12 removeObserver:self forKeyPath:@"running" context:SessionRunningContext];

    v13 = [(ICDocCamViewController *)self videoDeviceInput];
    v14 = [v13 device];
    [v14 removeObserver:self forKeyPath:@"adjustingFocus"];

    [(ICDocCamViewController *)self setIsObservingCaptureSession:0];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"adjustingFocus"])
  {
    v13 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:1];
    -[ICDocCamViewController setAdjustingFocus:](self, "setAdjustingFocus:", [v13 isEqualToNumber:v14]);
  }

  else if (SessionRunningContext == a6)
  {
    v15 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v33 = [v15 BOOLValue];

    v16 = [(ICDocCamViewController *)self processRequestsBlocker];
    if ([v16 blocked])
    {
      v17 = [(ICDocCamViewController *)self processRequestsBlocker];
      v18 = [v17 blockerSet];
      if ([v18 count] == 1)
      {
        v19 = [(ICDocCamViewController *)self processRequestsBlocker];
        v20 = [v19 blockerSet];
        v21 = [v20 member:@"OrientationBlocker"];
        v22 = v21 == 0;
      }

      else
      {
        v22 = 1;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = 0;
    if (v33 && !v22)
    {
      v24 = [(ICDocCamViewController *)self snapStillImageBlocker];
      v23 = [v24 blocked] ^ 1;
    }

    [(ICDocCamViewController *)self setSessionRunning:v33];
    v25 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249253000, v25, OS_LOG_TYPE_DEFAULT, "observeValueForKeyPath(SessionRunningContext)", buf, 2u);
    }

    v26 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = @"NO";
      if (v33)
      {
        v27 = @"YES";
      }

      *buf = 138412290;
      v39 = v27;
      _os_log_impl(&dword_249253000, v26, OS_LOG_TYPE_DEFAULT, "  isSessionRunning: %@", buf, 0xCu);
    }

    v28 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = @"NO";
      if (v23)
      {
        v29 = @"YES";
      }

      *buf = 138412290;
      v39 = v29;
      _os_log_impl(&dword_249253000, v28, OS_LOG_TYPE_DEFAULT, "  enableUI        : %@", buf, 0xCu);
    }

    if ((v23 & 1) == 0)
    {
      v30 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [(ICDocCamViewController *)self processRequestsBlocker];
        v32 = [v31 blockerSet];
        *buf = 138412290;
        v39 = v32;
        _os_log_impl(&dword_249253000, v30, OS_LOG_TYPE_DEFAULT, "  procReqBlockers : %@", buf, 0xCu);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__ICDocCamViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_278F93BC8;
    v36 = v33;
    block[4] = self;
    v37 = v23;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v34.receiver = self;
    v34.super_class = ICDocCamViewController;
    [(ICDocCamViewController *)&v34 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

void __73__ICDocCamViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) flashFilterButtonNameFeedback];
  }

  if (*(a1 + 41) == 1)
  {
    [*(a1 + 32) enableShutterButtonIfPossible];
  }

  else if (([objc_opt_class() isLiquidGlassEnabledForCapture] & 1) == 0)
  {
    [*(a1 + 32) enableShutter:0];
  }

  [*(a1 + 32) enableUIElements:*(a1 + 41)];
  v2 = [*(a1 + 32) previewView];
  v3 = [v2 layer];
  [v3 opacity];
  if (v4 == 0.0)
  {
    v5 = *(a1 + 40);

    if (v5 == 1)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __73__ICDocCamViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      v8[3] = &unk_278F93AB0;
      v8[4] = *(a1 + 32);
      [MEMORY[0x277D75D18] animateWithDuration:v8 animations:0.25];
    }
  }

  else
  {
  }

  v6 = [*(a1 + 32) sessionStartNotificationBlock];

  if (v6)
  {
    v7 = [*(a1 + 32) sessionStartNotificationBlock];
    v7[2]();

    [*(a1 + 32) setSessionStartNotificationBlock:0];
  }
}

void __73__ICDocCamViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) previewView];
  v1 = [v3 layer];
  LODWORD(v2) = 1.0;
  [v1 setOpacity:v2];
}

- (void)subjectAreaDidChange:(id)a3
{
  v4 = [MEMORY[0x277CBEAA8] date];
  [(ICDocCamViewController *)self setLastSubjectAreaChange:?];
}

- (void)sessionRuntimeError:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CE5940]];

  v7 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_249253000, v7, OS_LOG_TYPE_DEFAULT, "Capture session runtime error: %@", buf, 0xCu);
  }

  if ([v6 code] == -11819)
  {
    v8 = [(ICDocCamViewController *)self sessionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__ICDocCamViewController_sessionRuntimeError___block_invoke;
    block[3] = &unk_278F93AB0;
    block[4] = self;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = [(ICDocCamViewController *)self resumeButton];
    [v9 setHidden:0];
  }
}

void __46__ICDocCamViewController_sessionRuntimeError___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isSessionRunning])
  {
    v2 = [*(a1 + 32) session];
    [v2 startRunning];

    v3 = [*(a1 + 32) session];
    [*(a1 + 32) setSessionRunning:{objc_msgSend(v3, "isRunning")}];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__ICDocCamViewController_sessionRuntimeError___block_invoke_2;
    block[3] = &unk_278F93AB0;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __46__ICDocCamViewController_sessionRuntimeError___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) resumeButton];
  [v1 setHidden:0];
}

- (void)hideUIForInterruptedSession:(BOOL)a3
{
  v3 = a3;
  if ((DCDebugInterfaceEnabled() & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "userInterfaceIdiom"), v5, v6 == 1))
  {
    if (v3)
    {
      [(ICDocCamViewController *)self enableShutter:0];
      v7 = [(ICDocCamViewController *)self flashButton];
      [v7 setEnabled:0];

      v8 = [(ICDocCamViewController *)self filterButton];
      [v8 setEnabled:0];

      v9 = [(ICDocCamViewController *)self autoButton];
      [v9 setEnabled:0];

      v10 = [(ICDocCamViewController *)self manualButton];
      [v10 setEnabled:0];

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __54__ICDocCamViewController_hideUIForInterruptedSession___block_invoke;
      v17[3] = &unk_278F93AB0;
      v17[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v17 animations:0.25];
    }

    else
    {
      v11 = [(ICDocCamViewController *)self flashButton];
      [v11 setEnabled:1];

      v12 = [(ICDocCamViewController *)self filterButton];
      [v12 setEnabled:1];

      v13 = [(ICDocCamViewController *)self autoButton];
      [v13 setEnabled:1];

      v14 = [(ICDocCamViewController *)self manualButton];
      [v14 setEnabled:1];

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __54__ICDocCamViewController_hideUIForInterruptedSession___block_invoke_2;
      v16[3] = &unk_278F93AB0;
      v16[4] = self;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __54__ICDocCamViewController_hideUIForInterruptedSession___block_invoke_3;
      v15[3] = &unk_278F93B28;
      v15[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v16 animations:v15 completion:0.25];
    }
  }
}

void __54__ICDocCamViewController_hideUIForInterruptedSession___block_invoke(uint64_t a1)
{
  [*(a1 + 32) hideShutter:1];
  v2 = [*(a1 + 32) flashButton];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) filterButton];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) userPromptView];
  [v4 setAlpha:0.0];

  v5 = [*(a1 + 32) autoButton];
  [v5 setAlpha:0.0];

  v6 = [*(a1 + 32) manualButton];
  [v6 setAlpha:0.0];

  v7 = [*(a1 + 32) filterViewContainer];
  [v7 setAlpha:0.0];

  v8 = [*(a1 + 32) flashSettingView];
  [v8 setAlpha:0.0];
}

void __54__ICDocCamViewController_hideUIForInterruptedSession___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) hideShutter:0];
  v2 = [*(a1 + 32) flashButton];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) filterButton];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) userPromptView];
  [v4 setAlpha:1.0];

  v5 = [*(a1 + 32) autoButton];
  [v5 setAlpha:1.0];

  v6 = [*(a1 + 32) manualButton];
  [v6 setAlpha:1.0];

  v7 = [*(a1 + 32) filterViewContainer];
  [v7 setAlpha:1.0];

  v8 = [*(a1 + 32) flashSettingView];
  [v8 setAlpha:1.0];
}

- (void)sessionWasInterrupted:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CE5950]];
  v6 = [v5 integerValue];

  if ((v6 - 1) >= 4)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_278F93FB8[v6 - 1];
  }

  v8 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&dword_249253000, v8, OS_LOG_TYPE_DEFAULT, "Capture session was interrupted with reason %@", buf, 0xCu);
  }

  [(ICDocCamViewController *)self dismissFilterAndFlashUI];
  [(ICDocCamViewController *)self hideUIForInterruptedSession:1];
  if (v6 != 1)
  {
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v9 = [(ICDocCamViewController *)self resumeButton];
      [v9 setAlpha:0.0];

      v10 = [(ICDocCamViewController *)self resumeButton];
      [v10 setHidden:0];

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __48__ICDocCamViewController_sessionWasInterrupted___block_invoke;
      v16[3] = &unk_278F93AB0;
      v16[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v16 animations:0.25];
    }

    else if (v6 == 4)
    {
      v11 = [(ICDocCamViewController *)self userPromptView];
      [v11 setHidden:1];

      v12 = [(ICDocCamViewController *)self cameraUnavailableScrim];
      [v12 setAlpha:0.0];

      v13 = [(ICDocCamViewController *)self cameraUnavailableScrim];
      [v13 setHidden:0];

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __48__ICDocCamViewController_sessionWasInterrupted___block_invoke_2;
      v15[3] = &unk_278F93AB0;
      v15[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v15 animations:0.25];
      v14 = [(ICDocCamViewController *)self cameraUnavailableLabel];
      [(ICDocCamViewController *)self speakLabelTextForAccessibilityIfNecessary:v14 afterDelay:1.0];
    }
  }
}

void __48__ICDocCamViewController_sessionWasInterrupted___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) resumeButton];
  [v1 setAlpha:1.0];
}

void __48__ICDocCamViewController_sessionWasInterrupted___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) cameraUnavailableScrim];
  [v1 setAlpha:1.0];
}

- (void)sessionInterruptionEnded:(id)a3
{
  v4 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249253000, v4, OS_LOG_TYPE_DEFAULT, "Capture session interruption ended", buf, 2u);
  }

  v5 = [(ICDocCamViewController *)self resumeButton];
  v6 = [v5 isHidden];

  if ((v6 & 1) == 0)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__ICDocCamViewController_sessionInterruptionEnded___block_invoke;
    v12[3] = &unk_278F93AB0;
    v12[4] = self;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__ICDocCamViewController_sessionInterruptionEnded___block_invoke_2;
    v11[3] = &unk_278F93B28;
    v11[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v12 animations:v11 completion:0.25];
  }

  v7 = [(ICDocCamViewController *)self cameraUnavailableScrim];
  v8 = [v7 isHidden];

  if ((v8 & 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__ICDocCamViewController_sessionInterruptionEnded___block_invoke_3;
    v10[3] = &unk_278F93AB0;
    v10[4] = self;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__ICDocCamViewController_sessionInterruptionEnded___block_invoke_4;
    v9[3] = &unk_278F93B28;
    v9[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v10 animations:v9 completion:0.25];
  }

  [(ICDocCamViewController *)self hideUIForInterruptedSession:0];
}

void __51__ICDocCamViewController_sessionInterruptionEnded___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) resumeButton];
  [v1 setAlpha:0.0];
}

void __51__ICDocCamViewController_sessionInterruptionEnded___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) resumeButton];
  [v1 setHidden:1];
}

void __51__ICDocCamViewController_sessionInterruptionEnded___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) cameraUnavailableScrim];
  [v1 setAlpha:0.0];
}

void __51__ICDocCamViewController_sessionInterruptionEnded___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) cameraUnavailableScrim];
  [v1 setHidden:1];
}

- (void)resumeInterruptedSession:(id)a3
{
  v4 = [(ICDocCamViewController *)self sessionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ICDocCamViewController_resumeInterruptedSession___block_invoke;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_async(v4, block);
}

void __51__ICDocCamViewController_resumeInterruptedSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) session];
  [v2 startRunning];

  v3 = [*(a1 + 32) session];
  [*(a1 + 32) setSessionRunning:{objc_msgSend(v3, "isRunning")}];

  v4 = [*(a1 + 32) session];
  v5 = [v4 isRunning];

  if (v5)
  {
    v6 = v8;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v7 = __51__ICDocCamViewController_resumeInterruptedSession___block_invoke_3;
  }

  else
  {
    v6 = block;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v7 = __51__ICDocCamViewController_resumeInterruptedSession___block_invoke_2;
  }

  v6[2] = v7;
  v6[3] = &unk_278F93AB0;
  v6[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __51__ICDocCamViewController_resumeInterruptedSession___block_invoke_2(uint64_t a1)
{
  v9 = [DCLocalization localizedStringForKey:@"Unable to resume" value:@"Unable to resume" table:@"Localizable"];
  v2 = MEMORY[0x277D75110];
  v3 = DCAppName();
  v4 = [v2 alertControllerWithTitle:v3 message:v9 preferredStyle:1];

  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
  [v4 setImage:v5];

  v6 = MEMORY[0x277D750F8];
  v7 = [DCLocalization localizedStringForKey:@"OK" value:@"OK" table:@"Localizable"];
  v8 = [v6 actionWithTitle:v7 style:1 handler:0];

  [v4 addAction:v8];
  [*(a1 + 32) presentViewController:v4 animated:1 completion:0];
}

void __51__ICDocCamViewController_resumeInterruptedSession___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) resumeButton];
  [v1 setHidden:1];
}

- (id)createNSDataFrom:(id)a3 metaData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CBEA90];
  v28 = v6;
  v29 = v5;
  v8 = UIImageJPEGRepresentation(v5, 1.0);
  v9 = [v7 dataWithData:v8];

  v27 = v9;
  v10 = CGImageSourceCreateWithData(v9, 0);
  v11 = [v6 mutableCopy];
  v12 = *MEMORY[0x277CD3038];
  v33 = [v11 objectForKey:*MEMORY[0x277CD3038]];
  v13 = *MEMORY[0x277CD3258];
  v32 = [v11 objectForKey:*MEMORY[0x277CD3258]];
  v14 = *MEMORY[0x277CD3490];
  v31 = [v11 objectForKey:*MEMORY[0x277CD3490]];
  v15 = *MEMORY[0x277CD3468];
  v30 = [v11 objectForKey:*MEMORY[0x277CD3468]];
  v16 = *MEMORY[0x277CD33A8];
  v17 = [v11 objectForKey:*MEMORY[0x277CD33A8]];
  v18 = *MEMORY[0x277CD31C8];
  v19 = [v11 objectForKey:*MEMORY[0x277CD31C8]];
  if (!v33)
  {
    v33 = [MEMORY[0x277CBEB38] dictionary];
  }

  if (!v32)
  {
    v32 = [MEMORY[0x277CBEB38] dictionary];
  }

  if (!v31)
  {
    v31 = [MEMORY[0x277CBEB38] dictionary];
  }

  if (v30)
  {
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_12:
    v17 = [MEMORY[0x277CBEB38] dictionary];
    if (v19)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v30 = [MEMORY[0x277CBEB38] dictionary];
  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (v19)
  {
    goto LABEL_14;
  }

LABEL_13:
  v19 = [MEMORY[0x277CBEB38] dictionary];
LABEL_14:
  [v11 setObject:v33 forKey:v12];
  [v11 setObject:v32 forKey:v13];
  [v11 setObject:v31 forKey:v14];
  [v11 setObject:v30 forKey:v15];
  [v11 setObject:v17 forKey:v16];
  [v11 setObject:v19 forKey:v18];
  v20 = [(UIImage *)v29 imageOrientation];
  if ((v20 - 1) >= 3)
  {
    v21 = 1;
  }

  else
  {
    v21 = dword_2492F7B00[v20 - 1];
  }

  v22 = [MEMORY[0x277CCABB0] numberWithInt:v21];
  [v11 setObject:v22 forKey:@"Orientation"];

  [v11 removeObjectForKey:@"Diagnostic"];
  Type = CGImageSourceGetType(v10);
  v24 = [MEMORY[0x277CBEB28] data];
  v25 = CGImageDestinationCreateWithData(v24, Type, 1uLL, 0);
  CGImageDestinationAddImageFromSource(v25, v10, 0, v11);
  CGImageDestinationFinalize(v25);
  CFRelease(v25);
  CFRelease(v10);

  return v24;
}

- (void)toggleAutoCapture:(id)a3
{
  v4 = a3;
  v5 = [(ICDocCamViewController *)self manualButton];
  if (v5 == v4 && ![(ICDocCamViewController *)self autoMode])
  {

    goto LABEL_13;
  }

  v6 = [(ICDocCamViewController *)self autoButton];
  v7 = v6;
  if (v6 == v4)
  {
    v8 = [(ICDocCamViewController *)self autoMode];

    if (v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v9 = [(ICDocCamViewController *)self processRequestsBlocker];
  [v9 addBlockerOfType:@"ToggleAutoModeBlocker" clearRectangles:1 clearQueue:1];

  [(ICDocCamViewController *)self killFeedbackDisplayIncludingUserPrompts:1];
  v10 = [(ICDocCamViewController *)self autoButton];
  [v10 setEnabled:0];

  v11 = [(ICDocCamViewController *)self manualButton];
  [v11 setEnabled:0];

  v12 = [(ICDocCamViewController *)self autoButtonForIPhone];
  [v12 setEnabled:0];

  [(ICDocCamViewController *)self clearRectangles];
  [(ICDocCamViewController *)self clearQueue];
  if ([(ICDocCamViewController *)self autoMode])
  {
    [(ICDocCamViewController *)self setAutoMode:0];
    v13 = [(ICDocCamViewController *)self autoMode];
    v14 = [(ICDocCamViewController *)self overlayView];
    [v14 setShowGridAnimation:v13];

    v15 = [MEMORY[0x277D75418] currentDevice];
    v16 = [v15 userInterfaceIdiom];

    if (!v16)
    {
      [(ICDocCamViewController *)self updateConstraintsForIPhone];
      v17 = [(ICDocCamViewController *)self thumbnailViewController];
      [v17 animateLayoutChange];
    }

    [(ICDocCamViewController *)self updateAutoButtonTitleForAutoMode:1];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __44__ICDocCamViewController_toggleAutoCapture___block_invoke;
    v32[3] = &unk_278F93AB0;
    v32[4] = self;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __44__ICDocCamViewController_toggleAutoCapture___block_invoke_2;
    v31[3] = &unk_278F93B28;
    v31[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v32 options:v31 animations:0.2 completion:0.0];
    v18 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v18 setBeginTime:CACurrentMediaTime()];
    [v18 setDuration:2.0];
    [v18 setKeyTimes:&unk_285C6D6D8];
    [v18 setValues:&unk_285C6D6F0];
    [v18 setRemovedOnCompletion:1];
    [v18 setFillMode:*MEMORY[0x277CDA238]];
    LODWORD(v19) = 1.0;
    [v18 setRepeatCount:v19];
    v20 = [(ICDocCamViewController *)self autoShutterOffView];
    v21 = [v20 layer];
    [v21 addAnimation:v18 forKey:@"autoOff"];

    v22 = [(ICDocCamViewController *)self autoShutterOffView];
    v23 = [v22 layer];
    [v23 setOpacity:0.0];

    [(ICDocCamViewController *)self updateAccessibilityForAutoShutterMode:0];
  }

  else
  {
    [(ICDocCamViewController *)self setAutoMode:1];
    [(ICDocCamViewController *)self updateAutoButtonTitleForAutoMode:0];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __44__ICDocCamViewController_toggleAutoCapture___block_invoke_3;
    v30[3] = &unk_278F93AB0;
    v30[4] = self;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __44__ICDocCamViewController_toggleAutoCapture___block_invoke_4;
    v29[3] = &unk_278F93B28;
    v29[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v30 options:v29 animations:0.1 completion:0.0];
    v18 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v18 setBeginTime:CACurrentMediaTime()];
    [v18 setDuration:2.0];
    [v18 setKeyTimes:&unk_285C6D6D8];
    [v18 setValues:&unk_285C6D6F0];
    [v18 setRemovedOnCompletion:1];
    [v18 setFillMode:*MEMORY[0x277CDA238]];
    LODWORD(v24) = 1.0;
    [v18 setRepeatCount:v24];
    v25 = [(ICDocCamViewController *)self autoShutterOnView];
    v26 = [v25 layer];
    [v26 addAnimation:v18 forKey:@"autoOn"];

    v27 = [(ICDocCamViewController *)self autoShutterOnView];
    v28 = [v27 layer];
    [v28 setOpacity:0.0];

    [(ICDocCamViewController *)self updateAccessibilityForAutoShutterMode:1];
  }

  UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
LABEL_13:
}

void __44__ICDocCamViewController_toggleAutoCapture___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) clearRectangles];
  v2 = [*(a1 + 32) autoButton];
  [v2 setEnabled:1];

  v3 = [*(a1 + 32) manualButton];
  [v3 setEnabled:1];

  v4 = [*(a1 + 32) autoButtonForIPhone];
  [v4 setEnabled:1];

  v5 = [*(a1 + 32) processRequestsBlocker];
  [v5 removeBlockerOfType:@"ToggleAutoModeBlocker"];
}

void __44__ICDocCamViewController_toggleAutoCapture___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) clearRectangles];
  v2 = [*(a1 + 32) autoButton];
  [v2 setEnabled:1];

  v3 = [*(a1 + 32) manualButton];
  [v3 setEnabled:1];

  v4 = [*(a1 + 32) autoButtonForIPhone];
  [v4 setEnabled:1];

  v5 = [*(a1 + 32) processRequestsBlocker];
  [v5 removeBlockerOfType:@"ToggleAutoModeBlocker"];
}

- (void)filterButtonCancelUI:(id)a3
{
  [(ICDocCamViewController *)self hideFilterSettingUI];
  v4 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ICDocCamViewController_filterButtonCancelUI___block_invoke;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __47__ICDocCamViewController_filterButtonCancelUI___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) processRequestsBlocker];
  [v1 removeBlockerOfType:@"FilterSettingBlocker"];
}

- (void)filterButtonAction:(id)a3
{
  v4 = a3;
  if ([(ICDocCamViewController *)self filterSettingUIShowing])
  {
    [(ICDocCamViewController *)self filterButtonCancelUI:v4];
  }

  else
  {
    v5 = [(ICDocCamViewController *)self flashAndFilterUISemaphore];
    v6 = dispatch_semaphore_wait(v5, 0);

    if (!v6)
    {
      v7 = [(ICDocCamViewController *)self processRequestsBlocker];
      [v7 addBlockerOfType:@"FilterSettingBlocker" clearRectangles:1 clearQueue:1];

      [(ICDocCamViewController *)self dismissFlashUI];
      v8 = [(ICDocCamViewController *)self userPromptView];
      [v8 setHidden:1];

      v9 = [MEMORY[0x277D75418] currentDevice];
      v10 = [v9 userInterfaceIdiom];

      if (v10)
      {
        v11 = [(ICDocCamViewController *)self view];
        [v11 layoutIfNeeded];

        [(ICDocCamViewController *)self setUpFilterScrollView];
        [(ICDocCamViewController *)self filterScrollViewContentWidthWithInterItemSpacing:20.0 startPadding:10.0 endPadding:22.0];
        v13 = v12;
        v14 = [(ICDocCamViewController *)self filterScrollView];
        [v14 contentInset];
        v16 = v15;

        v17 = [MEMORY[0x277D759A0] mainScreen];
        [v17 bounds];
        v19 = v18;
        v21 = v20;
        v22 = v13 + 44.0 + v16;

        if (v19 >= v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = v19;
        }

        v24 = v23 + -66.0;
        if (v22 < v24)
        {
          v24 = v22;
        }

        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __45__ICDocCamViewController_filterButtonAction___block_invoke_3;
        v31[3] = &unk_278F93BA0;
        v31[4] = self;
        *&v31[5] = v24;
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __45__ICDocCamViewController_filterButtonAction___block_invoke_4;
        v30[3] = &unk_278F93B28;
        v30[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v31 animations:v30 completion:0.25];
      }

      else
      {
        v25 = [(ICDocCamViewController *)self topToolbarForIPhone];
        [v25 setAlpha:1.0];

        v26 = [(ICDocCamViewController *)self topToolbarForIPhone];
        [v26 setHidden:0];

        v27 = [(ICDocCamViewController *)self filterViewContainer];
        [v27 setAlpha:0.0];

        v28 = [(ICDocCamViewController *)self filterViewContainer];
        [v28 setHidden:0];

        v29 = [(ICDocCamViewController *)self view];
        [v29 layoutIfNeeded];

        [(ICDocCamViewController *)self setUpFilterScrollView];
        [(ICDocCamViewController *)self updateFilterChoiceButtonScrollPositionAnimated:0];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __45__ICDocCamViewController_filterButtonAction___block_invoke;
        v33[3] = &unk_278F93AB0;
        v33[4] = self;
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __45__ICDocCamViewController_filterButtonAction___block_invoke_2;
        v32[3] = &unk_278F93B28;
        v32[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v33 animations:v32 completion:0.25];
      }
    }
  }
}

uint64_t __45__ICDocCamViewController_filterButtonAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) topToolbarForIPhone];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) filterViewContainer];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];

  [*(a1 + 32) setUpFilterScrollView];
  v5 = *(a1 + 32);

  return [v5 updateFilterChoiceButtonScrollPositionAnimated:0];
}

void __45__ICDocCamViewController_filterButtonAction___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) topToolbarForIPhone];
  [v3 setHidden:1];

  [*(a1 + 32) setFilterSettingUIShowing:1];
  v2 = [*(a1 + 32) flashAndFilterUISemaphore];
  dispatch_semaphore_signal(v2);

  [*(a1 + 32) updateAccessibilityForCurrentFilter];
  LODWORD(v2) = *MEMORY[0x277D76488];
  v4 = [*(a1 + 32) filterViewContainer];
  UIAccessibilityPostNotification(v2, v4);
}

uint64_t __45__ICDocCamViewController_filterButtonAction___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) filterViewContainerWidthConstraint];
  [v3 setConstant:v2];

  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];

  v5 = *(a1 + 32);

  return [v5 setUpFilterScrollView];
}

void __45__ICDocCamViewController_filterButtonAction___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setFilterSettingUIShowing:1];
  v2 = [*(a1 + 32) flashAndFilterUISemaphore];
  dispatch_semaphore_signal(v2);

  [*(a1 + 32) updateAccessibilityForCurrentFilter];
  LODWORD(v2) = *MEMORY[0x277D76488];
  v3 = [*(a1 + 32) filterViewContainer];
  UIAccessibilityPostNotification(v2, v3);
}

- (void)cancelAction:(id)a3
{
  v4 = [(ICDocCamViewController *)self processRequestsBlocker];
  [v4 addBlockerOfType:@"CancelActionBlocker" clearRectangles:1 clearQueue:1];

  [(ICDocCamViewController *)self dismissFilterAndFlashUI];
  if ([(ICDocCamViewController *)self isInRetakeMode])
  {
    v5 = [(ICDocCamViewController *)self retakeIndex];
    [(ICDocCamViewController *)self disableRetakeMode];
    v6 = [ICDocCamExtractedDocumentViewController alloc];
    v7 = [(ICDocCamViewController *)self documentInfoCollection];
    v8 = [(ICDocCamViewController *)self imageCache];
    v9 = [(ICDocCamExtractedDocumentViewController *)v6 initWithDelegate:self documentInfoCollection:v7 imageCache:v8 currentIndex:v5 mode:0];

    v10 = *MEMORY[0x277CDA928];
    v11 = *MEMORY[0x277CDA948];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __39__ICDocCamViewController_cancelAction___block_invoke;
    v37[3] = &unk_278F93AB0;
    v37[4] = self;
    [(ICDocCamViewController *)self pushViewController:v9 type:v10 subtype:v11 duration:v37 completion:0.25];
LABEL_11:

    return;
  }

  v12 = [(ICDocCamViewController *)self documentInfoCollection];
  v13 = [v12 docInfos];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [(ICDocCamViewController *)self documentInfoCollection];
    v16 = [v15 docInfos];
    v17 = [v16 count];

    if (v17 == 1)
    {
      v18 = @"Discard Scan";
    }

    else
    {
      v18 = @"Discard Scans";
    }

    v9 = [DCLocalization localizedStringForKey:v18 value:v18 table:@"Localizable"];
    v21 = MEMORY[0x277CCACA8];
    v22 = [DCLocalization localizedStringForKey:@"DISCARD_%lu_SCANNED_IMAGES_ALERT_MESSAGE" value:@"DISCARD_%lu_SCANNED_IMAGES_ALERT_MESSAGE" table:@"Localizable"];
    v23 = [(ICDocCamViewController *)self documentInfoCollection];
    v24 = [v23 docInfos];
    v25 = [v21 localizedStringWithFormat:v22, objc_msgSend(v24, "count")];

    v26 = [MEMORY[0x277D75110] alertControllerWithTitle:v9 message:v25 preferredStyle:1];
    v27 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
    [v26 setImage:v27];

    v28 = MEMORY[0x277D750F8];
    v29 = [DCLocalization localizedStringForKey:@"Discard" value:@"Discard" table:@"Localizable"];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __39__ICDocCamViewController_cancelAction___block_invoke_2;
    v36[3] = &unk_278F93BF0;
    v36[4] = self;
    v30 = [v28 actionWithTitle:v29 style:0 handler:v36];

    [v26 addAction:v30];
    v31 = MEMORY[0x277D750F8];
    v32 = [DCLocalization localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __39__ICDocCamViewController_cancelAction___block_invoke_4;
    v35[3] = &unk_278F93BF0;
    v35[4] = self;
    v33 = [v31 actionWithTitle:v32 style:1 handler:v35];

    [v26 addAction:v33];
    [(ICDocCamViewController *)self presentViewController:v26 animated:1 completion:0];

    goto LABEL_11;
  }

  v19 = [(ICDocCamViewController *)self cameraUnavailableScrim];
  [v19 setHidden:1];

  v20 = [(ICDocCamViewController *)self delegate];
  [v20 documentCameraControllerDidCancel:self];

  v34 = [(ICDocCamViewController *)self processRequestsBlocker];
  [v34 removeBlockerOfType:@"CancelActionBlocker"];
}

void __39__ICDocCamViewController_cancelAction___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDoneButtonVisible:1];
  v2 = [*(a1 + 32) thumbnailContainerView];
  [v2 setHidden:0];

  v3 = [*(a1 + 32) processRequestsBlocker];
  [v3 removeBlockerOfType:@"CancelActionBlocker"];
}

void __39__ICDocCamViewController_cancelAction___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 documentCameraControllerDidCancel:*(a1 + 32)];

  v3 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ICDocCamViewController_cancelAction___block_invoke_3;
  block[3] = &unk_278F93AB0;
  block[4] = *(a1 + 32);
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

void __39__ICDocCamViewController_cancelAction___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) processRequestsBlocker];
  [v1 removeBlockerOfType:@"CancelActionBlocker"];
}

void __39__ICDocCamViewController_cancelAction___block_invoke_4(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ICDocCamViewController_cancelAction___block_invoke_5;
  block[3] = &unk_278F93AB0;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

void __39__ICDocCamViewController_cancelAction___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) processRequestsBlocker];
  [v1 removeBlockerOfType:@"CancelActionBlocker"];
}

- (void)singleTap
{
  v3 = [(ICDocCamViewController *)self flashAndFilterUISemaphore];
  v4 = dispatch_semaphore_wait(v3, 0);

  if (!v4)
  {
    [(ICDocCamViewController *)self dismissFilterAndFlashUI];
    v5 = [(ICDocCamViewController *)self flashAndFilterUISemaphore];
    dispatch_semaphore_signal(v5);
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(ICDocCamViewController *)self flashAndFilterUISemaphore];
  v6 = dispatch_semaphore_wait(v5, 0);

  if (!v6)
  {
    v8 = [(ICDocCamViewController *)self singleTapGestureRecognizer];

    if (v8 != v4)
    {
      LOBYTE(v7) = 1;
LABEL_12:
      v19 = [(ICDocCamViewController *)self flashAndFilterUISemaphore];
      dispatch_semaphore_signal(v19);

      goto LABEL_13;
    }

    v9 = [(ICDocCamViewController *)self filterViewContainer];
    if ([v9 isHidden])
    {
      v7 = [(ICDocCamViewController *)self flashSettingUIShowing];

      if (!v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v10 = [(ICDocCamViewController *)self view];
    [v4 locationInView:v10];
    v12 = v11;
    v14 = v13;

    v15 = [(ICDocCamViewController *)self view];
    v16 = [v15 hitTest:0 withEvent:{v12, v14}];

    v17 = [(ICDocCamViewController *)self thumbnailContainerView];
    v18 = [v16 isDescendantOfView:v17];

    if (v18)
    {
      [(ICDocCamViewController *)self dismissFilterAndFlashUI];
    }

    LOBYTE(v7) = v18 ^ 1;

    goto LABEL_12;
  }

  LOBYTE(v7) = 0;
LABEL_13:

  return v7;
}

- (void)shutterButtonAction:(id)a3
{
  v4 = [(ICDocCamViewController *)self flashAndFilterUISemaphore];
  v5 = dispatch_semaphore_wait(v4, 0);

  if (!v5)
  {
    [(ICDocCamViewController *)self dismissFilterAndFlashUI];
    v6 = [(ICDocCamViewController *)self overlayView];
    v7 = [v6 documentQuad];
    [(ICDocCamViewController *)self setBackupQuad:v7];

    [(ICDocCamViewController *)self snapStillImageWithMode:2];
    v8 = [(ICDocCamViewController *)self flashAndFilterUISemaphore];
    dispatch_semaphore_signal(v8);
  }
}

- (void)saveAction:(id)a3
{
  for (i = 0; ; ++i)
  {
    v26 = [(ICDocCamViewController *)self documentInfoCollection];
    v5 = [v26 docInfos];
    v6 = [v5 count];

    if (v6 <= i)
    {
      break;
    }

    v27 = [(ICDocCamViewController *)self documentInfoCollection];
    v7 = [v27 docInfos];
    v8 = [v7 objectAtIndexedSubscript:i];
    v9 = [v8 croppedAndFilteredImageUUID];

    if (!v9)
    {
      return;
    }
  }

  v28 = [(ICDocCamViewController *)self processRequestsBlocker];
  v10 = [v28 blockerSet];
  v11 = [v10 containsObject:@"SaveActionBlocker"];

  if ((v11 & 1) == 0)
  {
    v29 = [(ICDocCamViewController *)self processRequestsBlocker];
    [v29 addBlockerOfType:@"SaveActionBlocker" clearRectangles:1 clearQueue:1];

    [(ICDocCamViewController *)self dismissFilterAndFlashUI];
    v30 = [(ICDocCamViewController *)self documentInfoCollection];
    v12 = [v30 docInfos];
    v13 = [v12 count];

    if (v13)
    {
      v31 = [(ICDocCamViewController *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v32 = [(ICDocCamViewController *)self delegate];
        v15 = [(ICDocCamViewController *)self documentInfoCollection];
        v16 = [(ICDocCamViewController *)self imageCache];
        [v32 documentCameraController:self didFinishWithDocInfoCollection:v15 imageCache:v16 warnUser:1];
      }

      else
      {
        v33 = [(ICDocCamViewController *)self imageCache];
        v17 = [(ICDocCamViewController *)self documentInfoCollection];
        v18 = [v17 docInfos];
        v19 = [v18 objectAtIndexedSubscript:0];
        v20 = [v19 croppedAndFilteredImageUUID];
        v21 = [v33 getImage:v20];

        v22 = [(ICDocCamViewController *)self documentInfoCollection];
        v23 = [v22 docInfos];
        v24 = [v23 objectAtIndexedSubscript:0];
        v25 = [v24 metaData];
        v15 = [(ICDocCamViewController *)self createNSDataFrom:v21 metaData:v25];

        [(ICDocCamViewController *)self didFinishWithImage:v15];
        v32 = v21;
      }
    }
  }
}

- (void)enableShutter:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [(ICDocCamViewController *)self shutterButton];
    [v5 setPseudoDisabled:0];
  }

  v6 = [(ICDocCamViewController *)self shutterButton];
  [v6 setUserInteractionEnabled:v3];

  v7 = [(ICDocCamViewController *)self captureEventInteraction];
  [v7 setEnabled:v3];

  if ([objc_opt_class() isLiquidGlassEnabledForCapture])
  {
    v8 = [(ICDocCamViewController *)self liquidGlassEvolutionControlsOverlayViewController];
    [v8 setCaptureButtonEnabled:v3];
  }
}

- (void)dismissFilterUI
{
  v3 = [(ICDocCamViewController *)self processRequestsBlocker];
  [v3 removeBlockerOfType:@"FilterSettingBlocker"];

  [(ICDocCamViewController *)self hideFilterSettingUI];
}

- (void)dismissFlashUI
{
  v3 = [(ICDocCamViewController *)self processRequestsBlocker];
  [v3 removeBlockerOfType:@"FlashSettingBlocker"];

  [(ICDocCamViewController *)self hideFlashSettingUI];
}

- (void)dismissFilterAndFlashUI
{
  [(ICDocCamViewController *)self dismissFilterUI];

  [(ICDocCamViewController *)self dismissFlashUI];
}

- (void)hideShutter:(BOOL)a3
{
  v3 = a3;
  v5 = !a3;
  v6 = [(ICDocCamViewController *)self shutterButton];
  [v6 setAlpha:v5];

  v7 = [(ICDocCamViewController *)self captureEventInteraction];
  [v7 setEnabled:v3];
}

- (void)hideFlashSettingUI
{
  if ([(ICDocCamViewController *)self flashSettingUIShowing])
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __44__ICDocCamViewController_hideFlashSettingUI__block_invoke_3;
      v10[3] = &unk_278F93BA0;
      v10[4] = self;
      v10[5] = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __44__ICDocCamViewController_hideFlashSettingUI__block_invoke_4;
      v9[3] = &unk_278F93B28;
      v9[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v10 animations:v9 completion:0.25];
    }

    else
    {
      v5 = [(ICDocCamViewController *)self topToolbarForIPhone];
      [v5 setHidden:0];

      v6 = [(ICDocCamViewController *)self topToolbarForIPhone];
      [v6 setAlpha:0.0];

      v7 = [(ICDocCamViewController *)self flashSettingView];
      [v7 setAlpha:1.0];

      v8 = [(ICDocCamViewController *)self flashSettingView];
      [v8 setHidden:0];

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __44__ICDocCamViewController_hideFlashSettingUI__block_invoke;
      v12[3] = &unk_278F93AB0;
      v12[4] = self;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __44__ICDocCamViewController_hideFlashSettingUI__block_invoke_2;
      v11[3] = &unk_278F93B28;
      v11[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v12 animations:v11 completion:0.25];
    }
  }
}

void __44__ICDocCamViewController_hideFlashSettingUI__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) flashSettingView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) topToolbarForIPhone];
  [v3 setAlpha:1.0];
}

uint64_t __44__ICDocCamViewController_hideFlashSettingUI__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) flashSettingView];
  [v2 setHidden:1];

  [*(a1 + 32) setFlashSettingUIShowing:0];
  [*(a1 + 32) updateAccessibilityForCurrentFlashMode];
  v3 = *(a1 + 32);

  return [v3 updateAccessibilityFocusForHidingFlashSettingsUI];
}

void __44__ICDocCamViewController_hideFlashSettingUI__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) flashSettingWidthConstraint];
  [v3 setConstant:v2];

  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];
}

uint64_t __44__ICDocCamViewController_hideFlashSettingUI__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setFlashSettingUIShowing:0];
  [*(a1 + 32) updateAccessibilityForCurrentFlashMode];
  v2 = *(a1 + 32);

  return [v2 updateAccessibilityFocusForHidingFlashSettingsUI];
}

- (void)flashButtonCancelUI:(id)a3
{
  [(ICDocCamViewController *)self hideFlashSettingUI];
  v4 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ICDocCamViewController_flashButtonCancelUI___block_invoke;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __46__ICDocCamViewController_flashButtonCancelUI___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) processRequestsBlocker];
  [v1 removeBlockerOfType:@"FlashSettingBlocker"];
}

- (void)changeFlashAction:(id)a3
{
  v4 = a3;
  v5 = [(ICDocCamViewController *)self flashSettingViewOffButton];

  if (v5 == v4)
  {
    [(ICDocCamViewController *)self setFlashMode:0];
    v8 = [(ICDocCamViewController *)self flashButtonImage];
    v9 = [(ICDocCamViewController *)self flashButton];
    [v9 setImage:v8 forState:0];

    v10 = [(ICDocCamViewController *)self flashButton];
    v11 = [MEMORY[0x277D75348] whiteColor];
    [v10 setTintColor:v11];

    v12 = [(ICDocCamViewController *)self flashButtonForIPhone];
    [v12 setImage:v8 forState:0];

    v13 = [(ICDocCamViewController *)self flashButtonForIPhone];
    v14 = [MEMORY[0x277D75348] whiteColor];
    [v13 setTintColor:v14];

    v15 = [(ICDocCamViewController *)self flashButtonForIPhone];
    [v15 setLargeContentImage:v8];

    v16 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
    [v16 setImage:v8 forState:0];

    v17 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
    v18 = [MEMORY[0x277D75348] whiteColor];
    [v17 setTintColor:v18];
  }

  else
  {
    v6 = [(ICDocCamViewController *)self flashSettingViewOnButton];

    if (v6 == v4)
    {
      [(ICDocCamViewController *)self setFlashMode:1];
      v8 = [(ICDocCamViewController *)self flashButtonImage];
      v19 = [(ICDocCamViewController *)self flashButton];
      [v19 setImage:v8 forState:0];

      v20 = [(ICDocCamViewController *)self flashButton];
      v21 = [(ICDocCamViewController *)self cameraHighlightColor];
      [v20 setTintColor:v21];

      v22 = [(ICDocCamViewController *)self flashButtonForIPhone];
      [v22 setImage:v8 forState:0];

      v23 = [(ICDocCamViewController *)self flashButtonForIPhone];
      v24 = [(ICDocCamViewController *)self cameraHighlightColor];
      [v23 setTintColor:v24];

      v25 = [(ICDocCamViewController *)self flashButtonForIPhone];
      [v25 setLargeContentImage:v8];

      v26 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      [v26 setImage:v8 forState:0];

      v17 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      v18 = [(ICDocCamViewController *)self cameraHighlightColor];
      [v17 setTintColor:v18];
    }

    else
    {
      v7 = [(ICDocCamViewController *)self flashSettingViewAutoButton];

      if (v7 != v4)
      {
        v8 = 0;
        goto LABEL_9;
      }

      [(ICDocCamViewController *)self setFlashMode:2];
      v8 = [(ICDocCamViewController *)self flashButtonImage];
      v27 = [(ICDocCamViewController *)self flashButton];
      [v27 setImage:v8 forState:0];

      v28 = [(ICDocCamViewController *)self flashButton];
      v29 = [MEMORY[0x277D75348] whiteColor];
      [v28 setTintColor:v29];

      v30 = [(ICDocCamViewController *)self flashButtonForIPhone];
      [v30 setImage:v8 forState:0];

      v31 = [(ICDocCamViewController *)self flashButtonForIPhone];
      v32 = [MEMORY[0x277D75348] whiteColor];
      [v31 setTintColor:v32];

      v33 = [(ICDocCamViewController *)self flashButtonForIPhone];
      [v33 setLargeContentImage:v8];

      v34 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      [v34 setImage:v8 forState:0];

      v17 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      v18 = [MEMORY[0x277D75348] whiteColor];
      [v17 setTintColor:v18];
    }
  }

LABEL_9:
  v35 = [(ICDocCamViewController *)self flashMode];
  if (v35)
  {
    if (v35 == 1)
    {
      v36 = [(ICDocCamViewController *)self flashSettingViewOnButton];
    }

    else
    {
      if (v35 != 2)
      {
        v37 = 0;
        goto LABEL_17;
      }

      v36 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
    }
  }

  else
  {
    v36 = [(ICDocCamViewController *)self flashSettingViewOffButton];
  }

  v37 = v36;
LABEL_17:
  v38 = [MEMORY[0x277D75348] whiteColor];
  v39 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
  [v39 setTintColor:v38];

  v40 = [MEMORY[0x277D75348] whiteColor];
  v41 = [(ICDocCamViewController *)self flashSettingViewOnButton];
  [v41 setTintColor:v40];

  v42 = [MEMORY[0x277D75348] whiteColor];
  v43 = [(ICDocCamViewController *)self flashSettingViewOffButton];
  [v43 setTintColor:v42];

  v44 = [(ICDocCamViewController *)self cameraHighlightColor];
  [v37 setTintColor:v44];

  [(ICDocCamViewController *)self hideFlashSettingUI];
  v45 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ICDocCamViewController_changeFlashAction___block_invoke;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_after(v45, MEMORY[0x277D85CD0], block);
  [(ICDocCamViewController *)self updateAccessibilityForCurrentFlashMode];
}

void __44__ICDocCamViewController_changeFlashAction___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) processRequestsBlocker];
  [v1 removeBlockerOfType:@"FlashSettingBlocker"];
}

- (void)flashButtonAction:(id)a3
{
  v4 = [(ICDocCamViewController *)self flashAndFilterUISemaphore];
  v5 = dispatch_semaphore_wait(v4, 0);

  if (!v5)
  {
    v6 = [(ICDocCamViewController *)self processRequestsBlocker];
    [v6 addBlockerOfType:@"FlashSettingBlocker" clearRectangles:1 clearQueue:1];

    [(ICDocCamViewController *)self dismissFilterUI];
    v7 = [(ICDocCamViewController *)self userPromptView];
    [v7 setHidden:1];

    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9)
    {
      v10 = [(ICDocCamViewController *)self flashMode];
      if (v10)
      {
        if (v10 == 1)
        {
          v11 = [(ICDocCamViewController *)self flashSettingViewOnButton];
        }

        else
        {
          if (v10 != 2)
          {
            v18 = 0;
            goto LABEL_15;
          }

          v11 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
        }
      }

      else
      {
        v11 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      }

      v18 = v11;
LABEL_15:
      v19 = [MEMORY[0x277D75348] whiteColor];
      v20 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      [v20 setTintColor:v19];

      v21 = [MEMORY[0x277D75348] whiteColor];
      v22 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      [v22 setTintColor:v21];

      v23 = [MEMORY[0x277D75348] whiteColor];
      v24 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      [v24 setTintColor:v23];

      v25 = [(ICDocCamViewController *)self cameraHighlightColor];
      [v18 setTintColor:v25];

      v26 = [(ICDocCamViewController *)self view];
      [v26 layoutIfNeeded];

      v27 = [(ICDocCamViewController *)self flashSettingUIShowing];
      v28 = 0;
      if (!v27)
      {
        [(ICDocCamViewController *)self flashSettingViewWidthForIPad];
      }

      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __44__ICDocCamViewController_flashButtonAction___block_invoke_3;
      v41[3] = &unk_278F93BA0;
      v41[4] = self;
      v41[5] = v28;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __44__ICDocCamViewController_flashButtonAction___block_invoke_4;
      v40[3] = &unk_278F93B28;
      v40[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v41 animations:v40 completion:0.25];
      goto LABEL_23;
    }

    v12 = [(ICDocCamViewController *)self flashButtonImage];
    v13 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
    [v13 setImage:v12 forState:0];

    v14 = [(ICDocCamViewController *)self flashMode];
    if (v14)
    {
      if (v14 == 1)
      {
        v15 = [(ICDocCamViewController *)self flashSettingViewOnButton];
        v16 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
        v17 = [(ICDocCamViewController *)self cameraHighlightColor];
        [v16 setTintColor:v17];
      }

      else
      {
        if (v14 != 2)
        {
          v18 = 0;
          goto LABEL_22;
        }

        v15 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
        v16 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
        v17 = [(ICDocCamViewController *)self cameraHighlightColor];
        [v16 setTintColor:v17];
      }
    }

    else
    {
      v15 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      v16 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      v17 = [MEMORY[0x277D75348] whiteColor];
      [v16 setTintColor:v17];
    }

    v18 = v15;
LABEL_22:
    v29 = [MEMORY[0x277D75348] whiteColor];
    v30 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
    [v30 setTintColor:v29];

    v31 = [MEMORY[0x277D75348] whiteColor];
    v32 = [(ICDocCamViewController *)self flashSettingViewOnButton];
    [v32 setTintColor:v31];

    v33 = [MEMORY[0x277D75348] whiteColor];
    v34 = [(ICDocCamViewController *)self flashSettingViewOffButton];
    [v34 setTintColor:v33];

    v35 = [(ICDocCamViewController *)self cameraHighlightColor];
    [v18 setTintColor:v35];

    v36 = [(ICDocCamViewController *)self flashSettingView];
    [v36 setAlpha:0.0];

    v37 = [(ICDocCamViewController *)self flashSettingView];
    [v37 setHidden:0];

    v38 = [(ICDocCamViewController *)self topToolbarForIPhone];
    [v38 setAlpha:1.0];

    v39 = [(ICDocCamViewController *)self topToolbarForIPhone];
    [v39 setHidden:0];

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __44__ICDocCamViewController_flashButtonAction___block_invoke;
    v43[3] = &unk_278F93AB0;
    v43[4] = self;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __44__ICDocCamViewController_flashButtonAction___block_invoke_2;
    v42[3] = &unk_278F93B28;
    v42[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v43 animations:v42 completion:0.25];

LABEL_23:
  }
}

void __44__ICDocCamViewController_flashButtonAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) flashSettingView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) topToolbarForIPhone];
  [v3 setAlpha:0.0];
}

void __44__ICDocCamViewController_flashButtonAction___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) topToolbarForIPhone];
  [v3 setHidden:0];

  [*(a1 + 32) setFlashSettingUIShowing:{objc_msgSend(*(a1 + 32), "flashSettingUIShowing") ^ 1}];
  v2 = [*(a1 + 32) flashAndFilterUISemaphore];
  dispatch_semaphore_signal(v2);

  [*(a1 + 32) updateAccessibilityForCurrentFlashMode];
  LODWORD(v2) = *MEMORY[0x277D76488];
  v4 = [*(a1 + 32) flashSettingView];
  UIAccessibilityPostNotification(v2, v4);
}

void __44__ICDocCamViewController_flashButtonAction___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) flashSettingWidthConstraint];
  [v3 setConstant:v2];

  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];
}

void __44__ICDocCamViewController_flashButtonAction___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) flashAndFilterUISemaphore];
  dispatch_semaphore_signal(v2);

  [*(a1 + 32) setFlashSettingUIShowing:{objc_msgSend(*(a1 + 32), "flashSettingUIShowing") ^ 1}];
  [*(a1 + 32) updateAccessibilityForCurrentFlashMode];
  LODWORD(v2) = [*(a1 + 32) flashSettingUIShowing];
  v5 = [*(a1 + 32) flashSettingButtonView];
  [v5 setAccessibilityElementsHidden:v2 ^ 1];

  v3 = [*(a1 + 32) flashSettingUIShowing];
  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 flashSettingView];
  }

  else
  {
    [v4 flashButton];
  }
  v6 = ;
  UIAccessibilityPostNotification(*MEMORY[0x277D76488], v6);
}

- (void)image:(id)a3 didFinishSavingWithError:(id)a4 contextInfo:(void *)a5
{
  v5 = a4;
  if (v5)
  {
    v6 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICDocCamViewController image:didFinishSavingWithError:contextInfo:];
    }
  }
}

- (void)didFinishWithImage:(id)a3
{
  v5 = a3;
  v4 = [(ICDocCamViewController *)self delegate];
  [v4 documentCameraController:self didFinishWithImage:v5];
}

- (BOOL)validRect:(id)a3 forImageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = v7;
  if (!v7 || ![v7 count])
  {
    v22 = 0;
    goto LABEL_10;
  }

  v9 = [v8 objectAtIndexedSubscript:0];
  [v9 topLeft];
  v11 = v10;
  [v9 topRight];
  if (v11 >= v12)
  {
    goto LABEL_7;
  }

  [v9 bottomLeft];
  v14 = v13;
  [v9 bottomRight];
  if (v14 >= v15)
  {
    goto LABEL_7;
  }

  [v9 topLeft];
  v17 = v16;
  [v9 bottomLeft];
  if (v17 <= v18)
  {
    goto LABEL_7;
  }

  [v9 topRight];
  v20 = v19;
  [v9 bottomRight];
  if (v20 <= v21)
  {
    goto LABEL_7;
  }

  if ([(ICDocCamViewController *)self useDocumentSegmentation])
  {
LABEL_12:
    v22 = 1;
    goto LABEL_8;
  }

  if (height <= width)
  {
    [(ICDocCamViewController *)self viewBoundsSize];
    v40 = v39;
    [(ICDocCamViewController *)self viewBoundsSize];
    v41 = height / (width / v40);
    v42 = 0.0;
    if (v41 > v43)
    {
      [(ICDocCamViewController *)self viewBoundsSize];
      v42 = (v41 - v44) * 0.5 / v41;
    }

    [v9 topLeft];
    if (v45 >= 0.0)
    {
      [v9 bottomLeft];
      if (v46 >= 0.0)
      {
        [v9 topRight];
        if (v47 <= 1.0)
        {
          [v9 bottomRight];
          if (v48 <= 1.0)
          {
            [v9 topLeft];
            if (v49 <= 1.0 - v42)
            {
              [v9 bottomLeft];
              if (v50 >= v42)
              {
                [v9 topRight];
                if (v51 <= 1.0 - v42)
                {
                  [v9 bottomRight];
                  if (v52 >= v42)
                  {
                    goto LABEL_12;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    [(ICDocCamViewController *)self viewBoundsSize];
    v25 = v24;
    [(ICDocCamViewController *)self viewBoundsSize];
    v26 = width / (height / v25);
    v27 = 0.0;
    if (v26 > v28)
    {
      [(ICDocCamViewController *)self viewBoundsSize];
      v27 = (v26 - v29) * 0.5 / v26;
    }

    [v9 topLeft];
    if (v30 >= v27)
    {
      [v9 bottomLeft];
      if (v31 >= v27)
      {
        [v9 topRight];
        v32 = 1.0 - v27;
        if (v33 <= v32)
        {
          [v9 bottomRight];
          if (v34 <= v32)
          {
            [v9 topLeft];
            if (v35 <= 1.0)
            {
              [v9 bottomLeft];
              if (v36 >= 0.0)
              {
                [v9 topRight];
                if (v37 <= 1.0)
                {
                  [v9 bottomRight];
                  if (v38 >= 0.0)
                  {
                    goto LABEL_12;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_7:
  v22 = 0;
LABEL_8:

LABEL_10:
  return v22;
}

- (BOOL)sufficientlyLarge:(id)a3 forImageSize:(CGSize)a4
{
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [(ICDocCamViewController *)self videoPreviewLayer];
    v8 = [(ICDocCamViewController *)self videoPreviewLayer];
    [v8 frame];
    v10 = v9;
    v11 = [(ICDocCamViewController *)self videoPreviewLayer];
    [v11 frame];
    [v7 metadataOutputRectOfInterestForRect:{0.0, 0.0, v10}];
    v13 = v12;
    v15 = v14;

    v16 = [(ICDocCamViewController *)self videoPreviewLayer];
    v17 = [v16 connection];
    v18 = [v17 videoOrientation];

    if ((v18 - 1) >= 2)
    {
      v19 = v15;
    }

    else
    {
      v19 = v13;
    }

    if ((v18 - 1) >= 2)
    {
      v20 = v13;
    }

    else
    {
      v20 = v15;
    }

    v21 = [v6 objectAtIndexedSubscript:0];
    if ([(ICDocCamViewController *)self useDocumentSegmentation])
    {
      if (![(ICDocCamViewController *)self segmentMeanComputed])
      {
        [v21 confidence];
        v23 = v22;
        [(ICDocCamViewController *)self segmentMinimumVisualConfidence60Frames];
        if (v23 < v24)
        {
          v25 = 0;
LABEL_23:

          goto LABEL_24;
        }
      }

      if ([(ICDocCamViewController *)self segmentMeanComputed])
      {
        [(ICDocCamViewController *)self setSegmentMeanComputed:0];
        v30 = [ICDocCamImageQuad alloc];
        [(ICDocCamViewController *)self segmentBottomLeft];
        v32 = v31;
        v34 = v33;
        [(ICDocCamViewController *)self segmentBottomRight];
        v36 = v35;
        v38 = v37;
        [(ICDocCamViewController *)self segmentTopLeft];
        v40 = v39;
        v42 = v41;
        [(ICDocCamViewController *)self segmentTopRight];
        v45 = [(ICDocCamImageQuad *)v30 initWithBottomLeft:v32 bottomRight:v34 topLeft:v36 topRight:v38, v40, v42, v43, v44];
      }

      else
      {
        v45 = [ICDocCamImageQuad quadFromVNRectangle:v21];
      }

      v26 = v45;
      [(ICDocCamImageQuad *)v45 bounds];
      v29 = 0.3;
    }

    else
    {
      v26 = [ICDocCamImageQuad quadFromVNRectangle:v21];
      [v26 bounds];
      v29 = 0.6;
    }

    v25 = v28 > v19 * v29 || v27 > v20 * v29;

    goto LABEL_23;
  }

  v25 = 0;
LABEL_24:

  return v25;
}

- (BOOL)shouldAutoShoot
{
  v194 = *MEMORY[0x277D85DE8];
  if (![(ICDocCamViewController *)self autoMode])
  {
    return 0;
  }

  if (![(ICDocCamViewController *)self isInRetakeMode])
  {
    v3 = [(ICDocCamViewController *)self delegate];
    v4 = [(ICDocCamViewController *)self documentInfoCollection];
    v5 = [v4 docInfos];
    v6 = [v3 documentCameraController:self canAddImages:{objc_msgSend(v5, "count") + 1}];

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = [(ICDocCamViewController *)self processRequestsBlocker];
  v8 = [v7 blocked];

  if (v8)
  {
    return 0;
  }

  v9 = [(ICDocCamViewController *)self snapStillImageBlocker];
  v10 = [v9 blocked];

  if (v10)
  {
    return 0;
  }

  v11 = [(ICDocCamViewController *)self rectResultsQueue];
  v12 = [v11 size];

  if (!v12)
  {
    v19 = [(ICDocCamViewController *)self overlayView];
    [v19 clearRectangles];

    return 0;
  }

  v13 = [MEMORY[0x277CBEAA8] date];
  v189[0] = 0;
  v189[1] = v189;
  v189[2] = 0x2020000000;
  v190 = 0;
  v187[0] = 0;
  v187[1] = v187;
  v187[2] = 0x2020000000;
  v188 = 0;
  v179 = 0;
  v180 = &v179;
  v181 = 0x4012000000;
  v182 = __Block_byref_object_copy__4;
  v183 = __Block_byref_object_dispose__4;
  v184 = "";
  v186 = 0;
  v185 = 0;
  v178[0] = 0;
  v178[1] = v178;
  v178[2] = 0x4012000000;
  v178[3] = __Block_byref_object_copy__4;
  v178[4] = __Block_byref_object_dispose__4;
  v178[5] = "";
  v178[7] = 0;
  v178[6] = 0;
  v174 = 0;
  v175 = &v174;
  v176 = 0x2020000000;
  v177 = 0;
  v170 = 0;
  v171 = &v170;
  v172 = 0x2020000000;
  v173 = 0;
  v164 = 0;
  v165 = &v164;
  v166 = 0x3032000000;
  v167 = __Block_byref_object_copy__811;
  v168 = __Block_byref_object_dispose__812;
  v169 = [MEMORY[0x277CBEB18] array];
  v158 = 0;
  v159 = &v158;
  v160 = 0x3032000000;
  v161 = __Block_byref_object_copy__811;
  v162 = __Block_byref_object_dispose__812;
  v163 = [MEMORY[0x277CBEB18] array];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__ICDocCamViewController_shouldAutoShoot__block_invoke;
  aBlock[3] = &unk_278F93C18;
  v149 = v187;
  v150 = &v174;
  v151 = v189;
  v152 = &v170;
  v14 = v13;
  v148 = v14;
  v153 = &v179;
  v157 = 1101004800;
  v154 = v178;
  v155 = &v164;
  v156 = &v158;
  v15 = _Block_copy(aBlock);
  v16 = [(ICDocCamViewController *)self rectResultsQueue];
  v17 = [(ICDocCamViewController *)self rectResultsQueue];
  [v16 apply:v15 fromIndex:objc_msgSend(v17 toIndex:{"size") - 1, 0}];

  if (v180[6] <= 20.0 && v180[7] <= 20.0 && (v175[3] & 1) == 0 && v171[6] >= 2.0)
  {
    v21 = [v165[5] count];
    if (!v21)
    {
      goto LABEL_54;
    }

    [(ICDocCamViewController *)self rectangleStabilityStdDev];
    if (v22 == -1.0)
    {
      goto LABEL_54;
    }

    if ([(ICDocCamViewController *)self useDocumentSegmentation])
    {
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v23 = v159[5];
      v24 = [v23 countByEnumeratingWithState:&v143 objects:v193 count:16];
      if (v24)
      {
        v25 = 0;
        v26 = *v144;
        v27 = 0.0;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v144 != v26)
            {
              objc_enumerationMutation(v23);
            }

            [*(*(&v143 + 1) + 8 * i) floatValue];
            v30 = v29;
            v31 = v27 + v29;
            if (v30 < 0.99999)
            {
              ++v25;
              v27 = v31;
            }
          }

          v24 = [v23 countByEnumeratingWithState:&v143 objects:v193 count:16];
        }

        while (v24);
        v32 = v25 + 0.001;
      }

      else
      {
        v27 = 0.0;
        v32 = 0.001;
      }

      [(ICDocCamViewController *)self segmentMinimumVisualConfidence60Frames];
      if ((v27 / v32) < v33)
      {
        goto LABEL_11;
      }
    }

    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v34 = v165[5];
    v35 = [v34 countByEnumeratingWithState:&v139 objects:v192 count:16];
    if (v35)
    {
      v36 = 0.0;
      v132 = 0.0;
      v37 = *v140;
      v129 = 0.0;
      v126 = 0.0;
      v123 = 0.0;
      v121 = 0.0;
      v119 = 0.0;
      v38 = 0.0;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          v117 = v36;
          if (*v140 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v40 = *(*(&v139 + 1) + 8 * j);
          [v40 topLeft];
          v42 = v41;
          [v40 topLeft];
          v44 = v43;
          [v40 topRight];
          v46 = v45;
          [v40 topRight];
          v48 = v47;
          [v40 bottomLeft];
          v50 = v49;
          [v40 bottomLeft];
          v52 = v51;
          [v40 bottomRight];
          v54 = v53;
          [v40 bottomRight];
          v38 = v38 + v42;
          v119 = v119 + v44;
          v121 = v121 + v46;
          v123 = v123 + v48;
          v126 = v126 + v50;
          v129 = v129 + v52;
          v132 = v132 + v54;
          v36 = v117 + v55;
        }

        v35 = [v34 countByEnumeratingWithState:&v139 objects:v192 count:16];
      }

      while (v35);
    }

    else
    {
      v36 = 0.0;
      v132 = 0.0;
      v129 = 0.0;
      v126 = 0.0;
      v123 = 0.0;
      v121 = 0.0;
      v119 = 0.0;
      v38 = 0.0;
    }

    v107 = v119 / v21;
    v108 = v38 / v21;
    v105 = v123 / v21;
    v106 = v121 / v21;
    v103 = v129 / v21;
    v104 = v126 / v21;
    v100 = v21;
    v101 = v36 / v21;
    v102 = v132 / v21;
    if ([(ICDocCamViewController *)self useDocumentSegmentation])
    {
      [(ICDocCamViewController *)self setSegmentTopLeft:v108, v107, v21, v56];
      [(ICDocCamViewController *)self setSegmentTopRight:v106, v105];
      [(ICDocCamViewController *)self setSegmentBottomLeft:v104, v103];
      [(ICDocCamViewController *)self setSegmentBottomRight:v102, v101];
      [(ICDocCamViewController *)self setSegmentMeanComputed:1];
    }

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v57 = v165[5];
    v58 = [v57 countByEnumeratingWithState:&v135 objects:v191 count:16];
    *(&v59 + 1) = 0;
    v124 = 0u;
    v127 = 0u;
    v130 = 0u;
    if (v58)
    {
      *&v59 = 0;
      v131 = v59;
      *&v59 = 0;
      v116 = v59;
      v60 = *v136;
      *&v59 = 0;
      v128 = v59;
      *&v59 = 0;
      v118 = v59;
      *&v59 = 0;
      v125 = v59;
      *&v59 = 0;
      v120 = v59;
      *&v59 = 0;
      v134 = v59;
      *&v59 = 0;
      v122 = v59;
      do
      {
        v61 = 0;
        do
        {
          if (*v136 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v62 = *(*(&v135 + 1) + 8 * v61);
          [v62 topLeft];
          v115 = v63;
          [v62 topLeft];
          v114 = v64;
          [v62 topLeft];
          v113 = v65;
          [v62 topLeft];
          v112 = v66;
          [v62 topRight];
          v111 = v67;
          [v62 topRight];
          v110 = v68;
          [v62 topRight];
          v109 = v69;
          [v62 topRight];
          v71 = v70;
          [v62 bottomLeft];
          v73 = v72;
          [v62 bottomLeft];
          v75 = v74;
          [v62 bottomLeft];
          v77 = v76;
          [v62 bottomLeft];
          v79 = v78;
          [v62 bottomRight];
          v81 = v80;
          [v62 bottomRight];
          v83 = v82;
          [v62 bottomRight];
          v85 = v84;
          [v62 bottomRight];
          *(&v86 + 1) = *(&v122 + 1);
          *&v86 = *&v122 + (v115 - v108) * (v114 - v108);
          v122 = v86;
          *(&v86 + 1) = *(&v134 + 1);
          *&v86 = *&v134 + (v113 - v107) * (v112 - v107);
          v134 = v86;
          *(&v86 + 1) = *(&v120 + 1);
          *&v86 = *&v120 + (v111 - v106) * (v110 - v106);
          v120 = v86;
          *(&v86 + 1) = *(&v125 + 1);
          *&v86 = *&v125 + (v109 - v105) * (v71 - v105);
          v125 = v86;
          *(&v86 + 1) = *(&v118 + 1);
          *&v86 = *&v118 + (v73 - v104) * (v75 - v104);
          v118 = v86;
          *(&v86 + 1) = *(&v128 + 1);
          *&v86 = *&v128 + (v77 - v103) * (v79 - v103);
          v128 = v86;
          *(&v86 + 1) = *(&v116 + 1);
          *&v86 = *&v116 + (v81 - v102) * (v83 - v102);
          v116 = v86;
          ++v61;
          *(&v88 + 1) = *(&v131 + 1);
          *&v88 = *&v131 + (v85 - v101) * (v87 - v101);
          v131 = v88;
        }

        while (v58 != v61);
        v58 = [v57 countByEnumeratingWithState:&v135 objects:v191 count:16];
      }

      while (v58);
      *&v89.f64[0] = v131;
      *&v89.f64[1] = v116;
      v130 = v89;
      *&v89.f64[0] = v128;
      *&v89.f64[1] = v118;
      v127 = v89;
      *&v89.f64[0] = v125;
      *&v89.f64[1] = v120;
      v124 = v89;
      *&v89.f64[0] = v134;
      *&v89.f64[1] = v122;
      v133 = v89;
    }

    [(ICDocCamViewController *)self rectangleStabilityStdDev];
    v91 = v90;
    if ([(ICDocCamViewController *)self useDocumentSegmentation])
    {
      [(ICDocCamViewController *)self segmentStabilityStdDev];
      v91 = v92;
    }

    v93 = vdupq_lane_s64(*&v100, 0);
    v94 = vsqrtq_f64(vdivq_f64(v133, v93));
    v95 = vsqrtq_f64(vdivq_f64(v124, v93));
    v96 = vsqrtq_f64(vdivq_f64(v127, v93));
    v97 = vsqrtq_f64(vdivq_f64(v130, v93));
    v98 = vbslq_s8(vcgtq_f64(v97, v96), v97, v96);
    v99 = vbslq_s8(vcgtq_f64(v98, v95), v98, v95);
    *&v99.f64[0] = vmovn_s64(vcgtq_f64(vbslq_s8(vcgtq_f64(v99, v94), v99, v94), vdupq_lane_s64(COERCE__INT64(v91), 0)));
    if (((HIDWORD(v99.f64[0]) | LODWORD(v99.f64[0])) & 1) == 0)
    {
LABEL_54:
      v18 = 1;
      goto LABEL_12;
    }

    [(ICDocCamViewController *)self setSegmentMeanComputed:0];
  }

LABEL_11:
  v18 = 0;
LABEL_12:

  _Block_object_dispose(&v158, 8);
  _Block_object_dispose(&v164, 8);

  _Block_object_dispose(&v170, 8);
  _Block_object_dispose(&v174, 8);
  _Block_object_dispose(v178, 8);
  _Block_object_dispose(&v179, 8);
  _Block_object_dispose(v187, 8);
  _Block_object_dispose(v189, 8);

  return v18;
}

uint64_t __41__ICDocCamViewController_shouldAutoShoot__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  ++*(*(*(a1 + 40) + 8) + 24);
  v4 = [v3 objectForKey:@"Rectangles"];
  v5 = v4;
  if (!v4 || ![v4 count])
  {
    v10 = 0;
    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_23;
  }

  v6 = *(*(a1 + 56) + 8);
  if (*(v6 + 24))
  {
    v7 = [v3 valueForKey:@"RecognitionTime"];
    [*(a1 + 32) timeIntervalSinceDate:v7];
    *&v8 = v8;
    *(*(*(a1 + 64) + 8) + 24) = LODWORD(v8);
    v9 = *(*(*(a1 + 64) + 8) + 24);

    if (v9 > 2.0)
    {
      v10 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    *(v6 + 24) = 1;
  }

  v11 = [v3 valueForKey:@"RegistrationAlignmentVector"];
  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = [MEMORY[0x277CBEB68] null];

  if (v11 == v12)
  {
    goto LABEL_21;
  }

  [v11 CGVectorValue];
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 48);
  v17 = -v13;
  if (v13 >= 0.0)
  {
    v17 = v13;
  }

  if (v16 < v17)
  {
    v16 = v17;
  }

  *(v15 + 48) = v16;
  v18 = *(*(a1 + 72) + 8);
  v19 = *(v18 + 56);
  v20 = -v14;
  if (v14 >= 0.0)
  {
    v20 = v14;
  }

  if (v19 < v20)
  {
    v19 = v20;
  }

  *(v18 + 56) = v19;
  *(*(*(a1 + 80) + 8) + 48) = v13 + *(*(*(a1 + 80) + 8) + 48);
  *(*(*(a1 + 80) + 8) + 56) = v14 + *(*(*(a1 + 80) + 8) + 56);
  v21 = *(*(a1 + 72) + 8);
  v22 = *(a1 + 104);
  if (*(v21 + 48) <= v22 && *(v21 + 56) <= v22)
  {
LABEL_21:
    v23 = [v5 objectAtIndexedSubscript:0];
    v24 = objc_alloc_init(ICDocCamImageQuad);
    [v23 topLeft];
    [(ICDocCamImageQuad *)v24 setTopLeft:?];
    [v23 topRight];
    [(ICDocCamImageQuad *)v24 setTopRight:?];
    [v23 bottomLeft];
    [(ICDocCamImageQuad *)v24 setBottomLeft:?];
    [v23 bottomRight];
    [(ICDocCamImageQuad *)v24 setBottomRight:?];
    [*(*(*(a1 + 88) + 8) + 40) addObject:v24];
    v25 = MEMORY[0x277CCABB0];
    v26 = [v5 objectAtIndexedSubscript:0];
    [v26 confidence];
    v27 = [v25 numberWithFloat:?];

    [*(*(*(a1 + 96) + 8) + 40) addObject:v27];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

LABEL_23:
  return v10;
}

- (id)cropAndFilterImage:(id)a3 rects:(id)a4 filterType:(signed __int16)a5 constantColor:(BOOL)a6
{
  v40 = a5;
  v41 = a6;
  v8 = a3;
  v9 = a4;
  v10 = [v8 CGImage];
  Width = CGImageGetWidth(v10);
  Height = CGImageGetHeight(v10);
  v13 = objc_autoreleasePoolPush();
  if (v9 && [v9 count])
  {
    v14 = [v9 objectAtIndexedSubscript:0];
    if (v14)
    {
      v15 = v14;
      v39 = v14;
      [v14 topLeft];
      v17 = v16;
      v19 = v18;
      [v15 topRight];
      v21 = v20;
      v23 = v22;
      [v15 bottomLeft];
      v25 = v24;
      v27 = v26;
      [v15 bottomRight];
      v30 = [[ICDocCamImageQuad alloc] initWithBottomLeft:v25 bottomRight:v27 topLeft:v28 topRight:v29, v17, v19, v21, v23];
      v31 = [(ICDocCamImageQuad *)v30 imageQuadByScalingBy:Width, Height];
      [v31 topLeft];
      [v31 topRight];
      [v31 bottomLeft];
      [v31 bottomRight];
      v38 = [objc_alloc(MEMORY[0x277CBF758]) initWithCGImage:v10];
      v32 = [(ICDocCamViewController *)self sharedCoreImageContext];
      v33 = [ICDocCamImageFilters perspectiveCorrectedCIImageFromCIImage:v38 imageQuad:v31];
      [v33 extent];
      v34 = [v32 createCGImage:v33 fromRect:?];
      if (v34)
      {
        v35 = [MEMORY[0x277D755B8] imageWithCGImage:v34];
        CGImageRelease(v34);
      }

      else
      {
        v35 = 0;
      }

      v14 = v39;
    }

    else
    {
      v35 = 0;
      v30 = 0;
    }
  }

  else
  {
    v35 = 0;
    v30 = 0;
  }

  objc_autoreleasePoolPop(v13);
  if (!v35)
  {
    v35 = v8;
  }

  v36 = [ICDocCamImageFilters filteredImage:v35 orientation:0 imageFilterType:v40 constantColor:v41];

  return v36;
}

- (void)saveCapturedImage:(id)a3 metaData:(id)a4 rects:(id)a5 constantColor:(BOOL)a6 completionHandler:(id)a7
{
  v134 = a6;
  v135 = a3;
  v137 = a4;
  v11 = a5;
  v136 = a7;
  v12 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamViewController saveCapturedImage:metaData:rects:constantColor:completionHandler:];
  }

  if (-[ICDocCamViewController isInRetakeMode](self, "isInRetakeMode") || (-[ICDocCamViewController delegate](self, "delegate"), v13 = objc_claimAutoreleasedReturnValue(), -[ICDocCamViewController documentInfoCollection](self, "documentInfoCollection"), v14 = objc_claimAutoreleasedReturnValue(), [v14 docInfos], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v13, "documentCameraController:canAddImages:", self, objc_msgSend(v15, "count") + 1), v15, v14, v13, (v16 & 1) != 0))
  {
    v17 = objc_opt_class();
    v18 = DCDynamicCast(v17, v135);
    if (v18)
    {
      [MEMORY[0x277D75D18] setAnimationsEnabled:0];
      v19 = [(ICDocCamViewController *)self saveButton];
      v20 = [(ICDocCamViewController *)self documentInfoCollection];
      v21 = [v20 docInfos];
      [v19 setDocumentCount:{objc_msgSend(v21, "count") + 1}];

      [MEMORY[0x277D75D18] setAnimationsEnabled:1];
      [(ICDocCamViewController *)self updateThumbnailContainerViewConstraintConstantForIPad];
      v22 = [(ICDocCamViewController *)self documentInfoCollection];
      v23 = [v22 docInfos];
      v24 = [v23 count];

      if (!v24)
      {
        [(ICDocCamViewController *)self setDoneButtonVisible:1];
        v25 = [(ICDocCamViewController *)self saveButton];
        [v25 setEnabled:0];

        v26 = [(ICDocCamViewController *)self saveButton];
        [v26 setAlpha:0.0];

        v163[0] = MEMORY[0x277D85DD0];
        v163[1] = 3221225472;
        v163[2] = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke;
        v163[3] = &unk_278F93AB0;
        v163[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v163 animations:0.15];
      }

      if ([(ICDocCamViewController *)self isInRetakeMode])
      {
        v27 = [(ICDocCamViewController *)self statusBarOrientation];
        v28 = [(ICDocCamViewController *)self view];
        v29 = [v28 window];
        [ICDocCamExtractedDocumentViewController targetRectForOrientation:v27 window:v29];
        v31 = v30;
        v33 = v32;
      }

      else
      {
        [(ICDocCamViewController *)self targetViewRect];
        v31 = v35;
        v33 = v36;
      }

      if (v11)
      {
        if (![v11 count])
        {
          goto LABEL_27;
        }

        v37 = [v11 objectAtIndexedSubscript:0];
        if (!v37)
        {
          goto LABEL_27;
        }

        [v18 size];
        v132 = v38;
        [v18 size];
        v130 = v39;
        [v37 topLeft];
        v126 = v41;
        v128 = v40;
        [v37 topRight];
        v43 = v42;
        v45 = v44;
        [v37 bottomLeft];
        v47 = v46;
        v49 = v48;
        [v37 bottomRight];
        v52 = [[ICDocCamImageQuad alloc] initWithBottomLeft:v47 bottomRight:v49 topLeft:v50 topRight:v51, v128, v126, v43, v45];
        v53 = [(ICDocCamImageQuad *)v52 imageQuadByScalingBy:v132, v130];
        [v53 bounds];
        if (v54 / v55 < v31 / v33)
        {
          v56 = v33 / v55;
        }

        else
        {
          v56 = v31 / v54;
        }

        if (MGGetProductType() != 1737882206)
        {
          v57 = [MEMORY[0x277D759A0] mainScreen];
          [v57 scale];
          v56 = v56 * v58;
        }

        v59 = [ICDocCamUtilities resizedImage:v18 newSize:3 interpolationQuality:v56 * v132, v56 * v130];

        v131 = v59;
        if (!v59)
        {
LABEL_27:
          v131 = v18;
        }

        if ([v11 count])
        {
          v60 = [v11 objectAtIndexedSubscript:0];
          v61 = v60;
          if (v60)
          {
            [v60 topLeft];
            v63 = v62;
            v65 = v64;
            [v61 topRight];
            v67 = v66;
            v69 = v68;
            [v61 bottomLeft];
            v71 = v70;
            v73 = v72;
            [v61 bottomRight];
            v75 = v74;
            v77 = v76;
          }

          else
          {
            v71 = 0.0;
            v77 = 1.0;
            v75 = 1.0;
            v73 = 1.0;
            v69 = 0.0;
            v67 = 1.0;
            v65 = 0.0;
            v63 = 0.0;
          }

          goto LABEL_35;
        }
      }

      else
      {
        v131 = v18;
      }

      v71 = 0.0;
      v77 = 1.0;
      v75 = 1.0;
      v73 = 1.0;
      v69 = 0.0;
      v67 = 1.0;
      v65 = 0.0;
      v63 = 0.0;
LABEL_35:
      v133 = [[ICDocCamImageQuad alloc] initWithBottomLeft:v71 bottomRight:v73 topLeft:v75 topRight:v77, v63, v65, v67, v69];
      v129 = [(ICDocCamViewController *)self defaultFilter];
      v161[0] = 0;
      v161[1] = v161;
      v161[2] = 0x3032000000;
      v161[3] = __Block_byref_object_copy__811;
      v161[4] = __Block_byref_object_dispose__812;
      v162 = 0;
      if ([(ICDocCamViewController *)self isInRetakeMode])
      {
        v78 = 0;
      }

      else
      {
        objc_initWeak(&location, self);
        v79 = [(ICDocCamViewController *)self saveButton];
        [v79 setEnabled:0];

        v80 = MEMORY[0x277D75D18];
        v158[0] = MEMORY[0x277D85DD0];
        v158[1] = 3221225472;
        v158[2] = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_2;
        v158[3] = &unk_278F93C40;
        objc_copyWeak(&v159, &location);
        [v80 animateWithDuration:v158 animations:0.15];
        v81 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v78 = dispatch_queue_create("com.apple.documentcamera.cropped-and-filtered-image", v81);

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_3;
        block[3] = &unk_278F93C68;
        v154 = v161;
        objc_copyWeak(&v155, &location);
        v152 = v18;
        v153 = v11;
        v156 = v129;
        v157 = v134;
        dispatch_async(v78, block);

        objc_destroyWeak(&v155);
        objc_destroyWeak(&v159);
        objc_destroyWeak(&location);
      }

      v82 = [(ICDocCamViewController *)self cropAndFilterImage:v131 rects:v11 filterType:[(ICDocCamViewController *)self defaultFilter] constantColor:v134];
      v127 = v78;
      v83 = [(ICDocCamViewController *)self snapshotSpinnerQueue];
      v150[0] = MEMORY[0x277D85DD0];
      v150[1] = 3221225472;
      v150[2] = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_4;
      v150[3] = &unk_278F93AB0;
      v150[4] = self;
      dispatch_sync(v83, v150);

      v84 = [ICDocCamDocumentInfo alloc];
      v85 = [(ICDocCamViewController *)self delegate];
      v86 = [(ICDocCamDocumentInfo *)v84 initWithDelegate:v85];

      [(ICDocCamDocumentInfo *)v86 setCurrentFilter:[(ICDocCamViewController *)self defaultFilter]];
      [(ICDocCamDocumentInfo *)v86 setMetaData:v137];
      [(ICDocCamDocumentInfo *)v86 setImageQuad:v133];
      v87 = [(ICDocCamViewController *)self imageCache];
      v88 = [v87 setImage:v82 metaData:v137 addToMemoryCache:1 completion:0];
      [(ICDocCamDocumentInfo *)v86 setMeshAnimImageUUID:v88];

      [(ICDocCamDocumentInfo *)v86 setCroppedAndFilteredImageUUID:0];
      [(ICDocCamDocumentInfo *)v86 setCroppedButNotFilteredImageUUID:0];
      v89 = [(ICDocCamViewController *)self imageCache];
      v90 = [v89 setImage:v18 metaData:v137];
      [(ICDocCamDocumentInfo *)v86 setFullImageUUID:v90];

      [(ICDocCamDocumentInfo *)v86 setConstantColor:v134];
      v91 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
      {
        [ICDocCamViewController saveCapturedImage:metaData:rects:constantColor:completionHandler:];
      }

      v92 = [(ICDocCamViewController *)self overlayView];
      [v92 setHidden:1];

      v93 = [(ICDocCamViewController *)self retakeIndex];
      if ([(ICDocCamViewController *)self isInRetakeMode])
      {
        [(ICDocCamViewController *)self stopImageCaptureSession];
        v94 = [(ICDocCamViewController *)self statusBarOrientation];
        v95 = [(ICDocCamViewController *)self view];
        v96 = [v95 window];
        [ICDocCamExtractedDocumentViewController targetRectForOrientation:v94 window:v96];
        v98 = v97;
        v100 = v99;
        v102 = v101;
        v104 = v103;
      }

      else
      {
        [(ICDocCamViewController *)self targetViewRect];
        v98 = v105;
        v100 = v106;
        v102 = v107;
        v104 = v108;
      }

      v109 = [(ICDocCamViewController *)self videoPreviewLayer];
      [v109 rectForMetadataOutputRectOfInterest:{0.0, 0.0, 1.0, 1.0}];
      v111 = v110;
      v113 = v112;
      v115 = v114;
      v117 = v116;

      v118 = [(ICDocCamViewController *)self previewView];
      v119 = [(ICDocCamViewController *)self scrimView];
      v120 = [(ICDocCamViewController *)self imageMeshTransformWithImage:v82 backgroundImage:v18 imageViewFrame:v133 imageQuad:v118 previewView:v119 previewBounds:v98 scrimView:v100, v102, v104, v111, v113, v115, v117];

      v138[0] = MEMORY[0x277D85DD0];
      v138[1] = v125;
      v138[2] = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_827;
      v138[3] = &unk_278F93D58;
      v138[4] = self;
      v121 = v18;
      v139 = v121;
      v140 = v11;
      v148 = v129;
      v149 = v134;
      v122 = v86;
      v141 = v122;
      v147 = v93;
      v142 = v137;
      v143 = v120;
      v145 = v136;
      v123 = v127;
      v144 = v123;
      v146 = v161;
      v124 = v120;
      [v124 startWithCompletionBlock:v138];

      _Block_object_dispose(v161, 8);
      v18 = v121;
      goto LABEL_44;
    }

    [(ICDocCamViewController *)self restartImageCaptureSessionIfNecessary];
    if (v136)
    {
      v136[2](0.5);
    }

    v34 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [ICDocCamViewController saveCapturedImage:metaData:rects:constantColor:completionHandler:];
    }
  }

  else
  {
    [(ICDocCamViewController *)self warnAboutMaxScansIfNecessary];
    v18 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [ICDocCamViewController saveCapturedImage:metaData:rects:constantColor:completionHandler:];
    }
  }

LABEL_44:
}

void __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) saveButton];
  [v1 setAlpha:0.25];
}

void __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained saveButton];
  [v1 setAlpha:0.25];
}

void __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained cropAndFilterImage:*(a1 + 32) rects:*(a1 + 40) filterType:*(a1 + 64) constantColor:*(a1 + 66)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_4(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_5;
  block[3] = &unk_278F93AB0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setAwaitingSnapshotCompletion:0];
  v2 = [*(a1 + 32) snapshotSpinner];
  [v2 hide];
}

void __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_827(uint64_t a1)
{
  if ([*(a1 + 32) isInRetakeMode])
  {
    v2 = [*(a1 + 32) cropAndFilterImage:*(a1 + 40) rects:*(a1 + 48) filterType:*(a1 + 112) constantColor:*(a1 + 114)];
    v3 = [*(a1 + 32) imageCache];
    v4 = [v3 setImage:v2 metaData:*(a1 + 64)];
    [*(a1 + 56) setCroppedAndFilteredImageUUID:v4];

    v5 = *(a1 + 104);
    v6 = [*(a1 + 32) isInRetakeMode];
    v7 = *(a1 + 32);
    if (v6)
    {
      [v7 disableRetakeMode];
      v8 = *(a1 + 56);
      v9 = [*(a1 + 32) documentInfoCollection];
      v10 = [v9 docInfos];
      [v10 setObject:v8 atIndexedSubscript:*(a1 + 104)];
    }

    else
    {
      v24 = [v7 documentInfoCollection];
      v25 = [v24 docInfos];
      v5 = [v25 count];

      v26 = [*(a1 + 32) documentInfoCollection];
      v27 = [v26 docInfos];
      [v27 addObject:*(a1 + 56)];

      v9 = [*(a1 + 32) saveButton];
      [v9 setHidden:{objc_msgSend(objc_opt_class(), "isLiquidGlassEnabledForCapture")}];
    }

    v11 = [*(a1 + 32) documentInfoCollection];
    [v11 bumpModificationDate];

    v28 = [ICDocCamExtractedDocumentViewController alloc];
    v29 = *(a1 + 32);
    v30 = [v29 documentInfoCollection];
    v31 = [*(a1 + 32) imageCache];
    v32 = [(ICDocCamExtractedDocumentViewController *)v28 initWithDelegate:v29 documentInfoCollection:v30 imageCache:v31 currentIndex:v5 mode:0];

    objc_initWeak(&location, *(a1 + 32));
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_2_828;
    v51[3] = &unk_278F93CB8;
    objc_copyWeak(&v55, &location);
    v52 = v32;
    v53 = *(a1 + 72);
    v54 = *(a1 + 88);
    v33 = v32;
    dispatch_async(MEMORY[0x277D85CD0], v51);

    objc_destroyWeak(&v55);
    objc_destroyWeak(&location);
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v12 = +[DCSettings sharedSettings];
    v13 = [v12 finishAfterFirstScan];

    if (v13)
    {
      [*(a1 + 32) addNewDocument:*(a1 + 56)];
      v14 = *(a1 + 80);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_4_830;
      block[3] = &unk_278F93D08;
      v15 = &v46;
      v46 = *(a1 + 56);
      objc_copyWeak(&v50, &location);
      v49 = *(a1 + 96);
      v16 = *(a1 + 64);
      v17 = *(a1 + 32);
      v47 = v16;
      v48 = v17;
      dispatch_async(v14, block);

      objc_destroyWeak(&v50);
    }

    else
    {
      v18 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_827_cold_1();
      }

      v19 = [*(a1 + 32) thumbnailViewController];
      v20 = *(a1 + 56);
      v35 = MEMORY[0x277D85DD0];
      v36 = 3221225472;
      v37 = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_832;
      v38 = &unk_278F93D30;
      v39 = *(a1 + 80);
      v40 = *(a1 + 56);
      objc_copyWeak(&v44, &location);
      v43 = *(a1 + 96);
      v21 = *(a1 + 64);
      v22 = *(a1 + 32);
      v41 = v21;
      v42 = v22;
      [v19 addNewDocument:v20 completionBlock:&v35];

      [*(a1 + 72) hide];
      v15 = &v39;

      objc_destroyWeak(&v44);
    }

    [*(a1 + 32) clearRectangles];
    v23 = [*(a1 + 32) overlayView];
    [v23 setHidden:0];

    (*(*(a1 + 88) + 16))(0.5);
    [*(a1 + 32) speakScannedDocumentForAccessibilityIfNecessary];
    objc_destroyWeak(&location);
  }

  v34 = [*(a1 + 32) imageCache];
  [v34 clearInMemoryCache];
}

void __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_2_828(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = objc_loadWeakRetained((a1 + 56));
  v3 = *(a1 + 32);
  v11[0] = v2;
  v11[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_3_829;
  v7[3] = &unk_278F93C90;
  objc_copyWeak(&v10, (a1 + 56));
  v5 = *MEMORY[0x277CDA928];
  v6 = *MEMORY[0x277CDA948];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  [v2 setViewControllers:v4 type:v5 subtype:v6 duration:v7 completion:0.25];

  objc_destroyWeak(&v10);
}

uint64_t __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_3_829(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained clearRectangles];

  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = [v3 overlayView];
  [v4 setHidden:0];

  [*(a1 + 32) hide];
  v5 = *(*(a1 + 40) + 16);
  v6.n128_u64[0] = 0.5;

  return v5(v6);
}

void __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_4_830(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_5_831;
  block[3] = &unk_278F93D08;
  v5 = *(a1 + 32);
  objc_copyWeak(&v9, (a1 + 64));
  v8 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_5_831(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained imageCache];
  v4 = [v3 setImage:*(*(*(a1 + 56) + 8) + 40) metaData:*(a1 + 40)];
  [*(a1 + 32) setCroppedAndFilteredImageUUID:v4];

  v5 = objc_loadWeakRetained((a1 + 64));
  v6 = [v5 saveButton];
  [v6 setEnabled:1];

  [*(a1 + 48) setDoneButtonVisible:1];
  v7 = objc_loadWeakRetained((a1 + 64));
  v8 = [v7 scrimView];
  [v8 setHidden:1];

  v9 = objc_loadWeakRetained((a1 + 64));
  v10 = [v9 saveButton];
  [v10 setAlpha:1.0];

  v11 = [MEMORY[0x277D75348] blackColor];
  v12 = objc_loadWeakRetained((a1 + 64));
  v13 = [v12 view];
  v14 = [v13 superview];
  [v14 setBackgroundColor:v11];

  v15 = MEMORY[0x277D75D18];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_6;
  v18[3] = &unk_278F93C40;
  objc_copyWeak(&v19, (a1 + 64));
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_7;
  v16[3] = &unk_278F93CE0;
  objc_copyWeak(&v17, (a1 + 64));
  [v15 animateWithDuration:v18 animations:v16 completion:0.4];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
}

void __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained view];
  [v1 setAlpha:0.0];
}

void __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained saveAction:0];
}

void __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_832(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_2_833;
  block[3] = &unk_278F93D08;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  objc_copyWeak(&v10, (a1 + 72));
  v9 = *(a1 + 64);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  dispatch_async(v2, block);

  objc_destroyWeak(&v10);
}

void __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_2_833(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_3_834;
  block[3] = &unk_278F93D08;
  v5 = *(a1 + 32);
  objc_copyWeak(&v9, (a1 + 64));
  v8 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_3_834(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained imageCache];
  v4 = [v3 setImage:*(*(*(a1 + 56) + 8) + 40) metaData:*(a1 + 40)];
  [*(a1 + 32) setCroppedAndFilteredImageUUID:v4];

  v5 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = [v6 croppedAndFilteredImageUUID];
    __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_3_834_cold_1(v6, v7, buf, v5);
  }

  v8 = objc_loadWeakRetained((a1 + 64));
  v9 = [v8 saveButton];
  [v9 setEnabled:1];

  [*(a1 + 48) setDoneButtonVisible:1];
  v10 = objc_loadWeakRetained((a1 + 64));
  v11 = [v10 scrimView];
  [v11 setHidden:1];

  v12 = MEMORY[0x277D75D18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_835;
  v13[3] = &unk_278F93C40;
  objc_copyWeak(&v14, (a1 + 64));
  [v12 animateWithDuration:v13 animations:0.15];
  objc_destroyWeak(&v14);
}

void __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_835(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained saveButton];
  [v1 setAlpha:1.0];
}

- (id)detectRectanglesRequest
{
  if ([(ICDocCamViewController *)self useDocumentSegmentation])
  {
    v3 = objc_alloc_init(MEMORY[0x277CE2C68]);
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x277CE2CB0]);
    [(ICDocCamViewController *)self rectangleMinimumAspectRatio];
    [v3 setMinimumAspectRatio:?];
    [(ICDocCamViewController *)self rectangleMaximumAspectRatio];
    [v3 setMaximumAspectRatio:?];
    [v3 setMaximumObservations:{-[ICDocCamViewController rectangleMaximumNumber](self, "rectangleMaximumNumber")}];
    [(ICDocCamViewController *)self rectangleMinimumConfidence];
    [v3 setMinimumConfidence:?];
    [(ICDocCamViewController *)self rectangleQuadratureTolerance];
    [v3 setQuadratureTolerance:?];
    [v3 setRequiredVersion:2];
  }

  return v3;
}

- (unsigned)imageOrientationFromDevice
{
  v3 = [(ICDocCamViewController *)self videoDeviceInput];
  v4 = [v3 device];
  v5 = [v4 position];

  v6 = [(ICDocCamViewController *)self accelerometer];
  v7 = [v6 currentDeviceOrientation];

  if ((v7 - 5) <= 1)
  {
    v7 = [(ICDocCamViewController *)self statusBarOrientation];
  }

  if (v5 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (v5 == 2)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  if (v7 != 4)
  {
    v9 = 1;
  }

  if (v7 != 3)
  {
    v8 = v9;
  }

  if (v5 == 2)
  {
    v10 = 7;
  }

  else
  {
    v10 = 6;
  }

  if (v5 == 2)
  {
    v11 = 5;
  }

  else
  {
    v11 = 8;
  }

  if (v7 == 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v7 == 1)
  {
    v12 = v10;
  }

  if (v7 <= 2)
  {
    return v12;
  }

  else
  {
    return v8;
  }
}

- (void)detectRectanglesAndSaveCapturedImage:(__CVBuffer *)a3 metadata:(id)a4 constantColor:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v200[2] = *MEMORY[0x277D85DE8];
  v179 = a4;
  v182 = a6;
  v10 = [(ICDocCamViewController *)self imageOrientationFromDevice];
  v11 = [(ICDocCamViewController *)self videoPreviewLayer];
  v12 = [v11 connection];
  v13 = [v12 videoOrientation];

  v14 = [(ICDocCamViewController *)self accelerometer];
  v15 = [v14 currentDeviceOrientation];

  if ((v15 - 1) >= 4)
  {
    v16 = v13;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(MEMORY[0x277CBF2C0] + 16);
  *&v195.a = *MEMORY[0x277CBF2C0];
  *&v195.c = v17;
  *&v195.tx = *(MEMORY[0x277CBF2C0] + 32);
  if (v16 == 1)
  {
    CGAffineTransformMakeRotation(&v195, -1.57079633);
  }

  else
  {
    if (v16 == 2)
    {
      v18 = 1.57079633;
    }

    else if (v16 == 4)
    {
      v18 = -3.14159265;
    }

    else
    {
      v18 = 0.0;
    }

    CGAffineTransformMakeRotation(&v194, v18);
    v195 = v194;
  }

  v19 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:a3];
  v177 = v7;
  v194 = v195;
  v183 = [v19 imageByApplyingTransform:&v194];

  [v183 extent];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v176 = [(ICDocCamViewController *)self sharedCoreImageContext];
  v28 = [v176 createCGImage:v183 fromRect:{v21, v23, v25, v27}];
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v31 = Height;
  if (Width <= Height)
  {
    v32 = Height;
  }

  else
  {
    v32 = Width;
  }

  [(ICDocCamViewController *)self streamingImageSize];
  v34 = v33;
  [(ICDocCamViewController *)self streamingImageSize];
  if (v34 < v35)
  {
    v34 = v35;
  }

  v36 = [(ICDocCamViewController *)self cameraIntrinsicData];
  v37 = v36 == 0;

  *&v38 = v32 / v34;
  v180 = v38;
  if (v37)
  {
    memset(&v194, 0, sizeof(v194));
    v46 = objc_opt_class();
    [(ICDocCamViewController *)self pixelFocalLength];
    *&v47 = v31;
    HIDWORD(v48) = HIDWORD(v180);
    *&v48 = *&v180 * v49;
    *&v50 = Width;
    [v46 cameraIntrinsicMatrixForWidth:v50 height:v47 pixelFocalLength:v48];
    LODWORD(v194.b) = v51;
    LODWORD(v194.d) = v52;
    v194.a = v53;
    v194.c = v54;
    LODWORD(v194.ty) = v55;
    v194.tx = v56;
    v57 = CFDataCreate(*MEMORY[0x277CBECE8], &v194, 48);
    v58 = *MEMORY[0x277CE3038];
    v198[0] = v57;
    v59 = *MEMORY[0x277CE3030];
    v197[0] = v58;
    v197[1] = v59;
    v60 = [(ICDocCamViewController *)self sharedCoreImageContext];
    v198[1] = v60;
    v181 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v198 forKeys:v197 count:2];
  }

  else
  {
    v39 = [(ICDocCamViewController *)self cameraIntrinsicData];
    [v39 getBytes:&v194 length:48];

    *bytes = 0u;
    v192 = 0u;
    v193 = 0u;
    v40 = vmulq_n_f32(*&v194.a, *&v180);
    v41 = vmulq_n_f32(*&v194.c, *&v180);
    *&bytes[8] = v40.i32[2];
    DWORD2(v192) = v41.i32[2];
    *bytes = v40.i64[0];
    *&v192 = v41.i64[0];
    DWORD2(v193) = 1065353216;
    *&v193 = vmulq_n_f32(*&v194.tx, *&v180).u64[0];
    v42 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 48);
    v43 = *MEMORY[0x277CE3038];
    v200[0] = v42;
    v44 = *MEMORY[0x277CE3030];
    v199[0] = v43;
    v199[1] = v44;
    v45 = [(ICDocCamViewController *)self sharedCoreImageContext];
    v200[1] = v45;
    v181 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v200 forKeys:v199 count:2];
  }

  v178 = [objc_alloc(MEMORY[0x277CE2D50]) initWithCVPixelBuffer:a3 orientation:v10 options:v181];
  v61 = [(ICDocCamViewController *)self detectRectanglesRequest];
  v196 = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v196 count:1];
  v190 = 0;
  v63 = [v178 performRequests:v62 error:&v190];
  v175 = v190;

  v64 = [MEMORY[0x277D755B8] imageWithCGImage:v28];
  v65 = [v61 results];
  if (([(ICDocCamViewController *)self statusBarOrientation]- 3) > 1)
  {
    [v64 size];
    v68 = v69;
    [v64 size];
    v66 = v70;
  }

  else
  {
    [v64 size];
    v68 = v67;
  }

  if ([(ICDocCamViewController *)self validRect:v65 forImageSize:v68, v66])
  {
    if (!-[ICDocCamViewController useDocumentSegmentation](self, "useDocumentSegmentation") || ([v65 objectAtIndexedSubscript:0], v71 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v71, "confidence"), v73 = v72, v71, -[ICDocCamViewController segmentMinimumVisualConfidenceFinalScan](self, "segmentMinimumVisualConfidenceFinalScan"), v75 = 0, v73 < 0.99999) && v73 > v74)
    {
      v75 = v65;
    }
  }

  else
  {
    v75 = 0;
  }

  v76 = [(ICDocCamViewController *)self lastHighConfidenceRectangle];
  if (v76)
  {
    v77 = [(ICDocCamViewController *)self overlayView];
    if (([v77 rectangleIsActive] & 1) == 0)
    {

LABEL_37:
      goto LABEL_38;
    }

    v78 = [v75 firstObject];
    v79 = v78 == 0;

    if (!v79)
    {
      v80 = [(ICDocCamViewController *)self lastHighConfidenceRectangle];
      [v80 boundingBox];
      v82 = v81;
      v84 = v83;
      v86 = v85;
      v88 = v87;

      v89 = [v75 firstObject];
      [v89 boundingBox];
      v91 = v90;
      v93 = v92;
      v95 = v94;
      v97 = v96;

      v201.origin.x = v82;
      v201.origin.y = v84;
      v201.size.width = v86;
      v201.size.height = v88;
      v202.origin.x = v91;
      v202.origin.y = v93;
      v202.size.width = v95;
      v202.size.height = v97;
      if (!CGRectIntersectsRect(v201, v202))
      {

        v76 = os_log_create("com.apple.documentcamera", "");
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v194.a) = 0;
          _os_log_impl(&dword_249253000, v76, OS_LOG_TYPE_DEFAULT, "The detected rectangle doesn't intersect with the last visible rectangle", &v194, 2u);
        }

        v75 = 0;
        goto LABEL_37;
      }
    }
  }

LABEL_38:
  if (v63 && -[ICDocCamViewController autoMode](self, "autoMode") && -[ICDocCamViewController snapStillImageMode](self, "snapStillImageMode") == 1 && ([v75 firstObject], v98 = objc_claimAutoreleasedReturnValue(), v99 = v98 == 0, v98, !v99))
  {
    if ([(ICDocCamViewController *)self useDocumentSegmentation])
    {
      v100 = [v75 objectAtIndexedSubscript:0];
      [v100 topLeft];
      v173 = v101;
      v174 = v102;
      [v100 topRight];
      v171 = v103;
      v172 = v104;
      [v100 bottomLeft];
      v170 = v105;
      v107 = v106;
      [v100 bottomRight];
      v110 = v171;
      v167 = v108;
      v168 = v107;
      v111 = v108;
      if (v110 >= v111)
      {
        v112 = v171;
      }

      else
      {
        v112 = v108;
      }

      v113 = v173;
      v114 = v170;
      if (v114 < v113)
      {
        v113 = v170;
      }

      v165 = v113;
      v166 = v112;
      v115 = v174;
      v116 = v172;
      if (v115 >= v116)
      {
        v117 = v174;
      }

      else
      {
        v117 = v172;
      }

      v118 = v107;
      v169 = v109;
      v119 = v109;
      if (v119 < v118)
      {
        v118 = v119;
      }

      v163 = v118;
      v164 = v117;
      [(ICDocCamViewController *)self segmentationFudgeFactor];
      v121 = v120;
      [(ICDocCamViewController *)self segmentationFudgeFactor];
      v123 = v122;
      [(ICDocCamViewController *)self segmentationFudgeFactor];
      v125 = v124;
      [(ICDocCamViewController *)self segmentationFudgeFactor];
      v127 = v126;
      [(ICDocCamViewController *)self segmentationFudgeFactor];
      v129 = v128;
      [(ICDocCamViewController *)self segmentationFudgeFactor];
      v131 = v130;
      [(ICDocCamViewController *)self segmentationFudgeFactor];
      v133 = v132;
      [(ICDocCamViewController *)self segmentationFudgeFactor];
      v135 = v134;
      v136 = [ICDocCamImageQuad alloc];
      v137 = v173 - ((v166 - v165) * v121);
      v138 = fmaxf(v137, 0.0001);
      v139 = v174 + ((v164 - v163) * v123);
      v140 = fminf(v139, 0.9999);
      v141 = v171 + ((v166 - v165) * v125);
      v142 = fminf(v141, 0.9999);
      v143 = v172 + ((v164 - v163) * v127);
      v144 = fminf(v143, 0.9999);
      v145 = v170 - ((v166 - v165) * v129);
      v146 = v168 - ((v164 - v163) * v131);
      v147 = v167 + ((v166 - v165) * v133);
      v148 = v169 - ((v164 - v163) * v135);
      v149 = [(ICDocCamImageQuad *)v136 initWithBottomLeft:fmaxf(v145 bottomRight:0.0001) topLeft:fmaxf(v146 topRight:0.0001), fminf(v147, 0.9999), fmaxf(v148, 0.0001), v138, v140, v142, v144];
      v150 = [MEMORY[0x277CBEB18] array];
      [v150 addObject:v149];
      [(ICDocCamViewController *)self saveCapturedImage:v64 metaData:v179 rects:v150 constantColor:v177 completionHandler:v182];
    }

    else
    {
      [(ICDocCamViewController *)self saveCapturedImage:v64 metaData:v179 rects:v75 constantColor:v177 completionHandler:v182];
    }
  }

  else
  {
    v151 = [(ICDocCamViewController *)self snapshotSpinnerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__ICDocCamViewController_detectRectanglesAndSaveCapturedImage_metadata_constantColor_completionHandler___block_invoke;
    block[3] = &unk_278F93AB0;
    block[4] = self;
    dispatch_sync(v151, block);

    v152 = [v75 firstObject];
    v153 = [ICDocCamImageQuad quadFromVNRectangle:v152];

    if (!v153)
    {
      v154 = [(ICDocCamViewController *)self backupQuad];
      v155 = v154 == 0;

      if (v155)
      {
        v153 = 0;
      }

      else
      {
        v156 = [(ICDocCamViewController *)self backupQuad];
        v157 = os_log_create("com.apple.documentcamera", "");
        if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v194.a) = 0;
          _os_log_impl(&dword_249253000, v157, OS_LOG_TYPE_DEFAULT, "No Quad found in image, falling back to visible quad at shutter press", &v194, 2u);
        }

        v153 = v156;
      }
    }

    v158 = [(ICDocCamViewController *)self userPromptView];
    [v158 setHidden:1];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __104__ICDocCamViewController_detectRectanglesAndSaveCapturedImage_metadata_constantColor_completionHandler___block_invoke_839;
    aBlock[3] = &unk_278F93DA8;
    aBlock[4] = self;
    v185 = v75;
    v188 = v177;
    v186 = v179;
    v187 = v182;
    v159 = _Block_copy(aBlock);
    v160 = [[ICDocCamImageQuadEditViewController alloc] initWithImage:v64 quad:v153 scanDataDelegate:0 orientation:0 completionHandler:v159];
    [(ICDocCamImageQuadEditViewController *)v160 setInCaptureMode:1];
    [(ICDocCamViewController *)self setUseCustomRecropTransition:0];
    v161 = [(ICDocCamViewController *)self navigationController];
    [v161 setDelegate:0];

    v162 = [(ICDocCamImageQuadEditViewController *)v160 navigationController];
    [v162 setDelegate:0];

    [(ICDocCamImageQuadEditViewController *)v160 setEdgesForExtendedLayout:15];
    [(ICDocCamImageQuadEditViewController *)v160 setExtendedLayoutIncludesOpaqueBars:1];
    [(ICDocCamViewController *)self pushViewController:v160 type:*MEMORY[0x277CDA928] subtype:*MEMORY[0x277CDA948] duration:0 completion:0.5];
  }

  CGImageRelease(v28);
  [(ICDocCamViewController *)self setBackupQuad:0];
}

void __104__ICDocCamViewController_detectRectanglesAndSaveCapturedImage_metadata_constantColor_completionHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__ICDocCamViewController_detectRectanglesAndSaveCapturedImage_metadata_constantColor_completionHandler___block_invoke_2;
  block[3] = &unk_278F93AB0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __104__ICDocCamViewController_detectRectanglesAndSaveCapturedImage_metadata_constantColor_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAwaitingSnapshotCompletion:0];
  v2 = [*(a1 + 32) snapshotSpinner];
  [v2 hide];
}

void __104__ICDocCamViewController_detectRectanglesAndSaveCapturedImage_metadata_constantColor_completionHandler___block_invoke_839(uint64_t a1, char a2, void *a3, void *a4, int a5)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (a5)
  {
    v11 = [*(a1 + 32) cropAndFilterImage:v9 rects:*(a1 + 40) filterType:objc_msgSend(*(a1 + 32) constantColor:{"defaultFilter"), *(a1 + 64)}];
    v12 = [ICDocCamDocumentInfo alloc];
    v13 = [*(a1 + 32) delegate];
    v14 = [(ICDocCamDocumentInfo *)v12 initWithDelegate:v13];

    -[ICDocCamDocumentInfo setCurrentFilter:](v14, "setCurrentFilter:", [*(a1 + 32) defaultFilter]);
    [(ICDocCamDocumentInfo *)v14 setMetaData:*(a1 + 48)];
    [(ICDocCamDocumentInfo *)v14 setImageQuad:v10];
    [(ICDocCamDocumentInfo *)v14 setMeshAnimImageUUID:0];
    v15 = [*(a1 + 32) imageCache];
    v16 = [v15 setImage:v11 metaData:*(a1 + 48)];
    [(ICDocCamDocumentInfo *)v14 setCroppedAndFilteredImageUUID:v16];

    [(ICDocCamDocumentInfo *)v14 setCroppedButNotFilteredImageUUID:0];
    v17 = [*(a1 + 32) imageCache];
    v18 = [v17 setImage:v9 metaData:*(a1 + 48)];
    [(ICDocCamDocumentInfo *)v14 setFullImageUUID:v18];

    [(ICDocCamDocumentInfo *)v14 setConstantColor:*(a1 + 64)];
    v19 = [*(a1 + 32) documentInfoCollection];
    v20 = [v19 docInfos];
    [v20 addObject:v14];

    v21 = [*(a1 + 32) saveButton];
    [v21 setHidden:0];

    v22 = [*(a1 + 32) documentInfoCollection];
    [v22 bumpModificationDate];

    v23 = [*(a1 + 32) snapshotSpinnerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__ICDocCamViewController_detectRectanglesAndSaveCapturedImage_metadata_constantColor_completionHandler___block_invoke_2_840;
    block[3] = &unk_278F93AB0;
    block[4] = *(a1 + 32);
    dispatch_sync(v23, block);
  }

  else
  {
    [*(a1 + 32) clearRectangles];
    if (a2)
    {
      if ([*(a1 + 32) isInRetakeMode])
      {
        v24 = *(a1 + 32);
        v25 = *(a1 + 48);
        v42[0] = v10;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
        [v24 saveCapturedImage:v9 metaData:v25 rects:v26 constantColor:*(a1 + 64) completionHandler:*(a1 + 56)];
      }

      else
      {
        objc_initWeak(&location, *(a1 + 32));
        v30 = MEMORY[0x277D85DD0];
        v31 = 3221225472;
        v32 = __104__ICDocCamViewController_detectRectanglesAndSaveCapturedImage_metadata_constantColor_completionHandler___block_invoke_4;
        v33 = &unk_278F93D80;
        objc_copyWeak(&v38, &location);
        v34 = v9;
        v35 = *(a1 + 48);
        v36 = v10;
        v39 = *(a1 + 64);
        v37 = *(a1 + 56);
        [*(a1 + 32) setSessionStartNotificationBlock:&v30];
        v27 = [*(a1 + 32) previewView];
        v28 = [v27 layer];
        LODWORD(v29) = 1.0;
        [v28 setOpacity:v29];

        [*(a1 + 32) restartImageCaptureSessionIfNecessary];
        objc_destroyWeak(&v38);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      (*(*(a1 + 56) + 16))(1.0);
      [*(a1 + 32) popViewController:*MEMORY[0x277CDA928] subtype:*MEMORY[0x277CDA948] duration:0 completion:0.5];
      [*(a1 + 32) retakeButtonWasPressed];
    }
  }
}

void __104__ICDocCamViewController_detectRectanglesAndSaveCapturedImage_metadata_constantColor_completionHandler___block_invoke_2_840(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__ICDocCamViewController_detectRectanglesAndSaveCapturedImage_metadata_constantColor_completionHandler___block_invoke_3;
  block[3] = &unk_278F93AB0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __104__ICDocCamViewController_detectRectanglesAndSaveCapturedImage_metadata_constantColor_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAwaitingSnapshotCompletion:0];
  v2 = [*(a1 + 32) snapshotSpinner];
  [v2 hide];
}

void __104__ICDocCamViewController_detectRectanglesAndSaveCapturedImage_metadata_constantColor_completionHandler___block_invoke_4(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained popViewController:*MEMORY[0x277CDA928] subtype:*MEMORY[0x277CDA948] duration:0 completion:0.28];

  v3 = objc_loadWeakRetained((a1 + 64));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = *(a1 + 48);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 saveCapturedImage:v4 metaData:v5 rects:v6 constantColor:*(a1 + 72) completionHandler:*(a1 + 56)];
}

- (void)snapStillImageWithMode:(int64_t)a3
{
  v5 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamViewController snapStillImageWithMode:];
  }

  v6 = [(ICDocCamViewController *)self processRequestsBlocker];
  v7 = [v6 blocked];

  if ((v7 & 1) == 0)
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = [(ICDocCamViewController *)v8 snapStillImageBlocker];
    v10 = [v9 blocked];

    if (v10)
    {
      objc_sync_exit(v8);
    }

    else
    {
      v11 = [(ICDocCamViewController *)v8 snapStillImageBlocker];
      [v11 addBlockerOfType:@"SnapStillImageBlocker" clearRectangles:0 clearQueue:1];

      v12 = [(ICDocCamViewController *)v8 processRequestsBlocker];
      [v12 addBlockerOfType:@"SnapshotDelayBlocker" clearRectangles:0 clearQueue:0];

      objc_sync_exit(v8);
      v13 = [(ICDocCamViewController *)v8 inProgressPhotoCaptureDelegates];
      v14 = [v13 count];

      v15 = os_log_create("com.apple.documentcamera", "");
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
      if (v14)
      {
        if (v16)
        {
          [ICDocCamViewController snapStillImageWithMode:];
        }

        [(ICDocCamViewController *)v8 clearQueue];
      }

      else
      {
        if (v16)
        {
          [ICDocCamViewController snapStillImageWithMode:];
        }

        [(ICDocCamViewController *)v8 setSnapStillImageMode:a3];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__ICDocCamViewController_snapStillImageWithMode___block_invoke;
        block[3] = &unk_278F93AB0;
        block[4] = v8;
        dispatch_async(MEMORY[0x277D85CD0], block);
        v17 = [(ICDocCamViewController *)v8 videoPreviewLayer];
        v18 = [v17 connection];
        v19 = [v18 videoOrientation];

        v20 = [(ICDocCamViewController *)v8 sessionQueue];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_2;
        v22[3] = &unk_278F93BA0;
        v22[4] = v8;
        v22[5] = v19;
        dispatch_async(v20, v22);

        v21 = [MEMORY[0x277CBEAA8] date];
        [(ICDocCamViewController *)v8 setLastAXPositionAnnouncementDate:v21];
      }
    }
  }
}

uint64_t __49__ICDocCamViewController_snapStillImageWithMode___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.2];
  [*(a1 + 32) enableShutter:0];
  v2 = MEMORY[0x277CD9FF0];

  return [v2 commit];
}

void __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_2(uint64_t a1)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) photoOutput];
  v3 = [v2 connectionWithMediaType:*MEMORY[0x277CE5EA8]];

  [v3 setVideoOrientation:*(a1 + 40)];
  if ([v3 isCameraIntrinsicMatrixDeliverySupported])
  {
    [v3 setCameraIntrinsicMatrixDeliveryEnabled:1];
  }

  v4 = [*(a1 + 32) photoOutput];
  if ([v4 isFlashScene])
  {

LABEL_6:
    v6 = MEMORY[0x277CE5B30];
    v46 = *MEMORY[0x277CC4E30];
    v47 = &unk_285C6D528;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v8 = [v6 photoSettingsWithFormat:v7];

    v9 = [*(a1 + 32) photoOutput];
    v10 = [v9 supportedFlashModes];

    for (i = 0; [v10 count] > i; ++i)
    {
      v12 = [v10 objectAtIndexedSubscript:i];
      v13 = [v12 integerValue];
      LODWORD(v13) = v13 == [*(a1 + 32) flashMode];

      if (v13)
      {
        [v8 setFlashMode:{objc_msgSend(*(a1 + 32), "flashMode")}];
      }
    }

    if ([*(a1 + 32) flashMode] && objc_msgSend(*(a1 + 32), "isConstantColorAvailable"))
    {
      [v8 setConstantColorEnabled:1];
      [v8 setConstantColorFallbackPhotoDeliveryEnabled:1];
    }

    goto LABEL_19;
  }

  v5 = [*(a1 + 32) flashMode];

  if (v5 == 1)
  {
    goto LABEL_6;
  }

  v14 = MEMORY[0x277CBEB18];
  v15 = [*(a1 + 32) photoOutput];
  v10 = [v14 arrayWithCapacity:{objc_msgSend(v15, "maxBracketedCapturePhotoCount")}];

  v16 = 0;
  v17 = *MEMORY[0x277CE58A8];
  while (1)
  {
    v18 = [*(a1 + 32) photoOutput];
    v19 = [v18 maxBracketedCapturePhotoCount];

    if (v19 <= v16)
    {
      break;
    }

    LODWORD(v20) = v17;
    v21 = [MEMORY[0x277CE5AA8] autoExposureSettingsWithExposureTargetBias:v20];
    [v10 addObject:v21];

    ++v16;
  }

  v22 = MEMORY[0x277CE5B20];
  v48 = *MEMORY[0x277CC4E30];
  v49[0] = &unk_285C6D528;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v8 = [v22 photoBracketSettingsWithRawPixelFormatType:0 processedFormat:v23 bracketedSettings:v10];

  v24 = [*(a1 + 32) photoOutput];
  v25 = [v24 isLensStabilizationDuringBracketedCaptureSupported];

  if (v25)
  {
    [v8 setLensStabilizationEnabled:1];
  }

LABEL_19:

  [v8 setHighResolutionPhotoEnabled:1];
  [v8 setPreviewPhotoFormat:0];
  v26 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v27 = [v26 BOOLForKey:@"internalSettings.docCam.imageStabilization.disabled"];

  if (v27)
  {
    [v8 setPhotoQualityPrioritization:1];
  }

  objc_initWeak(&location, *(a1 + 32));
  v28 = [ICDocCamPhotoCaptureDelegate alloc];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_3;
  v44[3] = &unk_278F93AB0;
  v44[4] = *(a1 + 32);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_6;
  v42[3] = &unk_278F93E48;
  objc_copyWeak(&v43, &location);
  v42[4] = *(a1 + 32);
  v29 = [(ICDocCamPhotoCaptureDelegate *)v28 initWithRequestedPhotoSettings:v8 willCapturePhotoAnimation:v44 completed:v42];
  v30 = [*(a1 + 32) inProgressPhotoCaptureDelegates];
  v31 = MEMORY[0x277CCABB0];
  v32 = [(ICDocCamPhotoCaptureDelegate *)v29 requestedPhotoSettings];
  v33 = [v31 numberWithLongLong:{objc_msgSend(v32, "uniqueID")}];
  [v30 setObject:v29 forKeyedSubscript:v33];

  [*(a1 + 32) setAwaitingSnapshotCompletion:1];
  v34 = dispatch_time(0, 0);
  v35 = [*(a1 + 32) snapshotSpinnerQueue];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_852;
  v41[3] = &unk_278F93AB0;
  v41[4] = *(a1 + 32);
  dispatch_after(v34, v35, v41);

  v36 = [*(a1 + 32) photoOutput];
  if (![v36 isConstantColorSupported])
  {
    goto LABEL_27;
  }

  v37 = [*(a1 + 32) photoOutput];
  if (([v37 isConstantColorEnabled] & 1) == 0)
  {

LABEL_27:
    goto LABEL_28;
  }

  v38 = [v8 isConstantColorEnabled];

  if (v38)
  {
    v39 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_2_cold_2();
    }

    goto LABEL_30;
  }

LABEL_28:
  v39 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_2_cold_1();
  }

LABEL_30:

  v40 = [*(a1 + 32) photoOutput];
  [v40 capturePhotoWithSettings:v8 delegate:v29];

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

void __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_4;
  block[3] = &unk_278F93AB0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) videoPreviewLayer];
  [v2 setOpacity:0.0];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_5;
  v4[3] = &unk_278F93AB0;
  v4[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.25];
}

void __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) videoPreviewLayer];
  LODWORD(v2) = 1.0;
  v3 = v1;
  [v1 setOpacity:v2];
}

void __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_6(uint64_t a1, void *a2, __CVBuffer *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v13 = [v11 objectForKey:@"constantColorPhoto"];
    v14 = [v13 BOOLValue];

    v15 = [v9 requestedPhotoSettings];
    v16 = [v15 uniqueID];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_7;
    v20[3] = &unk_278F93E20;
    v17 = *(a1 + 32);
    v20[4] = WeakRetained;
    v20[5] = v17;
    v20[6] = a3;
    v20[7] = v16;
    v18 = _Block_copy(v20);
    CVPixelBufferRetain(a3);
    if (a3)
    {
      [*(a1 + 32) detectRectanglesAndSaveCapturedImage:a3 metadata:v10 constantColor:v14 completionHandler:v18];
    }

    else
    {
      v19 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_6_cold_1();
      }

      v18[2](v18, 0.5);
    }
  }
}

void __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_7(uint64_t a1, double a2)
{
  CVPixelBufferRelease(*(a1 + 48));
  v4 = [*(a1 + 32) sessionQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_8;
  v5[3] = &unk_278F93DF8;
  v7 = a2;
  v6 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v8 = *(a1 + 56);
  dispatch_async(v4, v5);
}

void __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_8(uint64_t a1)
{
  v2 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_9;
  block[3] = &unk_278F93DD0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

void __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) setSnapStillImageMode:0];
  [*(a1 + 32) enableShutterButtonIfPossible];
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [v3 documentInfoCollection];
  v5 = [v4 docInfos];
  LODWORD(v3) = [v2 documentCameraController:v3 canAddImages:{objc_msgSend(v5, "count") + 1}];

  if (v3 && [*(a1 + 32) autoMode])
  {
    v6 = [DCLocalization localizedStringForKey:@"Ready for next scan." value:@"Ready for next scan." table:@"Localizable"];
    v7 = [*(a1 + 32) userPromptLabel];
    [v7 setText:v6];

    v8 = [*(a1 + 32) userPromptView];
    [v8 setHidden:0];

    v9 = [*(a1 + 32) userPromptView];
    [v9 setAlpha:0.0];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_10;
    v14[3] = &unk_278F93AB0;
    v15 = *(a1 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_11;
    v13[3] = &unk_278F93B28;
    v13[4] = v15;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v14 options:v13 animations:0.2 completion:0.0];
  }

  v10 = dispatch_time(0, 300000000);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_13;
  v12[3] = &unk_278F93BA0;
  v11 = *(a1 + 48);
  v12[4] = *(a1 + 40);
  v12[5] = v11;
  dispatch_after(v10, MEMORY[0x277D85CD0], v12);
}

void __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_10(uint64_t a1)
{
  v1 = [*(a1 + 32) userPromptView];
  [v1 setAlpha:1.0];
}

void __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_11(uint64_t a1)
{
  [*(a1 + 32) setHideUserPrompt:0];
  v2 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_12;
  block[3] = &unk_278F93AB0;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

void __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_12(uint64_t a1)
{
  v2 = [*(a1 + 32) userPromptLabel];
  v1 = [v2 text];
  UIAccessibilityPostNotification(*MEMORY[0x277D76438], v1);
}

void __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_13(uint64_t a1)
{
  v3 = [*(a1 + 32) inProgressPhotoCaptureDelegates];
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 40)];
  [v3 setObject:0 forKeyedSubscript:v2];

  v4 = [*(a1 + 32) snapStillImageBlocker];
  [v4 removeBlockerOfType:@"SnapStillImageBlocker"];

  v5 = [*(a1 + 32) processRequestsBlocker];
  [v5 removeBlockerOfType:@"SnapshotDelayBlocker"];
}

void __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_852(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_2_853;
  block[3] = &unk_278F93AB0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_2_853(uint64_t a1)
{
  if ([*(a1 + 32) awaitingSnapshotCompletion])
  {
    v2 = [*(a1 + 32) snapshotSpinner];
    [v2 show];
  }
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v37[2] = *MEMORY[0x277D85DE8];
  v7 = a5;
  if ([(ICDocCamViewController *)self scanMovieRecordingEnabled])
  {
    v8 = [(ICDocCamViewController *)self movieController];
    [v8 recordFrame:a4 fromConnection:v7];
  }

  [(ICDocCamViewController *)self setCameraIntrinsicData:0];
  if (![v7 isCameraIntrinsicMatrixDeliverySupported])
  {
    v11 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0].value) = 0;
      _os_log_impl(&dword_249253000, v11, OS_LOG_TYPE_INFO, "Camera intrinsic matrix delivery is not supported.", buf, 2u);
    }

    goto LABEL_12;
  }

  if (![v7 isCameraIntrinsicMatrixDeliveryEnabled])
  {
    v11 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0].value) = 0;
      _os_log_impl(&dword_249253000, v11, OS_LOG_TYPE_INFO, "Camera intrinsic matrix delivery is disabled.", buf, 2u);
    }

LABEL_12:

    goto LABEL_13;
  }

  [(ICDocCamViewController *)self setCameraIntrinsicData:CMGetAttachment(a4, *MEMORY[0x277CC06B0], 0)];
  v9 = [(ICDocCamViewController *)self cameraIntrinsicData];

  if (v9)
  {
    v10 = [(ICDocCamViewController *)self cameraIntrinsicData];
    [v10 getBytes:buf length:48];
  }

LABEL_13:
  if (a4)
  {
    if ([(ICDocCamViewController *)self adjustingFocus])
    {
      goto LABEL_15;
    }

    v12 = [(ICDocCamViewController *)self processRequestsBlocker];
    v13 = [v12 blocked];

    if (v13)
    {
      goto LABEL_26;
    }

    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = [(ICDocCamViewController *)self lastSubjectAreaChange];
    [v14 timeIntervalSinceDate:v15];
    v17 = v16;

    if (v17 < 1.0)
    {
LABEL_15:
      [(ICDocCamViewController *)self clearRectangles];
      [(ICDocCamViewController *)self clearQueue];
    }

    else
    {
      [(ICDocCamViewController *)self streamingImageSize];
      if (v19 == *MEMORY[0x277CBF3A8] && v18 == *(MEMORY[0x277CBF3A8] + 8))
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(a4);
        CVPixelBufferLockBaseAddress(ImageBuffer, 0);
        Width = CVPixelBufferGetWidth(ImageBuffer);
        [(ICDocCamViewController *)self setStreamingImageSize:Width, CVPixelBufferGetHeight(ImageBuffer)];
        CVPixelBufferUnlockBaseAddress(ImageBuffer, 0);
      }

      v22 = CMCopyDictionaryOfAttachments(0, a4, 1u);
      v23 = CMGetAttachment(a4, *MEMORY[0x277CC06B0], 0);
      v24 = [(__CFDictionary *)v22 valueForKey:*MEMORY[0x277CF3F30]];
      v25 = v24;
      if (v24)
      {
        v26 = [v24 valueForKey:*MEMORY[0x277CF5018]];
        [v26 floatValue];
        [(ICDocCamViewController *)self setPixelFocalLength:?];
      }

      v27 = CMSampleBufferGetImageBuffer(a4);
      if (v27)
      {
        memset(buf, 0, 24);
        CMSampleBufferGetOutputPresentationTimeStamp(buf, a4);
        v28 = [(ICDocCamViewController *)self imageOrientationFromDevice];
        v36[0] = @"ICDocCamImageSequenceFrame_Timestamp";
        v34 = buf[0];
        v29 = CMTimeCopyAsDictionary(&v34, 0);
        v37[0] = v29;
        v36[1] = @"ICDocCamImageSequenceFrame_Orientation";
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v28];
        v37[1] = v30;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];

        v32 = [(ICDocCamViewController *)self detectRectanglesRequest];
        v33 = [(ICDocCamViewController *)self vkAnalyzer];
        [(ICDocCamViewController *)self pixelFocalLength];
        [v33 addFrame:v27 metaData:v22 frameOptions:v31 rectangleRequest:v32 pixelFocalLength:v23 cameraIntrinsicData:?];
      }
    }
  }

LABEL_26:
}

- (void)clearRectangles
{
  v2 = [(ICDocCamViewController *)self overlayView];
  [v2 clearRectangles];
}

- (void)clearQueue
{
  v2 = [(ICDocCamViewController *)self rectResultsQueue];
  [v2 clear];
}

- (void)analyzerCallbackWithDictionaryResults:(id)a3
{
  v74[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(ICDocCamViewController *)self isInRetakeMode])
  {
    v5 = [(ICDocCamViewController *)self delegate];
    v6 = [(ICDocCamViewController *)self documentInfoCollection];
    v7 = [v6 docInfos];
    if ([v5 documentCameraController:self canAddImages:{objc_msgSend(v7, "count") + 1}])
    {
    }

    else
    {
      v8 = [(ICDocCamViewController *)self didWarnAboutMaxScans];

      if (v8)
      {
        goto LABEL_47;
      }
    }
  }

  v9 = [(ICDocCamViewController *)self processRequestsBlocker];
  v10 = [v9 blocked];

  if ((v10 & 1) == 0)
  {
    v11 = [(ICDocCamViewController *)self snapStillImageBlocker];
    v12 = [v11 blocked];

    if ((v12 & 1) == 0)
    {
      v13 = [v4 objectForKeyedSubscript:@"ICDocCamImageSequenceAnalyzerResults"];
      if (v13)
      {
        v14 = [(ICDocCamViewController *)self videoPreviewLayer];
        [v14 rectForMetadataOutputRectOfInterest:{0.0, 0.0, 1.0, 1.0}];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v23 = [(ICDocCamViewController *)self overlayView];
        [v23 setPreviewBounds:{v16, v18, v20, v22}];

        v24 = [v4 objectForKeyedSubscript:@"ICDocCamImageSequenceFrame_Timestamp"];
        v25 = [v4 objectForKeyedSubscript:@"ICDocCamImageSequenceFrame_MetaData"];

        if (v25)
        {
          v70 = [v4 objectForKeyedSubscript:@"ICDocCamImageSequenceFrame_MetaData"];
        }

        else
        {
          v70 = 0;
        }

        v27 = [v13 objectForKeyedSubscript:@"ICDocCamImageSequenceAnalyzer_Rectangles"];
        if (([(ICDocCamViewController *)self statusBarOrientation]- 3) > 1)
        {
          [(ICDocCamViewController *)self streamingImageSize];
          v29 = v32;
          [(ICDocCamViewController *)self streamingImageSize];
          v31 = v33;
        }

        else
        {
          [(ICDocCamViewController *)self streamingImageSize];
          v29 = v28;
          v31 = v30;
        }

        if ([(ICDocCamViewController *)self validRect:v27 forImageSize:v29, v31])
        {
          [(ICDocCamViewController *)self didRecognizeRectangleForAccessibility:1];
          if (v27)
          {
            v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v73[0] = @"Rectangles";
            v73[1] = @"Timestamp";
            v74[0] = v27;
            v74[1] = v24;
            v73[2] = @"RecognitionTime";
            v35 = [MEMORY[0x277CBEAA8] date];
            v74[2] = v35;
            v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:3];
            [v34 addEntriesFromDictionary:v36];

            v37 = [(ICDocCamViewController *)self rectResultsQueue];
            [v37 enqueue:v34];

            v38 = [(ICDocCamViewController *)self rectResultsQueue];
            v39 = [v38 size] > 250;

            if (v39)
            {
              v40 = [(ICDocCamViewController *)self rectResultsQueue];
              v41 = [v40 dequeue];
            }

            if ([(ICDocCamViewController *)self debugRectanglesEnabled])
            {
              v42 = [(ICDocCamViewController *)self overlayView];
              [v42 setDocumentQuad:0];

              v43 = [(ICDocCamViewController *)self overlayView];
              [v43 setDebugRects:v27];

              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __64__ICDocCamViewController_analyzerCallbackWithDictionaryResults___block_invoke;
              block[3] = &unk_278F93AB0;
              block[4] = self;
              dispatch_async(MEMORY[0x277D85CD0], block);
            }

            else if ([v27 count])
            {
              v48 = [v27 firstObject];
              if (!-[ICDocCamViewController useDocumentSegmentation](self, "useDocumentSegmentation") && ([v48 confidence], v50 = v49, -[ICDocCamViewController rectangleMinimumVisualConfidence](self, "rectangleMinimumVisualConfidence"), v50 > v51) || -[ICDocCamViewController useDocumentSegmentation](self, "useDocumentSegmentation") && (objc_msgSend(v48, "confidence"), v53 = v52, -[ICDocCamViewController segmentMinimumVisualConfidence](self, "segmentMinimumVisualConfidence"), v53 > v54) && (objc_msgSend(v48, "confidence"), v55 < 0.99999))
              {
                [(ICDocCamViewController *)self setLastHighConfidenceRectangle:v48];
                v56 = [ICDocCamImageQuad quadFromVNRectangle:v48];
                v57 = [(ICDocCamViewController *)self overlayView];
                [v57 setDocumentQuad:v56];

                v58 = [(ICDocCamViewController *)self overlayView];
                [v58 setDebugRects:0];

                if (![(ICDocCamViewController *)self hideUserPrompt])
                {
                  [(ICDocCamViewController *)self setHideUserPrompt:1];
                  v71[0] = MEMORY[0x277D85DD0];
                  v71[1] = 3221225472;
                  v71[2] = __64__ICDocCamViewController_analyzerCallbackWithDictionaryResults___block_invoke_2;
                  v71[3] = &unk_278F93AB0;
                  v71[4] = self;
                  dispatch_async(MEMORY[0x277D85CD0], v71);
                }

                [(ICDocCamViewController *)self updateRecentlyObservedRectanglesWithRect:v48];
              }
            }

            else
            {
              v59 = [(ICDocCamViewController *)self overlayView];
              [v59 setDocumentQuad:0];

              v60 = [(ICDocCamViewController *)self overlayView];
              [v60 setDebugRects:v27];
            }
          }

          else
          {
            v46 = [(ICDocCamViewController *)self overlayView];
            [v46 setDocumentQuad:0];

            v47 = [(ICDocCamViewController *)self overlayView];
            [v47 setDebugRects:0];
          }

          v61 = [MEMORY[0x277CCAB68] string];
          v62 = [v4 objectForKeyedSubscript:@"ICDocCamImageSequenceFrame_RequestTime"];
          v63 = v62 == 0;

          if (!v63)
          {
            self->_requestTimeSum = self->_requestTimeSum - self->_requestTime[self->_requestTimeIndex];
            v64 = [v4 objectForKeyedSubscript:@"ICDocCamImageSequenceFrame_RequestTime"];
            [v64 doubleValue];
            self->_requestTime[self->_requestTimeIndex] = v65;

            requestTimeIndex = self->_requestTimeIndex;
            v67 = self->_requestTime[requestTimeIndex] + self->_requestTimeSum;
            self->_requestTimeSum = v67;
            self->_requestTimeIndex = (requestTimeIndex + 1) % 10;
            v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"Average request time = %.1fms", v67 / 10.0 * 1000.0, v70];
            [v61 appendString:v68];
          }

          if ([(ICDocCamViewController *)self displayStringEnabled])
          {
            v69 = [(ICDocCamViewController *)self overlayView];
            [v69 setDisplayString:v61];
          }

          else
          {
            v69 = [(ICDocCamViewController *)self overlayView];
            [v69 setDisplayString:0];
          }

          if ([(ICDocCamViewController *)self shouldAutoShoot])
          {
            if ([(ICDocCamViewController *)self sufficientlyLarge:v27 forImageSize:v29, v31])
            {
              [(ICDocCamViewController *)self killFeedbackDisplayIncludingUserPrompts:1];
              [(ICDocCamViewController *)self snapStillImageWithMode:1];
            }

            else
            {
              [(ICDocCamViewController *)self clearQueue];
              [(ICDocCamViewController *)self flashMoveCloserFeedback];
            }
          }
        }

        else
        {
          v44 = [(ICDocCamViewController *)self overlayView];
          [v44 setDocumentQuad:0];

          v45 = [(ICDocCamViewController *)self overlayView];
          [v45 setDebugRects:v27];

          [(ICDocCamViewController *)self didRecognizeRectangleForAccessibility:0];
        }
      }

      else
      {
        v26 = [(ICDocCamViewController *)self overlayView];
        [v26 clearRectangles];
      }
    }
  }

LABEL_47:
}

void __64__ICDocCamViewController_analyzerCallbackWithDictionaryResults___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) userPromptView];
  [v1 setHidden:1];
}

uint64_t __64__ICDocCamViewController_analyzerCallbackWithDictionaryResults___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) userPromptView];
  [v2 setAlpha:1.0];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__ICDocCamViewController_analyzerCallbackWithDictionaryResults___block_invoke_3;
  v5[3] = &unk_278F93AB0;
  v6 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__ICDocCamViewController_analyzerCallbackWithDictionaryResults___block_invoke_4;
  v4[3] = &unk_278F93B28;
  v4[4] = v6;
  return [MEMORY[0x277D75D18] animateWithDuration:0 delay:v5 options:v4 animations:0.6 completion:0.7];
}

void __64__ICDocCamViewController_analyzerCallbackWithDictionaryResults___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) userPromptView];
  [v1 setAlpha:0.0];
}

void __64__ICDocCamViewController_analyzerCallbackWithDictionaryResults___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) userPromptView];
  [v1 setHidden:1];
}

- (void)logAlgoChoice
{
  v2 = [(ICDocCamViewController *)self useDocumentSegmentation];
  v3 = os_log_create("com.apple.documentcamera", "");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v8 = 0;
      v5 = "Using VNDetectDocumentSegmentationRequest";
      v6 = &v8;
LABEL_6:
      _os_log_impl(&dword_249253000, v3, OS_LOG_TYPE_INFO, v5, v6, 2u);
    }
  }

  else if (v4)
  {
    v7 = 0;
    v5 = "Using VNDetectRectanglesRequest";
    v6 = &v7;
    goto LABEL_6;
  }
}

- (void)focusWithMode:(int64_t)a3 exposeWithMode:(int64_t)a4 atDevicePoint:(CGPoint)a5 monitorSubjectAreaChange:(BOOL)a6
{
  y = a5.y;
  x = a5.x;
  v12 = [(ICDocCamViewController *)self sessionQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__ICDocCamViewController_focusWithMode_exposeWithMode_atDevicePoint_monitorSubjectAreaChange___block_invoke;
  v13[3] = &unk_278F93E70;
  v13[4] = self;
  v13[5] = a3;
  *&v13[6] = x;
  *&v13[7] = y;
  v13[8] = a4;
  v14 = a6;
  dispatch_async(v12, v13);
}

void __94__ICDocCamViewController_focusWithMode_exposeWithMode_atDevicePoint_monitorSubjectAreaChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) videoDeviceInput];
  v3 = [v2 device];

  v7 = 0;
  v4 = [v3 lockForConfiguration:&v7];
  v5 = v7;
  if (v4)
  {
    if ([v3 isFocusPointOfInterestSupported] && objc_msgSend(v3, "isFocusModeSupported:", *(a1 + 40)))
    {
      [v3 setFocusPointOfInterest:{*(a1 + 48), *(a1 + 56)}];
      [v3 setFocusMode:*(a1 + 40)];
    }

    if ([v3 isExposurePointOfInterestSupported] && objc_msgSend(v3, "isExposureModeSupported:", *(a1 + 64)))
    {
      [v3 setExposurePointOfInterest:{*(a1 + 48), *(a1 + 56)}];
      [v3 setExposureMode:*(a1 + 64)];
    }

    [v3 setSubjectAreaChangeMonitoringEnabled:*(a1 + 72)];
    [v3 unlockForConfiguration];
  }

  else
  {
    v6 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __94__ICDocCamViewController_focusWithMode_exposeWithMode_atDevicePoint_monitorSubjectAreaChange___block_invoke_cold_1();
    }
  }
}

+ (id)deviceWithMediaType:(id)a3 preferringPosition:(int64_t)a4
{
  v4 = [MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:*MEMORY[0x277CE5878] mediaType:a3 position:a4];

  return v4;
}

- (void)prepareForDismissal
{
  v3 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamViewController prepareForDismissal];
  }

  v4 = [(ICDocCamViewController *)self processRequestsBlocker];
  [v4 addBlockerOfType:@"SaveActionBlocker" clearRectangles:1 clearQueue:1];

  [(ICDocCamViewController *)self stopImageCaptureSession];
  v5 = [(ICDocCamViewController *)self markupDocumentInfo];

  if (v5)
  {
    [(ICDocCamViewController *)self markupDoneAction:0];
  }

  v6 = [(ICDocCamViewController *)self documentInfoCollection];
  v7 = [v6 docInfos];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(ICDocCamViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(ICDocCamViewController *)self delegate];
      v12 = [(ICDocCamViewController *)self documentInfoCollection];
      v13 = [(ICDocCamViewController *)self imageCache];
      [v11 documentCameraController:self didFinishWithDocInfoCollection:v12 imageCache:v13 warnUser:0 closeViewController:0];
    }

    else
    {
      v14 = [(ICDocCamViewController *)self imageCache];
      v15 = [(ICDocCamViewController *)self documentInfoCollection];
      v16 = [v15 docInfos];
      v17 = [v16 objectAtIndexedSubscript:0];
      v18 = [v17 croppedAndFilteredImageUUID];
      v19 = [v14 getImage:v18];

      v20 = [(ICDocCamViewController *)self documentInfoCollection];
      v21 = [v20 docInfos];
      v22 = [v21 objectAtIndexedSubscript:0];
      v23 = [v22 metaData];
      v12 = [(ICDocCamViewController *)self createNSDataFrom:v19 metaData:v23];

      [(ICDocCamViewController *)self didFinishWithImage:v12];
      v11 = v19;
    }
  }
}

- (void)thumbnailViewDidTap:(id)a3
{
  v4 = a3;
  v5 = [(ICDocCamViewController *)self processRequestsBlocker];
  v6 = [v5 blocked];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 item];
    v8 = [(ICDocCamViewController *)self documentInfoCollection];
    v9 = [v8 docInfos];

    if ((v7 & 0x8000000000000000) == 0 && v7 < [v9 count])
    {
      v10 = [v9 objectAtIndexedSubscript:v7];
      v11 = [v10 croppedAndFilteredImageUUID];

      if (v11)
      {
        v12 = [(ICDocCamViewController *)self processRequestsBlocker];
        [v12 addBlockerOfType:@"ThumbnailTapBlocker" clearRectangles:1 clearQueue:1];

        v13 = [(ICDocCamViewController *)self cameraUnavailableScrim];
        v14 = [v13 isHidden];

        if ((v14 & 1) == 0)
        {
          [(ICDocCamViewController *)self dismissFilterAndFlashUI];
        }

        [(ICDocCamViewController *)self stopImageCaptureSession];
        [(ICDocCamViewController *)self clearRectangles];
        [(ICDocCamViewController *)self disableRetakeMode];
        v15 = [ICDocCamExtractedDocumentViewController alloc];
        v16 = [(ICDocCamViewController *)self documentInfoCollection];
        v17 = [(ICDocCamViewController *)self imageCache];
        v18 = [(ICDocCamExtractedDocumentViewController *)v15 initWithDelegate:self documentInfoCollection:v16 imageCache:v17 currentIndex:v7 mode:0];

        [(ICDocCamViewController *)self setUseCustomThumbnailZoomTransition:1];
        v19 = [(ICDocCamViewController *)self navigationController];
        [v19 setDelegate:self];

        v20 = [(ICDocCamExtractedDocumentViewController *)v18 navigationController];
        [v20 setDelegate:self];

        v21 = [(ICDocCamViewController *)self thumbnailViewController];
        v22 = [v21 collectionView];
        v23 = [v22 cellForItemAtIndexPath:v4];

        v24 = [(ICDocCamViewController *)self documentInfoCollection];
        v25 = [v24 docInfos];
        v26 = [v25 objectAtIndexedSubscript:v7];

        v27 = [(ICDocCamViewController *)self imageCache];
        v28 = [v26 croppedAndFilteredImageUUID];
        v29 = [v27 getImage:v28];

        [(ICDocCamViewController *)self setImageForThumbnailZoom:v29];
        [(ICDocCamViewController *)self setIndexPathForThumbnailZoom:v4];
        objc_initWeak(&location, self);
        objc_initWeak(&from, v23);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __46__ICDocCamViewController_thumbnailViewDidTap___block_invoke;
        v37[3] = &unk_278F93E98;
        objc_copyWeak(&v38, &from);
        objc_copyWeak(&v39, &location);
        [(ICDocCamViewController *)self setThumbnailZoomCompletionBlock:v37];
        if ((DCDebugInterfaceEnabled() & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "userInterfaceIdiom"), v30, v31 == 1) || (-[ICDocCamViewController documentInfoCollection](self, "documentInfoCollection"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "docInfos"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "count"), v33, v32, v34 != 1))
        {
          [v23 setHidden:1];
        }

        else
        {
          v35 = [(ICDocCamViewController *)self thumbnailContainerView];
          [v35 setHidden:1];
        }

        v36 = [(ICDocCamViewController *)self navigationController];
        [v36 pushViewController:v18 animated:1];

        objc_destroyWeak(&v39);
        objc_destroyWeak(&v38);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __46__ICDocCamViewController_thumbnailViewDidTap___block_invoke(uint64_t a1)
{
  if ((DCDebugInterfaceEnabled() & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v8 = objc_claimAutoreleasedReturnValue(), v2 = objc_msgSend(v8, "userInterfaceIdiom"), v8, v2 == 1) || (v11 = objc_loadWeakRetained((a1 + 40)), objc_msgSend(v11, "documentInfoCollection"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "docInfos"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4, v11, v6 != 1))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setHidden:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained thumbnailContainerView];
    [v7 setHidden:0];
  }

  v10 = objc_loadWeakRetained((a1 + 40));
  v3 = [v10 processRequestsBlocker];
  [v3 removeBlockerOfType:@"ThumbnailTapBlocker"];
}

- (void)addNewDocument:(id)a3
{
  v7 = a3;
  v4 = [(ICDocCamViewController *)self documentInfoCollection];
  v5 = [v4 docInfos];
  [v5 addObject:v7];

  v6 = [(ICDocCamViewController *)self documentInfoCollection];
  [v6 bumpModificationDate];

  [(ICDocCamViewController *)self warnAboutMaxScansIfNecessary];
}

- (CGRect)targetViewRect
{
  v3 = [(ICDocCamViewController *)self statusBarOrientation];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = v3 - 1;
  v7 = [(ICDocCamViewController *)self view];
  v8 = v7;
  if (v5)
  {
    [v7 bounds];
    v10 = v9;

    v11 = [(ICDocCamViewController *)self view];
    [v11 bounds];
    v19 = v10 + -200.0;
    v21 = v20 + -200.0;

    v22 = 100.0;
    v23 = 100.0;
  }

  else
  {
    [v7 bounds];
    v13 = v12;

    v14 = [(ICDocCamViewController *)self view];
    [v14 bounds];
    v16 = v15;
    if (v6 > 1)
    {
      v17 = 32.0;
      *&v18 = -64.0;
    }

    else
    {
      v17 = 100.0;
      *&v18 = -200.0;
    }

    v24 = *&v18;

    v25 = [(ICDocCamViewController *)self view];
    [v25 safeAreaInsets];
    v27 = v26;
    v29 = v28;
    v30 = v16 + v24;
    v19 = v13 + -64.0;

    v23 = v17 + v27;
    v31 = 0.0;
    if (v29 > 0.0)
    {
      v31 = 10.0;
    }

    v21 = v30 - (v27 + v29 + v31);
    v22 = 32.0;
  }

  v32 = v19;
  v33 = v21;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)warnAboutMaxScansIfNecessary
{
  v3 = [(ICDocCamViewController *)self delegate];
  v4 = [(ICDocCamViewController *)self documentInfoCollection];
  v5 = [v4 docInfos];
  v6 = [v3 documentCameraController:self canAddImages:{objc_msgSend(v5, "count") + 1}];

  if ((v6 & 1) == 0)
  {
    [(ICDocCamViewController *)self enableShutter:0];
    v7 = [(ICDocCamViewController *)self shutterButton];
    [v7 setPseudoDisabled:1];

    if (![(ICDocCamViewController *)self didWarnAboutMaxScans])
    {
      [(ICDocCamViewController *)self setDidWarnAboutMaxScans:1];
      v8 = [(ICDocCamViewController *)self processRequestsBlocker];
      [v8 addBlockerOfType:@"MaxImageAlertBlocker" clearRectangles:1 clearQueue:1];

      v9 = objc_opt_class();
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __54__ICDocCamViewController_warnAboutMaxScansIfNecessary__block_invoke;
      v10[3] = &unk_278F93BF0;
      v10[4] = self;
      [v9 warnAboutMaxScansReachedForViewController:self completionHandler:v10];
    }
  }
}

void __54__ICDocCamViewController_warnAboutMaxScansIfNecessary__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) processRequestsBlocker];
  [v1 removeBlockerOfType:@"MaxImageAlertBlocker"];
}

+ (void)warnAboutMaxScansReachedForViewController:(id)a3 completionHandler:(id)a4
{
  v13 = a3;
  v5 = a4;
  v6 = [DCLocalization localizedStringForKey:@"Maximum Reached" value:@"Maximum Reached" table:@"Localizable"];
  v7 = [DCLocalization localizedStringForKey:@"You’ve added the maximum number of scans to this document. You can delete scans or create another document." value:@"You’ve added the maximum number of scans to this document. You can delete scans or create another document." table:@"Localizable"];
  v8 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v7 preferredStyle:1];
  v9 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
  [v8 setImage:v9];

  v10 = MEMORY[0x277D750F8];
  v11 = [DCLocalization localizedStringForKey:@"OK" value:@"OK" table:@"Localizable"];
  v12 = [v10 actionWithTitle:v11 style:1 handler:v5];

  [v8 addAction:v12];
  [v13 presentViewController:v8 animated:1 completion:0];
}

- (id)filteredImageForDocument:(id)a3
{
  v4 = a3;
  v5 = [v4 croppedButNotFilteredImageUUID];

  [(ICDocCamViewController *)self imageCache];
  if (v5)
    v6 = {;
    v7 = [v4 croppedButNotFilteredImageUUID];
    [v6 getImage:v7];
  }

  else
    v8 = {;
    v9 = [v4 fullImageUUID];
    v6 = [v8 getImage:v9];

    v7 = [v4 imageQuad];
    [ICDocCamImageFilters perspectiveCorrectedImageFromImage:v6 normalizedImageQuad:v7];
  }
  v10 = ;

  v11 = +[ICDocCamImageFilters filteredImage:orientation:imageFilterType:constantColor:](ICDocCamImageFilters, "filteredImage:orientation:imageFilterType:constantColor:", v10, [v4 currentOrientation], objc_msgSend(v4, "currentFilter"), objc_msgSend(v4, "constantColor"));

  return v11;
}

- (void)extractedDocumentController:(id)a3 startMarkupOnDocument:(id)a4 inkStyle:(unint64_t)a5 startPresentBlock:(id)a6 dismissCompletionBlock:(id)a7
{
  v11 = a4;
  v12 = a6;
  v30 = a7;
  v13 = [(ICDocCamViewController *)self imageCache];
  v14 = [v11 croppedAndFilteredImageUUID];
  v31 = [v13 getImage:v14];

  v15 = [(ICDocCamViewController *)self filteredImageForDocument:v11];
  v16 = +[DCMarkupUtilities createMarkupViewController];
  [v16 setInkStyle:a5];
  v17 = [MEMORY[0x277D75348] DCExtractedDocumentViewControllerBackgroundColor];
  [v16 setBackgroundColor:v17];

  v18 = [v11 markupModelData];
  v19 = [v15 dc_JPEGData];
  [v16 setData:v19 withArchivedModelData:v18 placeholderImage:v31];

  v20 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v16];
  v21 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_markupDoneAction_];
  v22 = [v16 navigationItem];
  [v22 setLeftBarButtonItem:v21];

  v23 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_markupCancelAction_];
  v24 = [v16 navigationItem];
  [v24 setRightBarButtonItem:v23];

  [v20 setModalTransitionStyle:2];
  [v20 setModalPresentationStyle:6];
  v25 = [MEMORY[0x277D75418] currentDevice];
  v26 = [v25 userInterfaceIdiom];

  if (!v26)
  {
    v27 = [v20 navigationBar];
    v28 = [MEMORY[0x277D75348] colorWithWhite:0.1 alpha:1.0];
    [v27 setBarTintColor:v28];
  }

  [(ICDocCamViewController *)self setMarkupDocumentInfo:v11];
  [(ICDocCamViewController *)self setMarkupDismissCompletionBlock:v30];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __126__ICDocCamViewController_extractedDocumentController_startMarkupOnDocument_inkStyle_startPresentBlock_dismissCompletionBlock___block_invoke;
  v32[3] = &unk_278F93EC0;
  v32[4] = self;
  v29 = v20;
  v33 = v29;
  v12[2](v12, v32);
}

void __126__ICDocCamViewController_extractedDocumentController_startMarkupOnDocument_inkStyle_startPresentBlock_dismissCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)markupDoneAction:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(ICDocCamViewController *)self navigationController];
  v7 = [v6 topViewController];
  v8 = DCDynamicCast(v5, v7);

  v9 = objc_opt_class();
  v10 = [(ICDocCamViewController *)self presentedViewController];
  v11 = DCDynamicCast(v9, v10);

  v12 = [(ICDocCamViewController *)self markupDocumentInfo];
  [(ICDocCamViewController *)self setMarkupDocumentInfo:0];
  v13 = [v11 topViewController];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v14 = getMarkupViewControllerClass(void)::softClass;
  v31 = getMarkupViewControllerClass(void)::softClass;
  if (!getMarkupViewControllerClass(void)::softClass)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = ___ZL28getMarkupViewControllerClassv_block_invoke;
    v27[3] = &unk_278F93F50;
    v27[4] = &v28;
    ___ZL28getMarkupViewControllerClassv_block_invoke(v27);
    v14 = v29[3];
  }

  v15 = v14;
  _Block_object_dispose(&v28, 8);
  if ((objc_opt_isKindOfClass() & (v12 != 0)) == 1)
  {
    v16 = v13;
    v26 = v8;
    v17 = [v16 createArchivedModelData];
    [v12 setMarkupModelData:v17];

    v18 = [v16 dataRepresentationEmbeddingSourceImageAndEditModel:0 error:0];
    if (v18)
    {
      v25 = v4;
      v19 = [MEMORY[0x277D755B8] imageWithData:v18];
      v20 = [(ICDocCamViewController *)self imageCache];
      v21 = [v12 metaData];
      v22 = [v12 croppedAndFilteredImageUUID];
      [v20 replaceImage:v19 metaData:v21 uuid:v22];

      [v26 didUpdateDocumentImage:v12];
      v4 = v25;
    }

    v8 = v26;
  }

  v23 = [(ICDocCamViewController *)self markupDismissCompletionBlock];
  [(ICDocCamViewController *)self setMarkupDismissCompletionBlock:0];
  v24 = [(ICDocCamViewController *)self presentedViewController];
  [v24 dismissViewControllerAnimated:1 completion:v23];
}

- (void)markupCancelAction:(id)a3
{
  v5 = [(ICDocCamViewController *)self markupDismissCompletionBlock];
  [(ICDocCamViewController *)self setMarkupDismissCompletionBlock:0];
  [(ICDocCamViewController *)self setMarkupDocumentInfo:0];
  v4 = [(ICDocCamViewController *)self presentedViewController];
  [v4 dismissViewControllerAnimated:1 completion:v5];
}

- (id)extractedDocumentControllerMarkupModelDataForDocument:(id)a3
{
  v3 = [a3 markupModelData];

  return v3;
}

- (void)extractedDocumentControllerDiscardMarkupModelDataForDocument:(id)a3
{
  v12 = a3;
  [v12 setMarkupModelData:0];
  v4 = objc_opt_class();
  v5 = [(ICDocCamViewController *)self navigationController];
  v6 = [v5 topViewController];
  v7 = DCDynamicCast(v4, v6);

  v8 = [(ICDocCamViewController *)self filteredImageForDocument:v12];
  v9 = [(ICDocCamViewController *)self imageCache];
  v10 = [v12 metaData];
  v11 = [v12 croppedAndFilteredImageUUID];
  [v9 replaceImage:v8 metaData:v10 uuid:v11];

  [v7 didUpdateDocumentImage:v12];
}

- (void)extractedDocumentControllerDidTapRetake:(unint64_t)a3
{
  v5 = [(ICDocCamViewController *)self documentInfoCollection];
  v6 = [v5 docInfos];
  v7 = [v6 count];

  if (v7 > a3)
  {
    v8 = [(ICDocCamViewController *)self thumbnailViewController];
    [v8 update];

    [(ICDocCamViewController *)self setRetakeIndex:a3];
    [(ICDocCamViewController *)self setDoneButtonVisible:0];
    v9 = [(ICDocCamViewController *)self thumbnailContainerView];
    [v9 setHidden:1];

    [(ICDocCamViewController *)self setUseCustomRetakeTransition:1];
    v10 = [(ICDocCamViewController *)self navigationController];
    [v10 setDelegate:self];

    v11 = [(ICDocCamViewController *)self navigationController];
    v12 = [v11 topViewController];
    v13 = [v12 navigationController];
    [v13 setDelegate:self];

    v14 = [(ICDocCamViewController *)self documentInfoCollection];
    v15 = [v14 docInfos];
    v16 = [v15 objectAtIndexedSubscript:a3];

    v17 = [(ICDocCamViewController *)self imageCache];
    v18 = [v16 croppedAndFilteredImageUUID];
    v19 = [v17 getImage:v18];

    v20 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:0];
    [(ICDocCamViewController *)self setIndexPathForRetake:v20];

    [(ICDocCamViewController *)self setImageForRetake:v19];
    [(ICDocCamViewController *)self setRetakeCompletionBlock:0];
    objc_initWeak(&location, self);
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __66__ICDocCamViewController_extractedDocumentControllerDidTapRetake___block_invoke;
    v27 = &unk_278F93C40;
    objc_copyWeak(&v28, &location);
    [(ICDocCamViewController *)self setSessionStartNotificationBlock:&v24];
    v21 = [(ICDocCamViewController *)self previewView:v24];
    v22 = [v21 layer];
    LODWORD(v23) = 1.0;
    [v22 setOpacity:v23];

    [(ICDocCamViewController *)self restartImageCaptureSessionIfNecessary];
    [(ICDocCamViewController *)self retakeButtonWasPressed];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }
}

void __66__ICDocCamViewController_extractedDocumentControllerDidTapRetake___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  v2 = [v1 popViewControllerAnimated:1];
}

- (void)extractedDocumentController:(id)a3 didTapRecrop:(id)a4 index:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v29 = [(ICDocCamViewController *)self imageCache];
  v10 = [v9 fullImageUUID];
  v11 = [v29 getImage:v10];

  v12 = [v9 imageQuad];
  v13 = [v9 currentOrientation];
  v14 = [ICDocCamImageQuadEditViewController alloc];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __73__ICDocCamViewController_extractedDocumentController_didTapRecrop_index___block_invoke;
  v30[3] = &unk_278F93EE8;
  v15 = v9;
  v31 = v15;
  v32 = self;
  v16 = v8;
  v33 = v16;
  v34 = a5;
  v17 = [(ICDocCamImageQuadEditViewController *)v14 initWithImage:v11 quad:v12 scanDataDelegate:0 orientation:v13 completionHandler:v30];
  [(ICDocCamImageQuadEditViewController *)v17 setShowImageAsAspectFit:1];
  [(ICDocCamImageQuadEditViewController *)v17 setEdgesForExtendedLayout:15];
  [(ICDocCamImageQuadEditViewController *)v17 setExtendedLayoutIncludesOpaqueBars:1];
  [(ICDocCamViewController *)self setUseCustomRecropTransition:1];
  v18 = [(ICDocCamViewController *)self navigationController];
  [v18 setDelegate:self];

  v19 = [(ICDocCamImageQuadEditViewController *)v17 navigationController];
  [v19 setDelegate:self];

  v20 = [MEMORY[0x277CCAA70] indexPathForItem:a5 inSection:0];
  [(ICDocCamViewController *)self setIndexPathForRecrop:v20];

  v21 = [(ICDocCamViewController *)self imageCache];
  v22 = [v15 croppedAndFilteredImageUUID];
  v23 = [v21 getImage:v22];
  [(ICDocCamViewController *)self setFilteredImageForRecrop:v23];

  v24 = [v16 croppedButNotFilteredImageForDocInfo:v15];
  [(ICDocCamViewController *)self setUnfilteredImageForRecrop:v24];

  v25 = objc_alloc(MEMORY[0x277D755B8]);
  v26 = [(ICDocCamViewController *)self unfilteredImageForRecrop];
  v27 = [v25 initWithCGImage:objc_msgSend(v26 scale:"CGImage") orientation:{objc_msgSend(v15, "currentOrientation"), 1.0}];
  [(ICDocCamViewController *)self setUnfilteredImageForRecrop:v27];

  -[ICDocCamViewController setOrientationForRecrop:](self, "setOrientationForRecrop:", [v15 currentOrientation]);
  v28 = [(ICDocCamViewController *)self navigationController];
  [v28 pushViewController:v17 animated:1];
}

void __73__ICDocCamViewController_extractedDocumentController_didTapRecrop_index___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v27 = a3;
  v7 = a4;
  if (a2)
  {
    [*(a1 + 32) setImageQuad:v7];
    v8 = [ICDocCamImageFilters perspectiveCorrectedImageFromImage:v27 normalizedImageQuad:v7];
    v9 = [*(a1 + 40) imageCache];
    v10 = [*(a1 + 32) metaData];
    v11 = [*(a1 + 32) croppedButNotFilteredImageUUID];
    [v9 replaceImage:v8 metaData:v10 uuid:v11];

    v12 = +[ICDocCamImageFilters filteredImage:orientation:imageFilterType:constantColor:](ICDocCamImageFilters, "filteredImage:orientation:imageFilterType:constantColor:", v8, [*(a1 + 32) currentOrientation], objc_msgSend(*(a1 + 32), "currentFilter"), objc_msgSend(*(a1 + 32), "constantColor"));
    v13 = [*(a1 + 40) imageCache];
    v14 = [*(a1 + 32) metaData];
    v15 = [*(a1 + 32) croppedAndFilteredImageUUID];
    [v13 replaceImage:v12 metaData:v14 uuid:v15];

    v16 = [*(a1 + 40) thumbnailViewController];
    [v16 update];

    [*(a1 + 48) didUpdateDocumentImage:*(a1 + 32)];
  }

  v17 = [MEMORY[0x277CCAA70] indexPathForItem:*(a1 + 56) inSection:0];
  [*(a1 + 40) setIndexPathForRecrop:v17];

  v18 = [*(a1 + 40) imageCache];
  v19 = [*(a1 + 32) croppedAndFilteredImageUUID];
  v20 = [v18 getImage:v19];
  [*(a1 + 40) setFilteredImageForRecrop:v20];

  v21 = [*(a1 + 48) croppedButNotFilteredImageForDocInfo:*(a1 + 32)];
  [*(a1 + 40) setUnfilteredImageForRecrop:v21];

  v22 = objc_alloc(MEMORY[0x277D755B8]);
  v23 = [*(a1 + 40) unfilteredImageForRecrop];
  v24 = [v22 initWithCGImage:objc_msgSend(v23 scale:"CGImage") orientation:{objc_msgSend(*(a1 + 32), "currentOrientation"), 1.0}];
  [*(a1 + 40) setUnfilteredImageForRecrop:v24];

  [*(a1 + 40) setOrientationForRecrop:{objc_msgSend(*(a1 + 32), "currentOrientation")}];
  v25 = [*(a1 + 40) navigationController];
  v26 = [v25 popViewControllerAnimated:1];
}

- (void)extractedDocumentControllerDidTapDone:(unint64_t)a3
{
  [(ICDocCamViewController *)self disableRetakeMode];
  v5 = [MEMORY[0x277CDA000] animation];
  [v5 setRemovedOnCompletion:1];
  [v5 setDuration:0.25];
  v6 = *MEMORY[0x277CDA928];
  [v5 setType:*MEMORY[0x277CDA928]];
  v7 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v5 setTimingFunction:v7];

  v8 = [(ICDocCamViewController *)self saveButton];
  v9 = [v8 layer];
  [v9 addAnimation:v5 forKey:@"changeTextTransition"];

  v10 = [(ICDocCamViewController *)self saveButton];
  v11 = [(ICDocCamViewController *)self documentInfoCollection];
  v12 = [v11 docInfos];
  [v10 setDocumentCount:{objc_msgSend(v12, "count")}];

  [(ICDocCamViewController *)self updateThumbnailContainerViewConstraintConstantForIPad];
  v13 = [(ICDocCamViewController *)self documentInfoCollection];
  v14 = [v13 docInfos];
  v15 = [v14 count];

  if (v15)
  {
    [(ICDocCamViewController *)self setDoneButtonVisible:1];
  }

  v16 = [(ICDocCamViewController *)self thumbnailContainerView];
  [v16 setHidden:0];

  v17 = [(ICDocCamViewController *)self thumbnailViewController];
  [v17 update];

  v18 = [(ICDocCamViewController *)self documentInfoCollection];
  v19 = [v18 docInfos];
  v20 = [v19 count];

  if (v20)
  {
    [(ICDocCamViewController *)self setUseCustomThumbnailZoomTransition:1];
    v21 = [(ICDocCamViewController *)self view];
    [v21 setNeedsLayout];

    v22 = [(ICDocCamViewController *)self view];
    [v22 layoutIfNeeded];

    v23 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:0];
    v24 = [(ICDocCamViewController *)self documentInfoCollection];
    v25 = [v24 docInfos];
    v26 = [v25 objectAtIndexedSubscript:a3];

    v27 = [(ICDocCamViewController *)self imageCache];
    v28 = [v26 croppedAndFilteredImageUUID];
    v29 = [v27 getImage:v28];

    [(ICDocCamViewController *)self setIndexPathForThumbnailZoom:v23];
    [(ICDocCamViewController *)self setImageForThumbnailZoom:v29];
    objc_initWeak(&location, self);
    v44 = MEMORY[0x277D85DD0];
    v45 = 3221225472;
    v46 = __64__ICDocCamViewController_extractedDocumentControllerDidTapDone___block_invoke;
    v47 = &unk_278F93C40;
    objc_copyWeak(&v48, &location);
    [(ICDocCamViewController *)self setSessionStartNotificationBlock:&v44];
    v30 = [(ICDocCamViewController *)self previewView:v44];
    v31 = [v30 layer];
    LODWORD(v32) = 1.0;
    [v31 setOpacity:v32];

    [(ICDocCamViewController *)self restartImageCaptureSessionIfNecessary];
    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);
  }

  else
  {
    [(ICDocCamViewController *)self setUseCustomThumbnailZoomTransition:0];
    v33 = [MEMORY[0x277D75418] currentDevice];
    v34 = [v33 userInterfaceIdiom];

    if (!v34)
    {
      v35 = [(ICDocCamViewController *)self thumbnailContainerView];
      [v35 setHidden:0];
    }

    v36 = [(ICDocCamViewController *)self navigationController];
    v37 = [v36 topViewController];
    v38 = [v37 view];

    v39 = [MEMORY[0x277CDA000] animation];
    [v39 setDuration:0.25];
    [v39 setType:*MEMORY[0x277CDA958]];
    [v39 setSubtype:v6];
    v40 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
    [v39 setTimingFunction:v40];

    v41 = [v38 layer];
    [v41 addAnimation:v39 forKey:&stru_285C55A80];

    v42 = [(ICDocCamViewController *)self navigationController];
    v43 = [v42 popViewControllerAnimated:0];
  }
}

void __64__ICDocCamViewController_extractedDocumentControllerDidTapDone___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  v2 = [v1 popViewControllerAnimated:1];
}

- (void)extractedDocumentControllerDidDeleteDocument:(id)a3
{
  v3 = [(ICDocCamViewController *)self thumbnailViewController];
  [v3 update];
}

- (void)setupAccessibilityInfo
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = [(ICDocCamViewController *)self userPromptLabel];
  [v3 setIsAccessibilityElement:0];

  v4 = [(ICDocCamViewController *)self cameraUnavailableLabel];
  [v4 setIsAccessibilityElement:0];

  v5 = [(ICDocCamViewController *)self cancelButtonForIPhone];
  [v5 setShowsLargeContentViewer:1];

  v6 = [(ICDocCamViewController *)self cancelButtonForIPhone];
  v7 = objc_alloc_init(MEMORY[0x277D756C8]);
  [v6 addInteraction:v7];

  v8 = [(ICDocCamViewController *)self cancelButton];
  [v8 setShowsLargeContentViewer:1];

  v9 = [(ICDocCamViewController *)self cancelButton];
  v10 = objc_alloc_init(MEMORY[0x277D756C8]);
  [v9 addInteraction:v10];

  v11 = [(ICDocCamViewController *)self flashButton];
  [v11 setShowsLargeContentViewer:1];

  v12 = [(ICDocCamViewController *)self flashButton];
  v13 = objc_alloc_init(MEMORY[0x277D756C8]);
  [v12 addInteraction:v13];

  v14 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
  [v14 setShowsLargeContentViewer:1];

  v15 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
  v16 = objc_alloc_init(MEMORY[0x277D756C8]);
  [v15 addInteraction:v16];

  v17 = [(ICDocCamViewController *)self flashButtonForIPhone];
  [v17 setShowsLargeContentViewer:1];

  v18 = [(ICDocCamViewController *)self flashButtonForIPhone];
  v19 = objc_alloc_init(MEMORY[0x277D756C8]);
  [v18 addInteraction:v19];

  v20 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
  [v20 setShowsLargeContentViewer:1];

  v21 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
  v22 = objc_alloc_init(MEMORY[0x277D756C8]);
  [v21 addInteraction:v22];

  v23 = [(ICDocCamViewController *)self flashSettingViewOnButton];
  [v23 setShowsLargeContentViewer:1];

  v24 = [(ICDocCamViewController *)self flashSettingViewOnButton];
  v25 = objc_alloc_init(MEMORY[0x277D756C8]);
  [v24 addInteraction:v25];

  v26 = [(ICDocCamViewController *)self flashSettingViewOffButton];
  [v26 setShowsLargeContentViewer:1];

  v27 = [(ICDocCamViewController *)self flashSettingViewOffButton];
  v28 = objc_alloc_init(MEMORY[0x277D756C8]);
  [v27 addInteraction:v28];

  v29 = [DCLocalization localizedStringForKey:@"Show filter settings" value:@"Show filter settings" table:@"Localizable"];
  v30 = [(ICDocCamViewController *)self filterButton];
  [v30 setAccessibilityLabel:v29];

  v31 = [DCLocalization localizedStringForKey:@"Double-tap to choose a filter to apply to this scan." value:@"Double-tap to choose a filter to apply to this scan." table:@"Localizable"];
  v32 = [(ICDocCamViewController *)self filterButton];
  [v32 setAccessibilityHint:v31];

  v33 = [(ICDocCamViewController *)self filterButton];
  [v33 setShowsLargeContentViewer:1];

  v34 = [(ICDocCamViewController *)self filterButton];
  v35 = objc_alloc_init(MEMORY[0x277D756C8]);
  [v34 addInteraction:v35];

  v36 = [(ICDocCamViewController *)self filterButton];
  v37 = [v36 accessibilityLabel];
  v38 = [(ICDocCamViewController *)self filterButtonForIPhone];
  [v38 setAccessibilityLabel:v37];

  v39 = [(ICDocCamViewController *)self filterButton];
  v40 = [v39 accessibilityHint];
  v41 = [(ICDocCamViewController *)self filterButtonForIPhone];
  [v41 setAccessibilityHint:v40];

  v42 = [(ICDocCamViewController *)self filterButtonForIPhone];
  [v42 setShowsLargeContentViewer:1];

  v43 = [(ICDocCamViewController *)self filterButtonForIPhone];
  v44 = objc_alloc_init(MEMORY[0x277D756C8]);
  [v43 addInteraction:v44];

  v45 = [DCLocalization localizedStringForKey:@"Hide filter settings" value:@"Hide filter settings" table:@"Localizable"];
  v46 = [(ICDocCamViewController *)self filterViewButton];
  [v46 setAccessibilityLabel:v45];

  v47 = [(ICDocCamViewController *)self filterViewButton];
  [v47 setShowsLargeContentViewer:1];

  v48 = [(ICDocCamViewController *)self filterViewButton];
  v49 = objc_alloc_init(MEMORY[0x277D756C8]);
  [v48 addInteraction:v49];

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v50 = [(ICDocCamViewController *)self filterButtons];
  v51 = [v50 countByEnumeratingWithState:&v81 objects:v85 count:16];
  if (v51)
  {
    v52 = *v82;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v82 != v52)
        {
          objc_enumerationMutation(v50);
        }

        v54 = *(*(&v81 + 1) + 8 * i);
        [v54 setShowsLargeContentViewer:1];
        v55 = objc_alloc_init(MEMORY[0x277D756C8]);
        [v54 addInteraction:v55];
      }

      v51 = [v50 countByEnumeratingWithState:&v81 objects:v85 count:16];
    }

    while (v51);
  }

  v56 = [DCLocalization localizedStringForKey:@"Double-tap to resume" value:@"Double-tap to resume" table:@"Localizable"];
  v57 = [(ICDocCamViewController *)self resumeButton];
  [v57 setAccessibilityLabel:v56];

  v58 = [(ICDocCamViewController *)self autoButtonForIPhone];
  [v58 setShowsLargeContentViewer:1];

  v59 = [(ICDocCamViewController *)self autoButtonForIPhone];
  v60 = objc_alloc_init(MEMORY[0x277D756C8]);
  [v59 addInteraction:v60];

  v61 = [(ICDocCamViewController *)self autoButton];
  [v61 setShowsLargeContentViewer:1];

  v62 = [(ICDocCamViewController *)self autoButton];
  v63 = objc_alloc_init(MEMORY[0x277D756C8]);
  [v62 addInteraction:v63];

  [(ICDocCamViewController *)self updateAccessibilityForCurrentFlashMode];
  [(ICDocCamViewController *)self updateAccessibilityForCurrentFilter];
  [(ICDocCamViewController *)self updateAccessibilityForAutoShutterMode:[(ICDocCamViewController *)self autoMode]];
  v64 = [(ICDocCamViewController *)self filterButton];
  [v64 _accessibilitySetIsSpeakThisElement:1];

  v65 = [(ICDocCamViewController *)self filterButtonForIPhone];
  [v65 _accessibilitySetIsSpeakThisElement:1];

  v66 = [(ICDocCamViewController *)self flashButton];
  [v66 _accessibilitySetIsSpeakThisElement:1];

  v67 = [(ICDocCamViewController *)self flashButtonForIPhone];
  [v67 _accessibilitySetIsSpeakThisElement:1];

  v68 = [(ICDocCamViewController *)self autoButton];
  [v68 _accessibilitySetIsSpeakThisElement:1];

  v69 = [(ICDocCamViewController *)self autoButtonForIPhone];
  [v69 _accessibilitySetIsSpeakThisElement:1];

  v70 = [(ICDocCamViewController *)self manualButton];
  [v70 _accessibilitySetIsSpeakThisElement:1];

  v71 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
  v72 = [v71 accessibilityLabel];
  v73 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
  [v73 setLargeContentTitle:v72];

  v74 = [(ICDocCamViewController *)self filterViewButton];
  v75 = [v74 accessibilityLabel];
  v76 = [(ICDocCamViewController *)self filterViewButton];
  [v76 setLargeContentTitle:v75];

  v77 = [(ICDocCamViewController *)self manualButton];
  [v77 setShowsLargeContentViewer:1];

  v78 = [(ICDocCamViewController *)self manualButton];
  v79 = objc_alloc_init(MEMORY[0x277D756C8]);
  [v78 addInteraction:v79];

  v80 = [(ICDocCamViewController *)self view];
  [v80 setAccessibilityIgnoresInvertColors:1];
}

- (void)updateAccessibilityForCurrentFilter
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = [(ICDocCamViewController *)self filterButtons];
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v5 = *v29;
    v6 = *MEMORY[0x277D76598];
    v7 = ~*MEMORY[0x277D76598];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [v9 tag];
        if (v10 == [(ICDocCamViewController *)self defaultFilter])
        {
          v11 = v6 | [v9 accessibilityTraits];
        }

        else
        {
          v11 = [v9 accessibilityTraits] & v7;
        }

        [v9 setAccessibilityTraits:v11];
      }

      v4 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v4);
  }

  v12 = [(ICDocCamViewController *)self filterButton];
  [v12 setAccessibilityValue:0];

  if ([(ICDocCamViewController *)self filterSettingUIShowing])
  {
    v13 = [DCLocalization localizedStringForKey:@"Hide filter settings" value:@"Hide filter settings" table:@"Localizable"];
    v14 = [(ICDocCamViewController *)self filterButton];
    [v14 setAccessibilityLabel:v13];

    v15 = [(ICDocCamViewController *)self filterButton];
    [v15 setAccessibilityValue:0];
  }

  else
  {
    v16 = [DCLocalization localizedStringForKey:@"Show filter settings" value:@"Show filter settings" table:@"Localizable"];
    v17 = [(ICDocCamViewController *)self filterButton];
    [v17 setAccessibilityLabel:v16];

    v15 = [ICDocCamImageFilters localizedImageFilterNameForType:[(ICDocCamViewController *)self defaultFilter]];
    v18 = [(ICDocCamViewController *)self filterButton];
    [v18 setAccessibilityValue:v15];
  }

  v19 = [(ICDocCamViewController *)self filterButton];
  v20 = [v19 accessibilityValue];
  v21 = [(ICDocCamViewController *)self filterButtonForIPhone];
  [v21 setAccessibilityValue:v20];

  v22 = [(ICDocCamViewController *)self filterButton];
  v23 = [v22 accessibilityLabel];
  v24 = [(ICDocCamViewController *)self filterButton];
  [v24 setLargeContentTitle:v23];

  v25 = [(ICDocCamViewController *)self filterButtonForIPhone];
  v26 = [v25 accessibilityLabel];
  v27 = [(ICDocCamViewController *)self filterButtonForIPhone];
  [v27 setLargeContentTitle:v26];
}

- (void)updateAccessibilityForCurrentFlashMode
{
  v3 = [(ICDocCamViewController *)self flashMode];
  switch(v3)
  {
    case 2:
      v37 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      v10 = [v37 accessibilityTraits];
      v11 = *MEMORY[0x277D76598];
      [v37 setAccessibilityTraits:v10 & ~*MEMORY[0x277D76598]];

      v38 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      [v38 setAccessibilityTraits:{objc_msgSend(v38, "accessibilityTraits") & ~v11}];

      v39 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      [v39 setAccessibilityTraits:{objc_msgSend(v39, "accessibilityTraits") | v11}];

      v36 = [DCLocalization localizedStringForKey:@"auto" value:@"auto" table:@"Localizable"];
      v9 = [(ICDocCamViewController *)self flashButton];
      [v9 setAccessibilityValue:v36];
LABEL_7:

      break;
    case 1:
      v33 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      v7 = [v33 accessibilityTraits];
      v8 = *MEMORY[0x277D76598];
      [v33 setAccessibilityTraits:v7 & ~*MEMORY[0x277D76598]];

      v34 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      [v34 setAccessibilityTraits:{objc_msgSend(v34, "accessibilityTraits") | v8}];

      v35 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      [v35 setAccessibilityTraits:{objc_msgSend(v35, "accessibilityTraits") & ~v8}];

      v36 = [DCLocalization localizedStringForKey:@"on" value:@"on" table:@"Localizable"];
      v9 = [(ICDocCamViewController *)self flashButton];
      [v9 setAccessibilityValue:v36];
      goto LABEL_7;
    case 0:
      v29 = [DCLocalization localizedStringForKey:@"off" value:@"off" table:@"Localizable"];
      v4 = [(ICDocCamViewController *)self flashButton];
      [v4 setAccessibilityValue:v29];

      v30 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      v5 = [v30 accessibilityTraits];
      v6 = *MEMORY[0x277D76598];
      [v30 setAccessibilityTraits:*MEMORY[0x277D76598] | v5];

      v31 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      [v31 setAccessibilityTraits:{objc_msgSend(v31, "accessibilityTraits") & ~v6}];

      v32 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      [v32 setAccessibilityTraits:{objc_msgSend(v32, "accessibilityTraits") & ~v6}];

      break;
  }

  if ([(ICDocCamViewController *)self flashSettingUIShowing])
  {
    v40 = [DCLocalization localizedStringForKey:@"Hide flash settings" value:@"Hide flash settings" table:@"Localizable"];
    v12 = [(ICDocCamViewController *)self flashButton];
    [v12 setAccessibilityLabel:v40];

    v41 = [(ICDocCamViewController *)self flashButton];
    [v41 setAccessibilityHint:0];
  }

  else
  {
    v42 = [DCLocalization localizedStringForKey:@"Show flash settings" value:@"Show flash settings" table:@"Localizable"];
    v13 = [(ICDocCamViewController *)self flashButton];
    [v13 setAccessibilityLabel:v42];

    v41 = [DCLocalization localizedStringForKey:@"Double-tap to change the flash setting" value:@"Double-tap to change the flash setting" table:@"Localizable"];
    v14 = [(ICDocCamViewController *)self flashButton];
    [v14 setAccessibilityHint:v41];
  }

  v43 = [DCLocalization localizedStringForKey:@"Double-tap to turn flash off" value:@"Double-tap to turn flash off" table:@"Localizable"];
  v15 = [(ICDocCamViewController *)self flashSettingViewOffButton];
  [v15 setAccessibilityHint:v43];

  v44 = [DCLocalization localizedStringForKey:@"Double-tap to turn flash on" value:@"Double-tap to turn flash on" table:@"Localizable"];
  v16 = [(ICDocCamViewController *)self flashSettingViewOnButton];
  [v16 setAccessibilityHint:v44];

  v45 = [DCLocalization localizedStringForKey:@"Double-tap to set flash to auto" value:@"Double-tap to set flash to auto" table:@"Localizable"];
  v17 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
  [v17 setAccessibilityHint:v45];

  v46 = [DCLocalization localizedStringForKey:@"Hide flash settings" value:@"Hide flash settings" table:@"Localizable"];
  v18 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
  [v18 setAccessibilityLabel:v46];

  v47 = [(ICDocCamViewController *)self flashButton];
  v19 = [v47 accessibilityLabel];
  v20 = [(ICDocCamViewController *)self flashButtonForIPhone];
  [v20 setAccessibilityLabel:v19];

  v48 = [(ICDocCamViewController *)self flashButton];
  v21 = [v48 accessibilityHint];
  v22 = [(ICDocCamViewController *)self flashButtonForIPhone];
  [v22 setAccessibilityHint:v21];

  v49 = [(ICDocCamViewController *)self flashButton];
  v23 = [v49 accessibilityValue];
  v24 = [(ICDocCamViewController *)self flashButtonForIPhone];
  [v24 setAccessibilityValue:v23];

  v50 = [(ICDocCamViewController *)self flashSettingViewOffButton];
  [v50 _accessibilitySetIsSpeakThisElement:1];

  v51 = [(ICDocCamViewController *)self flashSettingViewOnButton];
  [v51 _accessibilitySetIsSpeakThisElement:1];

  v52 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
  [v52 _accessibilitySetIsSpeakThisElement:1];

  v53 = [(ICDocCamViewController *)self flashButton];
  v25 = [v53 accessibilityLabel];
  v26 = [(ICDocCamViewController *)self flashButton];
  [v26 setLargeContentTitle:v25];

  v54 = [(ICDocCamViewController *)self flashButtonForIPhone];
  v27 = [v54 accessibilityLabel];
  v28 = [(ICDocCamViewController *)self flashButtonForIPhone];
  [v28 setLargeContentTitle:v27];
}

- (void)updateAccessibilityForAutoShutterMode:(BOOL)a3
{
  v3 = a3;
  v14 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v14 userInterfaceIdiom];

  if (v5)
  {
    v15 = [(ICDocCamViewController *)self autoButton];
    v6 = [v15 accessibilityTraits];
    if (v3)
    {
      v7 = *MEMORY[0x277D76598];
      [v15 setAccessibilityTraits:*MEMORY[0x277D76598] | v6];

      v16 = [(ICDocCamViewController *)self manualButton];
      [v16 setAccessibilityTraits:{objc_msgSend(v16, "accessibilityTraits") & ~v7}];

      v17 = [(ICDocCamViewController *)self autoButton];
      [v17 setAccessibilityHint:0];

      v18 = [DCLocalization localizedStringForKey:@"Double-tap to change shutter mode to manual." value:@"Double-tap to change shutter mode to manual." table:@"Localizable"];
      v8 = [(ICDocCamViewController *)self manualButton];
      [v8 setAccessibilityHint:v18];
    }

    else
    {
      v11 = *MEMORY[0x277D76598];
      [v15 setAccessibilityTraits:v6 & ~*MEMORY[0x277D76598]];

      v20 = [(ICDocCamViewController *)self manualButton];
      [v20 setAccessibilityTraits:{objc_msgSend(v20, "accessibilityTraits") | v11}];

      v21 = [DCLocalization localizedStringForKey:@"Double-tap to change shutter mode to automatic." value:@"Double-tap to change shutter mode to automatic." table:@"Localizable"];
      v12 = [(ICDocCamViewController *)self autoButton];
      [v12 setAccessibilityHint:v21];

      v18 = [(ICDocCamViewController *)self manualButton];
      [v18 setAccessibilityHint:0];
    }
  }

  else
  {
    v19 = [DCLocalization localizedStringForKey:@"Double-tap to toggle shutter mode." value:@"Double-tap to toggle shutter mode." table:@"Localizable"];
    v9 = [(ICDocCamViewController *)self autoButtonForIPhone];
    [v9 setAccessibilityHint:v19];

    v18 = [(ICDocCamViewController *)self autoButtonForIPhone];
    v10 = [v18 accessibilityTraits];
    [v18 setAccessibilityTraits:v10 & ~*MEMORY[0x277D76580]];
  }

  v22 = [DCLocalization localizedStringForKey:@"Take picture" value:@"Take picture" table:@"Localizable"];
  v13 = [(ICDocCamViewController *)self shutterButton];
  [v13 setAccessibilityLabel:v22];
}

- (void)speakLabelTextForAccessibilityIfNecessary:(id)a3 afterDelay:(double)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    do
    {
      v8 = [v7 isHidden];
      if (v8)
      {
        break;
      }

      v9 = [v7 superview];

      v7 = v9;
    }

    while (v9);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v10 = dispatch_time(0, (a4 * 1000000000.0));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__ICDocCamViewController_speakLabelTextForAccessibilityIfNecessary_afterDelay___block_invoke;
  v12[3] = &unk_278F93B00;
  v14 = v8;
  v13 = v6;
  v11 = v6;
  dispatch_after(v10, MEMORY[0x277D85CD0], v12);
}

void __79__ICDocCamViewController_speakLabelTextForAccessibilityIfNecessary_afterDelay___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = [*(a1 + 32) text];
    v3 = [v2 length];

    if (v3)
    {
      v4 = [*(a1 + 32) text];
      argument = [v4 dc_stringByReplacingNewlineCharactersWithWhiteSpace];

      UIAccessibilityPostNotification(*MEMORY[0x277D76438], argument);
    }
  }
}

- (void)updateRecentlyObservedRectanglesWithRect:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(ICDocCamViewController *)self recentRectangleObservations];
    objc_sync_enter(v5);
    v6 = [(ICDocCamViewController *)self recentRectangleObservations];
    [v6 addObject:v4];

    v7 = [(ICDocCamViewController *)self recentRectangleObservations];
    v8 = [v7 count];

    if (v8 < 6)
    {
LABEL_29:
      objc_sync_exit(v5);

      goto LABEL_30;
    }

    v9 = [(ICDocCamViewController *)self recentRectangleObservations];
    [v9 removeObjectAtIndex:0];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v10 = [(ICDocCamViewController *)self recentRectangleObservations];
    v11 = [v10 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v11)
    {
      v12 = *v52;
      v13 = 0.0;
      v49 = 0.0;
      v50 = 0.0;
      v14 = 0.0;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          v48 = v13;
          if (*v52 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v51 + 1) + 8 * i);
          [v16 topLeft];
          v18 = v17;
          [v16 bottomLeft];
          v20 = v19;
          [v16 topLeft];
          v22 = v21;
          [v16 topRight];
          v24 = v23;
          [v16 topRight];
          v26 = v25;
          [v16 bottomRight];
          v28 = v27;
          [v16 bottomLeft];
          v30 = v29;
          [v16 bottomRight];
          v14 = v14 + (v18 + v20) * 0.5;
          v49 = v49 + (v26 + v28) * 0.5;
          v50 = v50 + (v22 + v24) * 0.5;
          v13 = v48 + (v30 + v31) * 0.5;
        }

        v11 = [v10 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v11);
    }

    else
    {
      v13 = 0.0;
      v49 = 0.0;
      v50 = 0.0;
      v14 = 0.0;
    }

    v32 = [(ICDocCamViewController *)self recentRectangleObservations];
    v33 = [v32 count];

    v34 = [(ICDocCamViewController *)self recentRectangleObservations];
    v35 = [v34 count];

    v36 = [(ICDocCamViewController *)self recentRectangleObservations];
    v37 = [v36 count];

    v38 = [(ICDocCamViewController *)self recentRectangleObservations];
    v39 = [v38 count];

    v40 = [MEMORY[0x277CBEAA8] date];
    v41 = [(ICDocCamViewController *)self lastAXPositionAnnouncementDate];
    [v40 timeIntervalSinceDate:v41];
    if (v42 > 2.5)
    {
    }

    else
    {
      v43 = [(ICDocCamViewController *)self lastAXPositionAnnouncementDate];
      v44 = v43 == 0;

      if (!v44)
      {
LABEL_28:

        goto LABEL_29;
      }
    }

    if (v14 / v33 >= 0.075)
    {
      if (v50 / v35 <= 0.925)
      {
        if (v49 / v37 <= 0.925)
        {
          if (v13 / v39 >= 0.075)
          {
            v47 = 0;
            __UIAccessibilitySpeakAndDoNotBeInterrupted([DCLocalization localizedStringForKey:@"Hold camera still" value:@"Hold camera still" table:@"Localizable"]);
LABEL_27:
            [(ICDocCamViewController *)self setLastAXPositionAnnouncementDate:v40];

            goto LABEL_28;
          }

          v45 = @"Move camera slightly down and hold still";
        }

        else
        {
          v45 = @"Move camera slightly right and hold still";
        }
      }

      else
      {
        v45 = @"Move camera slightly up and hold still";
      }
    }

    else
    {
      v45 = @"Move camera slightly left and hold still";
    }

    v46 = [DCLocalization localizedStringForKey:v45 value:v45 table:@"Localizable"];
    if (v46)
    {
      v47 = v46;
      UIAccessibilityPostNotification(*MEMORY[0x277D76438], v46);
    }

    else
    {
      v47 = 0;
    }

    goto LABEL_27;
  }

LABEL_30:
}

void __73__ICDocCamViewController_speakScannedDocumentForAccessibilityIfNecessary__block_invoke()
{
  v0 = [DCLocalization localizedStringForKey:@"Scanned Documents" value:@"Scanned Documents" table:@"Localizable"];
  UIAccessibilityPostNotification(*MEMORY[0x277D76438], v0);
}

- (void)updateAccessibilityEnabledStateForUIElements
{
  v24[7] = *MEMORY[0x277D85DE8];
  if (([objc_opt_class() isLiquidGlassEnabledForCapture] & 1) == 0)
  {
    v3 = [(ICDocCamViewController *)self flashButton];
    v24[0] = v3;
    v4 = [(ICDocCamViewController *)self filterButton];
    v24[1] = v4;
    v5 = [(ICDocCamViewController *)self autoButton];
    v24[2] = v5;
    v6 = [(ICDocCamViewController *)self manualButton];
    v24[3] = v6;
    v7 = [(ICDocCamViewController *)self flashButtonForIPhone];
    v24[4] = v7;
    v8 = [(ICDocCamViewController *)self filterButtonForIPhone];
    v24[5] = v8;
    v9 = [(ICDocCamViewController *)self autoButtonForIPhone];
    v24[6] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:7];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = *v20;
      v14 = *MEMORY[0x277D76580];
      v15 = ~*MEMORY[0x277D76580];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v19 + 1) + 8 * i);
          if ([v17 isEnabled])
          {
            v18 = [v17 accessibilityTraits] & v15;
          }

          else
          {
            v18 = v14 | [v17 accessibilityTraits];
          }

          [v17 setAccessibilityTraits:v18];
        }

        v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

- (void)updateFonts
{
  v3 = *MEMORY[0x277D76918];
  v9 = [MEMORY[0x277D74300] dc_preferredFontForTextStyle:*MEMORY[0x277D76918] adjustedForDefaultSize:16.0];
  v4 = [(ICDocCamViewController *)self userPromptLabel];
  [v4 setFont:v9];

  v10 = [MEMORY[0x277D74300] dc_preferredFontForTextStyle:v3 adjustedForDefaultSize:16.0];
  v5 = [(ICDocCamViewController *)self filterNameFeedbackLabel];
  [v5 setFont:v10];

  v11 = [MEMORY[0x277D74300] dc_preferredFontForTextStyle:v3 adjustedForDefaultSize:14.0];
  v6 = [(ICDocCamViewController *)self autoShutterOnLabel];
  [v6 setFont:v11];

  v12 = [MEMORY[0x277D74300] dc_preferredFontForTextStyle:v3 adjustedForDefaultSize:14.0];
  v7 = [(ICDocCamViewController *)self autoShutterOffLabel];
  [v7 setFont:v12];

  v13 = [MEMORY[0x277D74300] dc_preferredFontForTextStyle:v3 adjustedForDefaultSize:16.0];
  v8 = [(ICDocCamViewController *)self moveCameraCloserLabel];
  [v8 setFont:v13];
}

- (void)didRecognizeRectangleForAccessibility:(BOOL)a3
{
  v3 = a3;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v5 = [(ICDocCamViewController *)self hasCandidateRectanglesForAX];
    if (v3)
    {
      if ((v5 & 1) == 0)
      {
        [(ICDocCamViewController *)self setHasCandidateRectanglesForAX:1];
        [(ICDocCamViewController *)self setAxConsecutiveRecognizerStateCount:1];
      }

      if ([(ICDocCamViewController *)self axConsecutiveRecognizerStateCount]!= 5)
      {
        goto LABEL_17;
      }

      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v6 = getkAXAnnouncementEnteredValidStateSoundSymbolLoc(void)::ptr;
      v13 = getkAXAnnouncementEnteredValidStateSoundSymbolLoc(void)::ptr;
      if (!getkAXAnnouncementEnteredValidStateSoundSymbolLoc(void)::ptr)
      {
        v7 = AXRuntimeLibrary();
        v11[3] = dlsym(v7, "kAXAnnouncementEnteredValidStateSound");
        getkAXAnnouncementEnteredValidStateSoundSymbolLoc(void)::ptr = v11[3];
        v6 = v11[3];
      }

      _Block_object_dispose(&v10, 8);
      if (v6)
      {
        goto LABEL_16;
      }

      v5 = [ICRemoteDocCamViewController viewDidLoad];
    }

    if (v5)
    {
      [(ICDocCamViewController *)self setHasCandidateRectanglesForAX:0];
      [(ICDocCamViewController *)self setAxConsecutiveRecognizerStateCount:1];
    }

    if ([(ICDocCamViewController *)self axConsecutiveRecognizerStateCount]!= 5)
    {
      goto LABEL_17;
    }

    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v6 = getkAXAnnouncementExitedValidStateSoundSymbolLoc(void)::ptr;
    v13 = getkAXAnnouncementExitedValidStateSoundSymbolLoc(void)::ptr;
    if (!getkAXAnnouncementExitedValidStateSoundSymbolLoc(void)::ptr)
    {
      v8 = AXRuntimeLibrary();
      v11[3] = dlsym(v8, "kAXAnnouncementExitedValidStateSound");
      getkAXAnnouncementExitedValidStateSoundSymbolLoc(void)::ptr = v11[3];
      v6 = v11[3];
    }

    _Block_object_dispose(&v10, 8);
    if (!v6)
    {
      v9 = [ICRemoteDocCamViewController viewDidLoad];
      _Block_object_dispose(&v10, 8);
      _Unwind_Resume(v9);
    }

LABEL_16:
    UIAccessibilityPostNotification(*MEMORY[0x277D76438], *v6);
LABEL_17:
    [(ICDocCamViewController *)self setAxConsecutiveRecognizerStateCount:[(ICDocCamViewController *)self axConsecutiveRecognizerStateCount]+ 1];
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = [a3 valueForKey:{@"animationCompletionBlockKey", a4}];
  if (v4)
  {
    v4[2]();
  }
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  if ([(ICDocCamViewController *)self useCustomThumbnailZoomTransition:a3])
  {
    [(ICDocCamViewController *)self setUseCustomThumbnailZoomTransition:0];
    v8 = [ICDocCamThumbnailZoomTransitionAnimator alloc];
    v9 = [(ICDocCamViewController *)self imageForThumbnailZoom];
    v10 = [(ICDocCamViewController *)self indexPathForThumbnailZoom];
    v11 = [(ICDocCamViewController *)self thumbnailZoomCompletionBlock];
    v12 = [(ICDocCamThumbnailZoomTransitionAnimator *)v8 initWithImage:v9 indexPath:v10 duration:v11 completion:0.5];

    [(ICDocCamThumbnailZoomTransitionAnimator *)v12 setPresenting:a4 == 1];
    [(ICDocCamViewController *)self setImageForThumbnailZoom:0];
  }

  else
  {
    v13 = [(ICDocCamViewController *)self useCustomRetakeTransition];
    if (a4 == 2 && v13)
    {
      [(ICDocCamViewController *)self setUseCustomRetakeTransition:0];
      v14 = [ICDocCamRetakeTransitionAnimator alloc];
      v15 = [(ICDocCamViewController *)self imageForRetake];
      v16 = [(ICDocCamViewController *)self indexPathForRetake];
      v17 = [(ICDocCamViewController *)self retakeCompletionBlock];
      v12 = [(ICDocCamRetakeTransitionAnimator *)v14 initWithImage:v15 indexPath:v16 duration:v17 completion:0.28];

      [(ICDocCamThumbnailZoomTransitionAnimator *)v12 setPresenting:0];
      [(ICDocCamViewController *)self setImageForRetake:0];
    }

    else if ([(ICDocCamViewController *)self useCustomRecropTransition])
    {
      v18 = [ICDocCamRecropTransitionAnimator alloc];
      v19 = [(ICDocCamViewController *)self filteredImageForRecrop];
      v20 = [(ICDocCamViewController *)self unfilteredImageForRecrop];
      v21 = [(ICDocCamViewController *)self orientationForRecrop];
      v22 = [(ICDocCamViewController *)self indexPathForRecrop];
      v23 = [(ICDocCamRecropTransitionAnimator *)v18 initWithImage:v19 unfilteredImage:v20 orientation:v21 indexPath:v22 duration:0 completion:0.65];

      [(ICDocCamViewController *)self setFilteredImageForRecrop:0];
      [(ICDocCamViewController *)self setUnfilteredImageForRecrop:0];
      [(ICDocCamRecropTransitionAnimator *)v23 setPresenting:a4 == 1];
      if (![(ICDocCamRecropTransitionAnimator *)v23 presenting])
      {
        [(ICDocCamViewController *)self setUseCustomRecropTransition:0];
      }

      v12 = v23;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (CGRect)zoomTargetForIndexPath:(id)a3
{
  v4 = a3;
  if ([(ICDocCamViewController *)self zoomTargetShouldUseCustomImageFrame])
  {
    [(ICDocCamViewController *)self zoomTargetCustomImageFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = v4;
    v14 = objc_opt_class();
    v15 = [(ICDocCamViewController *)self thumbnailContainerView];
    v16 = [v15 collectionView];
    v17 = [v16 collectionViewLayout];
    v18 = DCDynamicCast(v14, v17);

    if ([v18 compactLayout])
    {
      v19 = MEMORY[0x277CCAA70];
      v20 = [(ICDocCamViewController *)self documentInfoCollection];
      v21 = [v20 docInfos];
      v22 = [v19 indexPathForItem:objc_msgSend(v21 inSection:{"count") - 1, 0}];

      v13 = v22;
    }

    v23 = [(ICDocCamViewController *)self thumbnailViewController];
    v24 = [v23 collectionView];
    v25 = [v24 cellForItemAtIndexPath:v13];

    v26 = [(ICDocCamViewController *)self thumbnailViewController];
    v27 = [v26 collectionView];
    [v25 frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = [(ICDocCamViewController *)self view];
    [v27 convertRect:v36 toView:{v29, v31, v33, v35}];
    v6 = v37;
    v8 = v38;
    v10 = v39;
    v12 = v40;
  }

  v41 = v6;
  v42 = v8;
  v43 = v10;
  v44 = v12;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (void)toggleRecording:(id)a3
{
  v4 = [(ICDocCamViewController *)self recordButton];
  [v4 setEnabled:0];

  v5 = [(ICDocCamViewController *)self movieController];
  v6 = [v5 isRecording];

  if (!v6)
  {
    if ([(ICDocCamViewController *)self autoMode])
    {
      v7 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Scan Movie Recording" message:@"Recording only works with manual shutter mode." preferredStyle:1];
      v8 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
      [v7 setImage:v8];

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __42__ICDocCamViewController_toggleRecording___block_invoke;
      v18[3] = &unk_278F93BF0;
      v18[4] = self;
      v9 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:1 handler:v18];
      [v7 addAction:v9];

      [(ICDocCamViewController *)self presentViewController:v7 animated:1 completion:0];
    }

    else
    {
      if ([(ICDocCamViewController *)self scanMovieRecordingDontShowWarning])
      {
        v14 = [(ICDocCamViewController *)self movieController];
        [v14 startRecording];
        goto LABEL_3;
      }

      v7 = [MEMORY[0x277D75110] alertControllerWithTitle:@"Scan Movie Recording" message:@"Do not:\nRotate device.\nPut app into background.\nInvoke Split View or Slide Over mode.\nDo anything other than hit the Stop button." preferredStyle:1];
      v10 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
      [v7 setImage:v10];

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __42__ICDocCamViewController_toggleRecording___block_invoke_2;
      v17[3] = &unk_278F93BF0;
      v17[4] = self;
      v11 = [MEMORY[0x277D750F8] actionWithTitle:@"Do not show again" style:0 handler:v17];
      [v7 addAction:v11];

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __42__ICDocCamViewController_toggleRecording___block_invoke_3;
      v16[3] = &unk_278F93BF0;
      v16[4] = self;
      v12 = [MEMORY[0x277D750F8] actionWithTitle:@"Cancel" style:1 handler:v16];
      [v7 addAction:v12];

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __42__ICDocCamViewController_toggleRecording___block_invoke_4;
      v15[3] = &unk_278F93BF0;
      v15[4] = self;
      v13 = [MEMORY[0x277D750F8] actionWithTitle:@"OK" style:0 handler:v15];
      [v7 addAction:v13];

      [(ICDocCamViewController *)self presentViewController:v7 animated:1 completion:0];
    }

    return;
  }

  v14 = [(ICDocCamViewController *)self movieController];
  [v14 stopRecording];
LABEL_3:
}

void __42__ICDocCamViewController_toggleRecording___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) recordButton];
  [v1 setEnabled:1];
}

void __42__ICDocCamViewController_toggleRecording___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setScanMovieRecordingDontShowWarning:1];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 setBool:1 forKey:@"internalSettings.docCam.scanMovieRecording.doNotShowWarning"];

  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 synchronize];

  v4 = [*(a1 + 32) movieController];
  [v4 startRecording];
}

void __42__ICDocCamViewController_toggleRecording___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) recordButton];
  [v1 setEnabled:1];
}

void __42__ICDocCamViewController_toggleRecording___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) movieController];
  [v1 startRecording];
}

- (void)enableUIElementsForMovieRecording:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICDocCamViewController *)self flashButton];
  [v5 setEnabled:v3];

  v6 = [(ICDocCamViewController *)self filterButton];
  [v6 setEnabled:v3];

  v7 = [(ICDocCamViewController *)self autoButton];
  [v7 setEnabled:v3];

  v8 = [(ICDocCamViewController *)self manualButton];
  [v8 setEnabled:v3];

  v9 = [(ICDocCamViewController *)self shutterButton];
  [v9 setEnabled:v3];

  v10 = [(ICDocCamViewController *)self cancelButton];
  [v10 setEnabled:v3];

  v11 = [(ICDocCamViewController *)self flashButtonForIPhone];
  [v11 setEnabled:v3];

  v12 = [(ICDocCamViewController *)self filterButtonForIPhone];
  [v12 setEnabled:v3];

  v13 = [(ICDocCamViewController *)self autoButtonForIPhone];
  [v13 setEnabled:v3];

  v14 = [(ICDocCamViewController *)self cancelButtonForIPhone];
  [v14 setEnabled:v3];
}

- (void)showErrorForMovieRecording:(id)a3
{
  v4 = a3;
  Main = CFRunLoopGetMain();
  v6 = *MEMORY[0x277CBF048];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__ICDocCamViewController_showErrorForMovieRecording___block_invoke;
  v8[3] = &unk_278F93EC0;
  v7 = v4;
  v9 = v7;
  v10 = self;
  CFRunLoopPerformBlock(Main, v6, v8);
}

void __53__ICDocCamViewController_showErrorForMovieRecording___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75110];
  v3 = [*(a1 + 32) localizedDescription];
  v4 = [*(a1 + 32) localizedFailureReason];
  v9 = [v2 alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
  [v9 setImage:v5];

  v6 = MEMORY[0x277D750F8];
  v7 = [DCLocalization localizedStringForKey:@"OK" value:@"OK" table:@"Localizable"];
  v8 = [v6 actionWithTitle:v7 style:0 handler:0];
  [v9 addAction:v8];

  [*(a1 + 40) presentViewController:v9 animated:1 completion:0];
}

- (void)pauseCaptureSessionForMovieRecording
{
  v4 = [(ICDocCamViewController *)self session];
  v3 = [v4 isRunning];

  if (v3)
  {
    v5 = [(ICDocCamViewController *)self session];
    [v5 stopRunning];
  }
}

- (void)resumeCaptureSessionForMovieRecording
{
  v4 = [(ICDocCamViewController *)self session];
  v3 = [v4 isRunning];

  if ((v3 & 1) == 0)
  {
    v5 = [(ICDocCamViewController *)self session];
    [v5 startRunning];
  }
}

- (void)enableRecordButton:(BOOL)a3
{
  v3 = a3;
  v4 = [(ICDocCamViewController *)self recordButton];
  [v4 setEnabled:v3];
}

- (void)changeRecordButtonTitle:(id)a3
{
  v5 = a3;
  v4 = [(ICDocCamViewController *)self recordButton];
  [v4 setTitle:v5 forState:0];
}

- (void)createCaptureEventInteractionIfNecessary
{
  v3 = [(ICDocCamViewController *)self captureEventInteraction];

  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x277CB8598]);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __66__ICDocCamViewController_createCaptureEventInteractionIfNecessary__block_invoke;
    v11 = &unk_278F93F10;
    objc_copyWeak(&v12, &location);
    v5 = [v4 initWithEventHandler:&v8];
    [(ICDocCamViewController *)self setCaptureEventInteraction:v5, v8, v9, v10, v11];

    v6 = [(ICDocCamViewController *)self view];
    v7 = [(ICDocCamViewController *)self captureEventInteraction];
    [v6 addInteraction:v7];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __66__ICDocCamViewController_createCaptureEventInteractionIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleCaptureEventInteractionEvent:v3];
}

- (void)handleCaptureEventInteractionEvent:(id)a3
{
  v8 = a3;
  v4 = [(ICDocCamViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 isKeyWindow];

  if (v6)
  {
    v7 = [v8 phase];
    if (v7)
    {
      if (v7 == 1)
      {
        [(ICDocCamViewController *)self handlePhysicalButtonReleased];
      }

      else if (v7 == 2)
      {
        [(ICDocCamViewController *)self handlePhysicalButtonPressCancelled];
      }
    }

    else
    {
      [(ICDocCamViewController *)self handlePhysicalButtonPressed];
    }
  }
}

- (void)handlePhysicalButtonPressed
{
  v4 = [(ICDocCamViewController *)self shutterButton];
  v3 = [v4 isEnabled];
  if (!([v4 isTouchInside] & 1 | ((v3 & 1) == 0)))
  {
    [(ICDocCamViewController *)self setCapturingFromPhysicalButton:1];
    [v4 setHighlighted:1];
  }
}

- (void)handlePhysicalButtonReleased
{
  if ([(ICDocCamViewController *)self capturingFromPhysicalButton])
  {
    v3 = [(ICDocCamViewController *)self shutterButton];
    [v3 setHighlighted:0];
    [(ICDocCamViewController *)self shutterButtonAction:0];
    [(ICDocCamViewController *)self setCapturingFromPhysicalButton:0];
  }
}

- (void)handlePhysicalButtonPressCancelled
{
  if ([(ICDocCamViewController *)self capturingFromPhysicalButton])
  {
    v3 = [(ICDocCamViewController *)self shutterButton];
    [v3 setHighlighted:0];
    [(ICDocCamViewController *)self setCapturingFromPhysicalButton:0];
  }
}

- (void)removeSaveActionBlockerForFiles
{
  v2 = [(ICDocCamViewController *)self processRequestsBlocker];
  [v2 removeBlockerOfType:@"SaveActionBlocker"];
}

- (ICDocCamViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ICDocCamPreviewView)previewView
{
  WeakRetained = objc_loadWeakRetained(&self->_previewView);

  return WeakRetained;
}

- (UIView)cameraUnavailableScrim
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraUnavailableScrim);

  return WeakRetained;
}

- (UIView)cameraUnavailableView
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraUnavailableView);

  return WeakRetained;
}

- (UILabel)cameraUnavailableLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraUnavailableLabel);

  return WeakRetained;
}

- (UIButton)resumeButton
{
  WeakRetained = objc_loadWeakRetained(&self->_resumeButton);

  return WeakRetained;
}

- (ICDocCamShutterButton)shutterButton
{
  WeakRetained = objc_loadWeakRetained(&self->_shutterButton);

  return WeakRetained;
}

- (UIView)autoShutterOnView
{
  WeakRetained = objc_loadWeakRetained(&self->_autoShutterOnView);

  return WeakRetained;
}

- (UILabel)autoShutterOnLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_autoShutterOnLabel);

  return WeakRetained;
}

- (UIView)autoShutterOffView
{
  WeakRetained = objc_loadWeakRetained(&self->_autoShutterOffView);

  return WeakRetained;
}

- (UILabel)autoShutterOffLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_autoShutterOffLabel);

  return WeakRetained;
}

- (NSLayoutConstraint)autoShutterOffTopLayoutConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_autoShutterOffTopLayoutConstraint);

  return WeakRetained;
}

- (UIView)filterNameFeedbackView
{
  WeakRetained = objc_loadWeakRetained(&self->_filterNameFeedbackView);

  return WeakRetained;
}

- (UILabel)filterNameFeedbackLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_filterNameFeedbackLabel);

  return WeakRetained;
}

- (NSLayoutConstraint)flashFeedbackBottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_flashFeedbackBottomConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)filterNameFeedbackBottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_filterNameFeedbackBottomConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)autoShutterOnFeedbackBottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_autoShutterOnFeedbackBottomConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)autoShutterOffFeedbackBottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_autoShutterOffFeedbackBottomConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)userPromptViewVerticalConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_userPromptViewVerticalConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)moveCameraCloserViewVerticalConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_moveCameraCloserViewVerticalConstraint);

  return WeakRetained;
}

- (UIView)liquidGlassControls
{
  WeakRetained = objc_loadWeakRetained(&self->_liquidGlassControls);

  return WeakRetained;
}

- (ICDocCamOverlayView)overlayView
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayView);

  return WeakRetained;
}

- (UIView)userPromptView
{
  WeakRetained = objc_loadWeakRetained(&self->_userPromptView);

  return WeakRetained;
}

- (UILabel)userPromptLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_userPromptLabel);

  return WeakRetained;
}

- (UIView)moveCameraCloserView
{
  WeakRetained = objc_loadWeakRetained(&self->_moveCameraCloserView);

  return WeakRetained;
}

- (UILabel)moveCameraCloserLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_moveCameraCloserLabel);

  return WeakRetained;
}

- (UIView)flashFeedbackView
{
  WeakRetained = objc_loadWeakRetained(&self->_flashFeedbackView);

  return WeakRetained;
}

- (UILabel)flashFeedbackLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_flashFeedbackLabel);

  return WeakRetained;
}

- (UIView)scrimView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrimView);

  return WeakRetained;
}

- (UIButton)cancelButton
{
  WeakRetained = objc_loadWeakRetained(&self->_cancelButton);

  return WeakRetained;
}

- (UIButton)autoButton
{
  WeakRetained = objc_loadWeakRetained(&self->_autoButton);

  return WeakRetained;
}

- (UIButton)manualButton
{
  WeakRetained = objc_loadWeakRetained(&self->_manualButton);

  return WeakRetained;
}

- (UIButton)flashButton
{
  WeakRetained = objc_loadWeakRetained(&self->_flashButton);

  return WeakRetained;
}

- (UIButton)filterButton
{
  WeakRetained = objc_loadWeakRetained(&self->_filterButton);

  return WeakRetained;
}

- (UIView)flashSettingView
{
  WeakRetained = objc_loadWeakRetained(&self->_flashSettingView);

  return WeakRetained;
}

- (UIView)flashSettingButtonView
{
  WeakRetained = objc_loadWeakRetained(&self->_flashSettingButtonView);

  return WeakRetained;
}

- (UIButton)flashSettingViewFlashIcon
{
  WeakRetained = objc_loadWeakRetained(&self->_flashSettingViewFlashIcon);

  return WeakRetained;
}

- (UIButton)flashSettingViewAutoButton
{
  WeakRetained = objc_loadWeakRetained(&self->_flashSettingViewAutoButton);

  return WeakRetained;
}

- (UIButton)flashSettingViewOnButton
{
  WeakRetained = objc_loadWeakRetained(&self->_flashSettingViewOnButton);

  return WeakRetained;
}

- (UIButton)flashSettingViewOffButton
{
  WeakRetained = objc_loadWeakRetained(&self->_flashSettingViewOffButton);

  return WeakRetained;
}

- (NSLayoutConstraint)flashSettingWidthConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_flashSettingWidthConstraint);

  return WeakRetained;
}

- (AVCaptureVideoPreviewLayer)videoPreviewLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_videoPreviewLayer);

  return WeakRetained;
}

- (CGSize)viewBoundsSize
{
  width = self->_viewBoundsSize.width;
  height = self->_viewBoundsSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)segmentTopLeft
{
  objc_copyStruct(v4, &self->_segmentTopLeft, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)segmentTopRight
{
  objc_copyStruct(v4, &self->_segmentTopRight, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)segmentBottomLeft
{
  objc_copyStruct(v4, &self->_segmentBottomLeft, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)segmentBottomRight
{
  objc_copyStruct(v4, &self->_segmentBottomRight, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (UIView)filterView
{
  WeakRetained = objc_loadWeakRetained(&self->_filterView);

  return WeakRetained;
}

- (UIButton)filterViewButton
{
  WeakRetained = objc_loadWeakRetained(&self->_filterViewButton);

  return WeakRetained;
}

- (UIView)filterViewContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_filterViewContainer);

  return WeakRetained;
}

- (UIScrollView)filterScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_filterScrollView);

  return WeakRetained;
}

- (UIView)filterScrollViewContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_filterScrollViewContainer);

  return WeakRetained;
}

- (NSLayoutConstraint)filterViewLeadingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_filterViewLeadingConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)filterViewTrailingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_filterViewTrailingConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)topToolbarForIPhoneHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_topToolbarForIPhoneHeightConstraint);

  return WeakRetained;
}

- (UIView)topToolbarForIPhone
{
  WeakRetained = objc_loadWeakRetained(&self->_topToolbarForIPhone);

  return WeakRetained;
}

- (UIButton)cancelButtonForIPhone
{
  WeakRetained = objc_loadWeakRetained(&self->_cancelButtonForIPhone);

  return WeakRetained;
}

- (UIButton)flashButtonForIPhone
{
  WeakRetained = objc_loadWeakRetained(&self->_flashButtonForIPhone);

  return WeakRetained;
}

- (UIButton)filterButtonForIPhone
{
  WeakRetained = objc_loadWeakRetained(&self->_filterButtonForIPhone);

  return WeakRetained;
}

- (UIButton)autoButtonForIPhone
{
  WeakRetained = objc_loadWeakRetained(&self->_autoButtonForIPhone);

  return WeakRetained;
}

- (CGSize)streamingImageSize
{
  width = self->_streamingImageSize.width;
  height = self->_streamingImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)zoomTargetCustomImageFrame
{
  x = self->_zoomTargetCustomImageFrame.origin.x;
  y = self->_zoomTargetCustomImageFrame.origin.y;
  width = self->_zoomTargetCustomImageFrame.size.width;
  height = self->_zoomTargetCustomImageFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIButton)recordButton
{
  WeakRetained = objc_loadWeakRetained(&self->_recordButton);

  return WeakRetained;
}

- (void)setOverlayFlashMode:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)saveCapturedImage:metaData:rects:constantColor:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_3_834_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_249253000, log, OS_LOG_TYPE_DEBUG, "saveCapturedImage completion docInfo %p croppedAndFilteredImageUUID %@", buf, 0x16u);
}

@end