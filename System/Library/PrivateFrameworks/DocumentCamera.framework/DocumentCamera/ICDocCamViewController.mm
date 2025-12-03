@interface ICDocCamViewController
+ (BOOL)isLiquidGlassEnabledForCapture;
+ (float)cameraIntrinsicMatrixForWidth:(double)width height:(double)height pixelFocalLength:(float)length;
+ (id)deviceWithMediaType:(id)type preferringPosition:(int64_t)position;
+ (void)initialize;
+ (void)registerDefaults;
+ (void)warnAboutMaxScansReachedForViewController:(id)controller completionHandler:(id)handler;
- (AVCaptureVideoPreviewLayer)videoPreviewLayer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isConstantColorAvailable;
- (BOOL)shouldAutoShoot;
- (BOOL)sufficientlyLarge:(id)large forImageSize:(CGSize)size;
- (BOOL)useDocumentSegmentation;
- (BOOL)validRect:(id)rect forImageSize:(CGSize)size;
- (CGPoint)segmentBottomLeft;
- (CGPoint)segmentBottomRight;
- (CGPoint)segmentTopLeft;
- (CGPoint)segmentTopRight;
- (CGRect)targetViewRect;
- (CGRect)zoomTargetCustomImageFrame;
- (CGRect)zoomTargetForIndexPath:(id)path;
- (CGSize)streamingImageSize;
- (CGSize)viewBoundsSize;
- (CIContext)sharedCoreImageContext;
- (ICDocCamOverlayView)overlayView;
- (ICDocCamPreviewView)previewView;
- (ICDocCamShutterButton)shutterButton;
- (ICDocCamViewController)initWithImageCache:(id)cache;
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
- (double)filterScrollViewContentWidthWithInterItemSpacing:(double)spacing startPadding:(double)padding endPadding:(double)endPadding;
- (double)flashSettingViewWidthForIPad;
- (id)createNSDataFrom:(id)from metaData:(id)data;
- (id)cropAndFilterImage:(id)image rects:(id)rects filterType:(signed __int16)type constantColor:(BOOL)color;
- (id)detectRectanglesRequest;
- (id)extractedDocumentControllerMarkupModelDataForDocument:(id)document;
- (id)filterButtonImage;
- (id)filteredImageForDocument:(id)document;
- (id)flashButtonImage;
- (id)flashMenuButtonSizes;
- (id)imageMeshTransformWithImage:(id)image backgroundImage:(id)backgroundImage imageViewFrame:(CGRect)frame imageQuad:(id)quad previewView:(id)view previewBounds:(CGRect)bounds scrimView:(id)scrimView;
- (id)localizedFlashFlashDescription;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (unsigned)imageOrientationFromDevice;
- (void)addNewDocument:(id)document;
- (void)addObserversIfNecessary;
- (void)analyzerCallbackWithDictionaryResults:(id)results;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)cancelAction:(id)action;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)changeFlashAction:(id)action;
- (void)changeRecordButtonTitle:(id)title;
- (void)clearQueue;
- (void)clearRectangles;
- (void)createCaptureEventInteractionIfNecessary;
- (void)dealloc;
- (void)detectRectanglesAndSaveCapturedImage:(__CVBuffer *)image metadata:(id)metadata constantColor:(BOOL)color completionHandler:(id)handler;
- (void)didFinishWithImage:(id)image;
- (void)didRecognizeRectangleForAccessibility:(BOOL)accessibility;
- (void)dismissFilterAndFlashUI;
- (void)dismissFilterUI;
- (void)dismissFlashUI;
- (void)enableRecordButton:(BOOL)button;
- (void)enableShutter:(BOOL)shutter;
- (void)enableShutterButtonIfPossible;
- (void)enableUIElements:(BOOL)elements;
- (void)enableUIElementsForMovieRecording:(BOOL)recording;
- (void)extractedDocumentController:(id)controller didTapRecrop:(id)recrop index:(int64_t)index;
- (void)extractedDocumentController:(id)controller startMarkupOnDocument:(id)document inkStyle:(unint64_t)style startPresentBlock:(id)block dismissCompletionBlock:(id)completionBlock;
- (void)extractedDocumentControllerDidDeleteDocument:(id)document;
- (void)extractedDocumentControllerDidTapDone:(unint64_t)done;
- (void)extractedDocumentControllerDidTapRetake:(unint64_t)retake;
- (void)extractedDocumentControllerDiscardMarkupModelDataForDocument:(id)document;
- (void)filterButtonAction:(id)action;
- (void)filterButtonCancelUI:(id)i;
- (void)filterButtonChoiceAction:(id)action;
- (void)flashButtonAction:(id)action;
- (void)flashButtonCancelUI:(id)i;
- (void)flashFilterButtonNameFeedback;
- (void)flashFlashButtonNameFeedback;
- (void)flashMoveCloserFeedback;
- (void)focusWithMode:(int64_t)mode exposeWithMode:(int64_t)withMode atDevicePoint:(CGPoint)point monitorSubjectAreaChange:(BOOL)change;
- (void)handleCaptureEventInteractionEvent:(id)event;
- (void)handlePhysicalButtonPressCancelled;
- (void)handlePhysicalButtonPressed;
- (void)handlePhysicalButtonReleased;
- (void)hideFilterSettingUI;
- (void)hideFlashSettingUI;
- (void)hideShutter:(BOOL)shutter;
- (void)hideUIForInterruptedSession:(BOOL)session;
- (void)image:(id)image didFinishSavingWithError:(id)error contextInfo:(void *)info;
- (void)initializeFilters;
- (void)initializeUserInterface;
- (void)killFeedbackDisplayIncludingUserPrompts:(BOOL)prompts;
- (void)killFeedbackDisplayInternalIncludingUserPrompts:(BOOL)prompts;
- (void)launchCaptureSession;
- (void)legacyUpdateConstraintsForIPad;
- (void)legacyUpdateConstraintsForIPhone;
- (void)logAlgoChoice;
- (void)markupCancelAction:(id)action;
- (void)markupDoneAction:(id)action;
- (void)modernUpdateConstraintsForIPad;
- (void)modernUpdateConstraintsForIPhone;
- (void)modernUpdatePlacardConstraints;
- (void)myApplicationDidBecomeActive:(id)active;
- (void)myApplicationWillResignActive:(id)active;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)overlayCaptureButtonTapped:(id)tapped;
- (void)overlayCloseButtonTapped:(id)tapped;
- (void)overlayDoneButtonTapped:(id)tapped;
- (void)pauseCaptureSessionForMovieRecording;
- (void)popViewController:(id)controller subtype:(id)subtype duration:(double)duration completion:(id)completion;
- (void)preWarmFilters;
- (void)prepareForDismissal;
- (void)pushViewController:(id)controller type:(id)type subtype:(id)subtype duration:(double)duration completion:(id)completion;
- (void)removeAllNotifications;
- (void)removeNonLiquidGlassViewsIfNecessary;
- (void)removeObserversIfNecessary;
- (void)removeSaveActionBlockerForFiles;
- (void)restartImageCaptureSessionIfNecessary;
- (void)resumeCaptureSessionForMovieRecording;
- (void)resumeInterruptedSession:(id)session;
- (void)retakeButtonWasPressed;
- (void)saveAction:(id)action;
- (void)saveCapturedImage:(id)image metaData:(id)data rects:(id)rects constantColor:(BOOL)color completionHandler:(id)handler;
- (void)sessionInterruptionEnded:(id)ended;
- (void)sessionRuntimeError:(id)error;
- (void)sessionWasInterrupted:(id)interrupted;
- (void)setDoneButtonVisible:(BOOL)visible;
- (void)setFlashMode:(int64_t)mode;
- (void)setOverlayFilter:(signed __int16)filter;
- (void)setOverlayFlashMode:(int64_t)mode;
- (void)setUpFilterScrollView;
- (void)setUpUserDefaults;
- (void)setViewControllers:(id)controllers type:(id)type subtype:(id)subtype duration:(double)duration completion:(id)completion;
- (void)setupAccessibilityInfo;
- (void)setupCaptureSession;
- (void)setupThumbnailViewControllerIfNecessary;
- (void)showErrorForMovieRecording:(id)recording;
- (void)shutterButtonAction:(id)action;
- (void)singleTap;
- (void)snapStillImageWithMode:(int64_t)mode;
- (void)speakLabelTextForAccessibilityIfNecessary:(id)necessary afterDelay:(double)delay;
- (void)stopImageCaptureSession;
- (void)subjectAreaDidChange:(id)change;
- (void)thumbnailViewDidTap:(id)tap;
- (void)toggleAutoCapture:(id)capture;
- (void)toggleRecording:(id)recording;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAccessibilityEnabledStateForUIElements;
- (void)updateAccessibilityFocusForHidingFilterSettingsUI;
- (void)updateAccessibilityFocusForHidingFlashSettingsUI;
- (void)updateAccessibilityForAutoShutterMode:(BOOL)mode;
- (void)updateAccessibilityForCurrentFilter;
- (void)updateAccessibilityForCurrentFlashMode;
- (void)updateAllConstraints;
- (void)updateAutoButtonTitleForAutoMode:(BOOL)mode;
- (void)updateConstraintsForIPad;
- (void)updateConstraintsForIPhone;
- (void)updateFilterAndFlashButtons;
- (void)updateFilterButtonTint;
- (void)updateFilterChoiceButtonScrollPositionAnimated:(BOOL)animated;
- (void)updateFilterChoiceButtonSelection:(signed __int16)selection;
- (void)updateFonts;
- (void)updateLabelColors;
- (void)updateRecentlyObservedRectanglesWithRect:(id)rect;
- (void)updateThumbnailConstraintsForIPhone;
- (void)updateThumbnailContainerConstraintsForIpad;
- (void)updateThumbnailContainerViewConstraintConstantForIPad;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)warnAboutMaxScansIfNecessary;
@end

@implementation ICDocCamViewController

- (id)imageMeshTransformWithImage:(id)image backgroundImage:(id)backgroundImage imageViewFrame:(CGRect)frame imageQuad:(id)quad previewView:(id)view previewBounds:(CGRect)bounds scrimView:(id)scrimView
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v16 = frame.size.height;
  v17 = frame.size.width;
  v18 = frame.origin.y;
  v19 = frame.origin.x;
  scrimViewCopy = scrimView;
  viewCopy = view;
  quadCopy = quad;
  backgroundImageCopy = backgroundImage;
  imageCopy = image;
  v27 = [ICDocCamViewControllerMeshTransform alloc];
  view = [(ICDocCamViewController *)self view];
  height = [(ICDocCamViewControllerMeshTransform *)v27 initWithImage:imageCopy backgroundImage:backgroundImageCopy imageViewFrame:view view:quadCopy imageQuad:viewCopy previewView:scrimViewCopy previewBounds:v19 scrimView:v18, v17, v16, x, y, width, height];

  return height;
}

- (void)pushViewController:(id)controller type:(id)type subtype:(id)subtype duration:(double)duration completion:(id)completion
{
  controllerCopy = controller;
  typeCopy = type;
  subtypeCopy = subtype;
  completionCopy = completion;
  animation = [MEMORY[0x277CDA000] animation];
  if (completionCopy)
  {
    v16 = _Block_copy(completionCopy);
    [animation setValue:v16 forKey:@"animationCompletionBlockKey"];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  [animation setDelegate:selfCopy];
  [animation setRemovedOnCompletion:1];
  [animation setDuration:duration];
  v18 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [animation setTimingFunction:v18];

  [animation setType:typeCopy];
  [animation setSubtype:subtypeCopy];
  navigationController = [(ICDocCamViewController *)self navigationController];
  view = [navigationController view];
  layer = [view layer];
  [layer addAnimation:animation forKey:0];

  navigationController2 = [(ICDocCamViewController *)self navigationController];
  [navigationController2 pushViewController:controllerCopy animated:0];
}

- (void)popViewController:(id)controller subtype:(id)subtype duration:(double)duration completion:(id)completion
{
  controllerCopy = controller;
  subtypeCopy = subtype;
  completionCopy = completion;
  animation = [MEMORY[0x277CDA000] animation];
  if (completionCopy)
  {
    v13 = _Block_copy(completionCopy);
    [animation setValue:v13 forKey:@"animationCompletionBlockKey"];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  [animation setDelegate:selfCopy];
  [animation setRemovedOnCompletion:1];
  [animation setDuration:duration];
  v15 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [animation setTimingFunction:v15];

  [animation setType:controllerCopy];
  [animation setSubtype:subtypeCopy];
  navigationController = [(ICDocCamViewController *)self navigationController];
  view = [navigationController view];
  layer = [view layer];
  [layer addAnimation:animation forKey:0];

  navigationController2 = [(ICDocCamViewController *)self navigationController];
  v20 = [navigationController2 popViewControllerAnimated:0];
}

- (void)setViewControllers:(id)controllers type:(id)type subtype:(id)subtype duration:(double)duration completion:(id)completion
{
  controllersCopy = controllers;
  typeCopy = type;
  subtypeCopy = subtype;
  completionCopy = completion;
  animation = [MEMORY[0x277CDA000] animation];
  if (completionCopy)
  {
    v16 = _Block_copy(completionCopy);
    [animation setValue:v16 forKey:@"animationCompletionBlockKey"];
  }

  [animation setDelegate:self];
  [animation setRemovedOnCompletion:0];
  [animation setDuration:duration];
  v17 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [animation setTimingFunction:v17];

  [animation setType:typeCopy];
  [animation setSubtype:subtypeCopy];
  navigationController = [(ICDocCamViewController *)self navigationController];
  view = [navigationController view];
  layer = [view layer];
  [layer addAnimation:animation forKey:0];

  navigationController2 = [(ICDocCamViewController *)self navigationController];
  [navigationController2 setViewControllers:controllersCopy animated:0];
}

- (CIContext)sharedCoreImageContext
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sharedCoreImageContext = selfCopy->_sharedCoreImageContext;
  if (!sharedCoreImageContext)
  {
    v4 = +[ICDocCamImageFilters sharedCoreImageContext];
    v5 = selfCopy->_sharedCoreImageContext;
    selfCopy->_sharedCoreImageContext = v4;

    sharedCoreImageContext = selfCopy->_sharedCoreImageContext;
  }

  v6 = sharedCoreImageContext;
  objc_sync_exit(selfCopy);

  return v6;
}

+ (float)cameraIntrinsicMatrixForWidth:(double)width height:(double)height pixelFocalLength:(float)length
{
  __asm
  {
    FMOV            V1.2S, #-1.0
    FMOV            V3.4S, #1.0
  }

  return length;
}

+ (void)initialize
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___ICDocCamViewController;
  objc_msgSendSuper2(&v3, sel_initialize);
  if (objc_opt_class() == self)
  {
    +[ICDocCamViewController registerDefaults];
  }
}

+ (void)registerDefaults
{
  v5[23] = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
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
  [standardUserDefaults registerDefaults:v3];
}

- (ICDocCamViewController)initWithImageCache:(id)cache
{
  cacheCopy = cache;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14.receiver = self;
  v14.super_class = ICDocCamViewController;
  v6 = [(ICDocCamViewController *)&v14 initWithNibName:@"ICDocCamViewController" bundle:v5];

  if (v6)
  {
    v7 = objc_alloc_init(ICDocCamDocumentInfoCollection);
    documentInfoCollection = v6->_documentInfoCollection;
    v6->_documentInfoCollection = v7;

    [(ICDocCamViewController *)v6 setImageCache:cacheCopy];
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
  view = [(ICDocCamViewController *)self view];
  tintColor = [view tintColor];
  dc_lighterColor = [tintColor dc_lighterColor];
  cameraHighlightColor = self->_cameraHighlightColor;
  self->_cameraHighlightColor = dc_lighterColor;

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
    view2 = [(ICDocCamViewController *)self view];
    v13 = [(ICDocCamSpinner *)v11 initWithView:view2 minimumDuration:1.0];
    [(ICDocCamViewController *)self setSnapshotSpinner:v13];
  }

  v14 = dispatch_semaphore_create(1);
  [(ICDocCamViewController *)self setFlashAndFilterUISemaphore:v14];

  previewView = [(ICDocCamViewController *)self previewView];
  layer = [previewView layer];
  [layer setOpacity:0.0];

  v17 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_singleTap];
  [(ICDocCamViewController *)self setSingleTapGestureRecognizer:v17];

  singleTapGestureRecognizer = [(ICDocCamViewController *)self singleTapGestureRecognizer];
  [singleTapGestureRecognizer setNumberOfTapsRequired:1];

  singleTapGestureRecognizer2 = [(ICDocCamViewController *)self singleTapGestureRecognizer];
  [singleTapGestureRecognizer2 setDelegate:self];

  view3 = [(ICDocCamViewController *)self view];
  singleTapGestureRecognizer3 = [(ICDocCamViewController *)self singleTapGestureRecognizer];
  [view3 addGestureRecognizer:singleTapGestureRecognizer3];

  [(ICDocCamViewController *)self setSnapStillImageMode:0];
  [(ICDocCamViewController *)self setDefaultFilter:1];
  v22 = [[ICDocCamProcessingBlocker alloc] initWithDelegate:self];
  [(ICDocCamViewController *)self setProcessRequestsBlocker:v22];

  processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
  [processRequestsBlocker addBlockerOfType:@"ViewLifetimeBlocker" clearRectangles:1 clearQueue:1];

  v24 = [[ICDocCamProcessingBlocker alloc] initWithDelegate:self];
  [(ICDocCamViewController *)self setSnapStillImageBlocker:v24];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_myApplicationWillResignActive_ name:*MEMORY[0x277D76768] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_myApplicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

  [(ICDocCamViewController *)self setDidAddAppLifetimeObservers:1];
  [(ICDocCamViewController *)self disableRetakeMode];
  date = [MEMORY[0x277CBEAA8] date];
  [(ICDocCamViewController *)self setLastSubjectAreaChange:date];

  self->_requestTimeSum = 0.0;
  self->_requestTimeIndex = 0;
  *&self->_requestTime[6] = 0u;
  *&self->_requestTime[8] = 0u;
  *&self->_requestTime[2] = 0u;
  *&self->_requestTime[4] = 0u;
  *self->_requestTime = 0u;
  v29 = objc_alloc_init(ICDocCamRectangleResultsQueue);
  [(ICDocCamViewController *)self setRectResultsQueue:v29];

  array = [MEMORY[0x277CBEB18] array];
  [(ICDocCamViewController *)self setRecentRectangleObservations:array];

  [(ICDocCamViewController *)self setOverrideUserInterfaceStyle:2];
  [(ICDocCamViewController *)self initializeUserInterface];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = ICDocCamViewController;
  [(ICDocCamViewController *)&v9 viewWillAppear:appear];
  [(ICDocCamViewController *)self setupThumbnailViewControllerIfNecessary];
  navigationController = [(ICDocCamViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1 animated:0];

  session = [(ICDocCamViewController *)self session];

  if (session)
  {
    [(ICDocCamViewController *)self launchCaptureSession];
  }

  [(ICDocCamViewController *)self updateFonts];
  documentInfoCollection = [(ICDocCamViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  if ([docInfos count])
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

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = ICDocCamViewController;
  [(ICDocCamViewController *)&v8 viewDidAppear:appear];
  session = [(ICDocCamViewController *)self session];

  if (!session)
  {
    [(ICDocCamViewController *)self setupCaptureSession];
    [(ICDocCamViewController *)self launchCaptureSession];
  }

  [(ICDocCamViewController *)self createCaptureEventInteractionIfNecessary];
  [(ICDocCamViewController *)self updateFilterButtonTint];
  processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
  [processRequestsBlocker removeBlockerOfType:@"SaveActionBlocker"];

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setIdleTimerDisabled:1];

  userPromptLabel = [(ICDocCamViewController *)self userPromptLabel];
  [(ICDocCamViewController *)self speakLabelTextForAccessibilityIfNecessary:userPromptLabel afterDelay:3.0];

  [(ICDocCamViewController *)self logAlgoChoice];
}

- (void)removeNonLiquidGlassViewsIfNecessary
{
  if ([objc_opt_class() isLiquidGlassEnabledForCapture])
  {
    autoButtonForIPhone = [(ICDocCamViewController *)self autoButtonForIPhone];
    [autoButtonForIPhone removeFromSuperview];

    autoButton = [(ICDocCamViewController *)self autoButton];
    [autoButton removeFromSuperview];

    manualButton = [(ICDocCamViewController *)self manualButton];
    [manualButton removeFromSuperview];

    cancelButton = [(ICDocCamViewController *)self cancelButton];
    [cancelButton removeFromSuperview];

    cancelButtonForIPhone = [(ICDocCamViewController *)self cancelButtonForIPhone];
    [cancelButtonForIPhone removeFromSuperview];

    flashButton = [(ICDocCamViewController *)self flashButton];
    [flashButton removeFromSuperview];

    flashButtonForIPhone = [(ICDocCamViewController *)self flashButtonForIPhone];
    [flashButtonForIPhone removeFromSuperview];

    filterButton = [(ICDocCamViewController *)self filterButton];
    [filterButton removeFromSuperview];

    filterButtonForIPhone = [(ICDocCamViewController *)self filterButtonForIPhone];
    [filterButtonForIPhone removeFromSuperview];

    shutterButton = [(ICDocCamViewController *)self shutterButton];
    [shutterButton removeFromSuperview];

    topToolbarForIPhone = [(ICDocCamViewController *)self topToolbarForIPhone];
    [topToolbarForIPhone removeFromSuperview];

    saveButton = [(ICDocCamViewController *)self saveButton];
    [saveButton removeFromSuperview];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = ICDocCamViewController;
  [(ICDocCamViewController *)&v5 viewWillDisappear:disappear];
  processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
  [processRequestsBlocker addBlockerOfType:@"ViewLifetimeBlocker" clearRectangles:1 clearQueue:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  sessionQueue = [(ICDocCamViewController *)self sessionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ICDocCamViewController_viewDidDisappear___block_invoke;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_async(sessionQueue, block);

  v15.receiver = self;
  v15.super_class = ICDocCamViewController;
  [(ICDocCamViewController *)&v15 viewDidDisappear:disappearCopy];
  previewView = [(ICDocCamViewController *)self previewView];
  layer = [previewView layer];
  [layer setOpacity:0.0];

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setIdleTimerDisabled:0];

  presentedViewController = [(ICDocCamViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    thumbnailViewController = [(ICDocCamViewController *)self thumbnailViewController];
    [thumbnailViewController willMoveToParentViewController:0];

    thumbnailViewController2 = [(ICDocCamViewController *)self thumbnailViewController];
    [thumbnailViewController2 removeFromParentViewController];

    thumbnailViewController3 = [(ICDocCamViewController *)self thumbnailViewController];
    collectionView = [thumbnailViewController3 collectionView];
    [collectionView removeFromSuperview];

    [(ICDocCamViewController *)self setThumbnailViewController:0];
  }

  captureEventInteraction = [(ICDocCamViewController *)self captureEventInteraction];
  [captureEventInteraction setEnabled:0];
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
  view = [(ICDocCamViewController *)self view];
  [view bounds];
  [(ICDocCamViewController *)self setViewBoundsSize:v4, v5];

  view2 = [(ICDocCamViewController *)self view];
  window = [view2 window];
  windowScene = [window windowScene];
  -[ICDocCamViewController setStatusBarOrientation:](self, "setStatusBarOrientation:", [windowScene interfaceOrientation]);

  view3 = [(ICDocCamViewController *)self view];
  tintColor = [view3 tintColor];
  dc_lighterColor = [tintColor dc_lighterColor];
  cameraHighlightColor = self->_cameraHighlightColor;
  self->_cameraHighlightColor = dc_lighterColor;

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
  view = [(ICDocCamViewController *)self view];
  [view setNeedsUpdateConstraints];

  v4.receiver = self;
  v4.super_class = ICDocCamViewController;
  [(ICDocCamViewController *)&v4 viewSafeAreaInsetsDidChange];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = ICDocCamViewController;
  [(ICDocCamViewController *)&v5 traitCollectionDidChange:changeCopy];
  [(ICDocCamViewController *)self updateLabelColors];
}

- (void)initializeUserInterface
{
  scanMovieRecordingEnabled = [(ICDocCamViewController *)self scanMovieRecordingEnabled];
  recordButton = [(ICDocCamViewController *)self recordButton];
  v204 = recordButton;
  if (scanMovieRecordingEnabled)
  {
    [recordButton setEnabled:1];

    recordButton2 = [(ICDocCamViewController *)self recordButton];
    [recordButton2 setHidden:0];
  }

  else
  {
    [recordButton setEnabled:0];

    recordButton2 = [(ICDocCamViewController *)self recordButton];
    [recordButton2 setHidden:1];
  }

  view = [(ICDocCamViewController *)self view];
  window = [view window];
  _applicationKeyWindow = window;
  if (!window)
  {
    _applicationKeyWindow = [MEMORY[0x277D75DA0] _applicationKeyWindow];
  }

  windowScene = [_applicationKeyWindow windowScene];
  -[ICDocCamViewController setStatusBarOrientation:](self, "setStatusBarOrientation:", [windowScene interfaceOrientation]);

  if (!window)
  {
  }

  [(ICDocCamViewController *)self setEdgesForExtendedLayout:15];
  [(ICDocCamViewController *)self setExtendedLayoutIncludesOpaqueBars:0];
  navigationController = [(ICDocCamViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setBarStyle:0];

  dc_barColor = [MEMORY[0x277D75348] dc_barColor];
  navigationController2 = [(ICDocCamViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setBarTintColor:dc_barColor];

  [(ICDocCamViewController *)self setNeedsStatusBarAppearanceUpdate];
  v209 = [ICDocCamSaveButton buttonWithType:1];
  [(ICDocCamViewController *)self setSaveButton:?];

  saveButton = [(ICDocCamViewController *)self saveButton];
  [saveButton setTranslatesAutoresizingMaskIntoConstraints:0];

  [(ICDocCamViewController *)self setDoneButtonVisible:0];
  view2 = [(ICDocCamViewController *)self view];
  saveButton2 = [(ICDocCamViewController *)self saveButton];
  [view2 addSubview:saveButton2];

  documentInfoCollection = [(ICDocCamViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v13 = [docInfos count];
  saveButton3 = [(ICDocCamViewController *)self saveButton];
  [saveButton3 setDocumentCount:v13];

  saveButton4 = [(ICDocCamViewController *)self saveButton];
  [saveButton4 addTarget:self action:sel_saveAction_ forControlEvents:64];

  autoShutterOnView = [(ICDocCamViewController *)self autoShutterOnView];
  [autoShutterOnView setHidden:0];

  autoShutterOnView2 = [(ICDocCamViewController *)self autoShutterOnView];
  [autoShutterOnView2 setAlpha:1.0];

  autoShutterOnView3 = [(ICDocCamViewController *)self autoShutterOnView];
  layer = [autoShutterOnView3 layer];
  [layer setOpacity:0.0];

  autoShutterOffView = [(ICDocCamViewController *)self autoShutterOffView];
  [autoShutterOffView setHidden:0];

  autoShutterOffView2 = [(ICDocCamViewController *)self autoShutterOffView];
  [autoShutterOffView2 setAlpha:1.0];

  autoShutterOffView3 = [(ICDocCamViewController *)self autoShutterOffView];
  layer2 = [autoShutterOffView3 layer];
  [layer2 setOpacity:0.0];

  filterNameFeedbackView = [(ICDocCamViewController *)self filterNameFeedbackView];
  [filterNameFeedbackView setHidden:0];

  filterNameFeedbackView2 = [(ICDocCamViewController *)self filterNameFeedbackView];
  [filterNameFeedbackView2 setAlpha:1.0];

  filterNameFeedbackView3 = [(ICDocCamViewController *)self filterNameFeedbackView];
  layer3 = [filterNameFeedbackView3 layer];
  [layer3 setOpacity:0.0];

  moveCameraCloserView = [(ICDocCamViewController *)self moveCameraCloserView];
  [moveCameraCloserView setHidden:0];

  moveCameraCloserView2 = [(ICDocCamViewController *)self moveCameraCloserView];
  [moveCameraCloserView2 setAlpha:1.0];

  moveCameraCloserView3 = [(ICDocCamViewController *)self moveCameraCloserView];
  layer4 = [moveCameraCloserView3 layer];
  [layer4 setOpacity:0.0];

  flashFeedbackView = [(ICDocCamViewController *)self flashFeedbackView];
  [flashFeedbackView setHidden:0];

  flashFeedbackView2 = [(ICDocCamViewController *)self flashFeedbackView];
  [flashFeedbackView2 setAlpha:1.0];

  flashFeedbackView3 = [(ICDocCamViewController *)self flashFeedbackView];
  layer5 = [flashFeedbackView3 layer];
  [layer5 setOpacity:0.0];

  [(ICDocCamViewController *)self setFilterSettingUIShowing:0];
  cameraUnavailableScrim = [(ICDocCamViewController *)self cameraUnavailableScrim];
  [cameraUnavailableScrim setHidden:1];

  blackColor = [MEMORY[0x277D75348] blackColor];
  autoShutterOnLabel = [(ICDocCamViewController *)self autoShutterOnLabel];
  [autoShutterOnLabel setTextColor:blackColor];

  blackColor2 = [MEMORY[0x277D75348] blackColor];
  autoShutterOffLabel = [(ICDocCamViewController *)self autoShutterOffLabel];
  [autoShutterOffLabel setTextColor:blackColor2];

  blackColor3 = [MEMORY[0x277D75348] blackColor];
  filterNameFeedbackLabel = [(ICDocCamViewController *)self filterNameFeedbackLabel];
  [filterNameFeedbackLabel setTextColor:blackColor3];

  blackColor4 = [MEMORY[0x277D75348] blackColor];
  flashFeedbackLabel = [(ICDocCamViewController *)self flashFeedbackLabel];
  [flashFeedbackLabel setTextColor:blackColor4];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    flashSettingViewFlashIcon = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
    [flashSettingViewFlashIcon setHidden:1];

    filterViewButton = [(ICDocCamViewController *)self filterViewButton];
    [filterViewButton setHidden:1];

    filterViewContainer = [(ICDocCamViewController *)self filterViewContainer];
    [filterViewContainer setHidden:0];

    filterViewButton2 = [(ICDocCamViewController *)self filterViewButton];
    [filterViewButton2 removeFromSuperview];

    [(ICDocCamViewController *)self setFilterViewButton:0];
  }

  else
  {
    filterButton = [(ICDocCamViewController *)self filterButton];
    [filterButton setHidden:1];
  }

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if (userInterfaceIdiom2)
  {
    flashSettingView = [(ICDocCamViewController *)self flashSettingView];
    layer6 = [flashSettingView layer];
    [layer6 setShadowRadius:0.0];

    flashSettingView2 = [(ICDocCamViewController *)self flashSettingView];
    layer7 = [flashSettingView2 layer];
    LODWORD(v28) = 1050253722;
    [layer7 setShadowOpacity:v28];

    flashSettingView3 = [(ICDocCamViewController *)self flashSettingView];
    layer8 = [flashSettingView3 layer];
    [layer8 setShadowOffset:{0.0, 0.0}];

    flashSettingView4 = [(ICDocCamViewController *)self flashSettingView];
    layer9 = [flashSettingView4 layer];
    [layer9 setMasksToBounds:0];

    flashSettingView5 = [(ICDocCamViewController *)self flashSettingView];
    layer10 = [flashSettingView5 layer];
    [layer10 setCornerRadius:13.0];

    flashSettingView6 = [(ICDocCamViewController *)self flashSettingView];
    layer11 = [flashSettingView6 layer];
    [layer11 setBorderWidth:0.0];
  }

  else
  {
    flashSettingView6 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.5];
    layer11 = [(ICDocCamViewController *)self flashSettingView];
    [layer11 setBackgroundColor:flashSettingView6];
  }

  [(ICDocCamViewController *)self setFlashMode:2];
  flashButtonImage = [(ICDocCamViewController *)self flashButtonImage];
  flashButton = [(ICDocCamViewController *)self flashButton];
  [flashButton setImage:flashButtonImage forState:0];

  flashButtonForIPhone = [(ICDocCamViewController *)self flashButtonForIPhone];
  [flashButtonForIPhone setImage:flashButtonImage forState:0];

  flashButton2 = [(ICDocCamViewController *)self flashButton];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [flashButton2 setTintColor:whiteColor];

  flashButtonForIPhone2 = [(ICDocCamViewController *)self flashButtonForIPhone];
  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  [flashButtonForIPhone2 setTintColor:whiteColor2];

  flashButtonForIPhone3 = [(ICDocCamViewController *)self flashButtonForIPhone];
  [flashButtonForIPhone3 setLargeContentImage:flashButtonImage];

  [(ICDocCamViewController *)self setAutoMode:1];
  if ([(ICDocCamViewController *)self autoMode])
  {
    userPromptView = [(ICDocCamViewController *)self userPromptView];
    [userPromptView setHidden:0];
  }

  else
  {
    [(ICDocCamViewController *)self hideShutter:0];
    userPromptView = [(ICDocCamViewController *)self userPromptView];
    [userPromptView setHidden:1];
  }

  flashFeedbackView4 = [(ICDocCamViewController *)self flashFeedbackView];
  [flashFeedbackView4 setHidden:1];

  autoMode = [(ICDocCamViewController *)self autoMode];
  overlayView = [(ICDocCamViewController *)self overlayView];
  [overlayView setShowGridAnimation:autoMode];

  cameraHighlightColor = [(ICDocCamViewController *)self cameraHighlightColor];
  overlayView2 = [(ICDocCamViewController *)self overlayView];
  [overlayView2 setRectColor:cameraHighlightColor];

  if ((DCDebugInterfaceEnabled() & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "userInterfaceIdiom"), v46, v47 == 1))
  {
    flashButton3 = [(ICDocCamViewController *)self flashButton];
    layer12 = [flashButton3 layer];
    [layer12 setShadowOpacity:0.0];

    flashButton4 = [(ICDocCamViewController *)self flashButton];
    layer13 = [flashButton4 layer];
    [layer13 setShadowRadius:0.0];
  }

  v52 = [MEMORY[0x277CE5AC8] defaultDeviceWithMediaType:*MEMORY[0x277CE5EA8]];
  if ([v52 hasFlash])
  {
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

    flashSettingView7 = [(ICDocCamViewController *)self flashSettingView];
    if (userInterfaceIdiom3)
    {
      [flashSettingView7 setHidden:0];
    }

    else
    {
      [flashSettingView7 setHidden:1];
    }
  }

  else
  {
    flashButton5 = [(ICDocCamViewController *)self flashButton];
    [flashButton5 setHidden:1];

    flashSettingView7 = [(ICDocCamViewController *)self flashSettingView];
    [flashSettingView7 setHidden:1];
  }

  [(ICDocCamViewController *)self enableUIElements:0];
  [(ICDocCamViewController *)self initializeFilters];
  if ([objc_opt_class() isLiquidGlassEnabledForCapture])
  {
    v57 = [[DCCaptureControlsOverlayViewController alloc] initWithNibName:0 bundle:0];
    [(ICDocCamViewController *)self setLiquidGlassEvolutionControlsOverlayViewController:v57];

    liquidGlassEvolutionControlsOverlayViewController = [(ICDocCamViewController *)self liquidGlassEvolutionControlsOverlayViewController];
    [liquidGlassEvolutionControlsOverlayViewController setDelegate:self];

    liquidGlassEvolutionControlsOverlayViewController2 = [(ICDocCamViewController *)self liquidGlassEvolutionControlsOverlayViewController];
    [(ICDocCamViewController *)self addChildViewController:liquidGlassEvolutionControlsOverlayViewController2];

    liquidGlassControls = [(ICDocCamViewController *)self liquidGlassControls];
    liquidGlassEvolutionControlsOverlayViewController3 = [(ICDocCamViewController *)self liquidGlassEvolutionControlsOverlayViewController];
    view3 = [liquidGlassEvolutionControlsOverlayViewController3 view];
    [liquidGlassControls addSubview:view3];

    liquidGlassEvolutionControlsOverlayViewController4 = [(ICDocCamViewController *)self liquidGlassEvolutionControlsOverlayViewController];
    view4 = [liquidGlassEvolutionControlsOverlayViewController4 view];
    [view4 dc_addConstraintsToFillSuperview];

    liquidGlassEvolutionControlsOverlayViewController5 = [(ICDocCamViewController *)self liquidGlassEvolutionControlsOverlayViewController];
    [liquidGlassEvolutionControlsOverlayViewController5 didMoveToParentViewController:self];

    liquidGlassControls2 = [(ICDocCamViewController *)self liquidGlassControls];
    [liquidGlassControls2 setUserInteractionEnabled:1];

    liquidGlassEvolutionControlsOverlayViewController6 = [(ICDocCamViewController *)self liquidGlassEvolutionControlsOverlayViewController];
    view5 = [liquidGlassEvolutionControlsOverlayViewController6 view];
    [view5 setUserInteractionEnabled:1];
  }

  else
  {
    [(ICDocCamViewController *)self enableShutter:0];
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

    if (userInterfaceIdiom4)
    {
      [(ICDocCamViewController *)self topToolbarForIPhone];
    }

    else
    {
      cancelButton = [(ICDocCamViewController *)self cancelButton];
      [cancelButton setHidden:1];

      flashButton6 = [(ICDocCamViewController *)self flashButton];
      [flashButton6 setHidden:1];

      filterButton2 = [(ICDocCamViewController *)self filterButton];
      [filterButton2 setHidden:1];

      autoButton = [(ICDocCamViewController *)self autoButton];
      [autoButton setHidden:1];

      [(ICDocCamViewController *)self manualButton];
    }
    v71 = ;
    [v71 setHidden:1];

    if ((DCDebugInterfaceEnabled() & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v76 = objc_claimAutoreleasedReturnValue(), v77 = objc_msgSend(v76, "userInterfaceIdiom"), v76, v77 == 1))
    {
      autoButton2 = [(ICDocCamViewController *)self autoButton];
      [autoButton2 sizeToFit];

      manualButton = [(ICDocCamViewController *)self manualButton];
      [manualButton sizeToFit];

      v80 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
      clearColor = [MEMORY[0x277D75348] clearColor];
      whiteColor3 = [MEMORY[0x277D75348] whiteColor];
      cGColor = [whiteColor3 CGColor];
      flashSettingView8 = [(ICDocCamViewController *)self flashSettingView];
      layer14 = [flashSettingView8 layer];
      [layer14 setBorderColor:cGColor];

      flashSettingView9 = [(ICDocCamViewController *)self flashSettingView];
      layer15 = [flashSettingView9 layer];
      [layer15 setBorderWidth:0.0];

      flashSettingView10 = [(ICDocCamViewController *)self flashSettingView];
      [flashSettingView10 frame];
      v90 = v89;
      flashSettingView11 = [(ICDocCamViewController *)self flashSettingView];
      layer16 = [flashSettingView11 layer];
      [layer16 setCornerRadius:v90 * 0.5];

      flashSettingView12 = [(ICDocCamViewController *)self flashSettingView];
      [flashSettingView12 setBackgroundColor:v80];

      whiteColor4 = [MEMORY[0x277D75348] whiteColor];
      cGColor2 = [whiteColor4 CGColor];
      autoButton3 = [(ICDocCamViewController *)self autoButton];
      layer17 = [autoButton3 layer];
      [layer17 setBorderColor:cGColor2];

      autoButton4 = [(ICDocCamViewController *)self autoButton];
      layer18 = [autoButton4 layer];
      [layer18 setBorderWidth:0.0];

      autoButton5 = [(ICDocCamViewController *)self autoButton];
      [autoButton5 frame];
      v102 = v101;
      autoButton6 = [(ICDocCamViewController *)self autoButton];
      layer19 = [autoButton6 layer];
      [layer19 setCornerRadius:v102 * 0.5];

      if ([(ICDocCamViewController *)self autoMode])
      {
        v105 = v80;
      }

      else
      {
        v105 = clearColor;
      }

      cGColor3 = [v105 CGColor];
      autoButton7 = [(ICDocCamViewController *)self autoButton];
      layer20 = [autoButton7 layer];
      [layer20 setBackgroundColor:cGColor3];

      whiteColor5 = [MEMORY[0x277D75348] whiteColor];
      cGColor4 = [whiteColor5 CGColor];
      manualButton2 = [(ICDocCamViewController *)self manualButton];
      layer21 = [manualButton2 layer];
      [layer21 setBorderColor:cGColor4];

      manualButton3 = [(ICDocCamViewController *)self manualButton];
      layer22 = [manualButton3 layer];
      [layer22 setBorderWidth:0.0];

      manualButton4 = [(ICDocCamViewController *)self manualButton];
      [manualButton4 frame];
      v117 = v116;
      manualButton5 = [(ICDocCamViewController *)self manualButton];
      layer23 = [manualButton5 layer];
      [layer23 setCornerRadius:v117 * 0.5];

      if ([(ICDocCamViewController *)self autoMode])
      {
        v120 = clearColor;
      }

      else
      {
        v120 = v80;
      }

      cGColor5 = [v120 CGColor];
      manualButton6 = [(ICDocCamViewController *)self manualButton];
      layer24 = [manualButton6 layer];
      [layer24 setBackgroundColor:cGColor5];

      whiteColor6 = [MEMORY[0x277D75348] whiteColor];
      cGColor6 = [whiteColor6 CGColor];
      filterViewContainer2 = [(ICDocCamViewController *)self filterViewContainer];
      layer25 = [filterViewContainer2 layer];
      [layer25 setBorderColor:cGColor6];

      filterViewContainer3 = [(ICDocCamViewController *)self filterViewContainer];
      layer26 = [filterViewContainer3 layer];
      [layer26 setBorderWidth:0.0];

      filterViewContainer4 = [(ICDocCamViewController *)self filterViewContainer];
      [filterViewContainer4 frame];
      v132 = v131;
      filterViewContainer5 = [(ICDocCamViewController *)self filterViewContainer];
      layer27 = [filterViewContainer5 layer];
      [layer27 setCornerRadius:v132 * 0.5];

      filterViewContainer6 = [(ICDocCamViewController *)self filterViewContainer];
      [filterViewContainer6 setBackgroundColor:v80];
    }

    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom5 = [currentDevice5 userInterfaceIdiom];

    v138 = MEMORY[0x277D74418];
    if (!userInterfaceIdiom5)
    {
      v139 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74418]];
      cancelButton2 = [(ICDocCamViewController *)self cancelButton];
      titleLabel = [cancelButton2 titleLabel];
      [titleLabel setFont:v139];
    }

    saveButton5 = [(ICDocCamViewController *)self saveButton];
    layer28 = [saveButton5 layer];
    [layer28 setMasksToBounds:0];

    blackColor5 = [MEMORY[0x277D75348] blackColor];
    cGColor7 = [blackColor5 CGColor];
    saveButton6 = [(ICDocCamViewController *)self saveButton];
    layer29 = [saveButton6 layer];
    [layer29 setShadowColor:cGColor7];

    saveButton7 = [(ICDocCamViewController *)self saveButton];
    layer30 = [saveButton7 layer];
    LODWORD(v150) = 1047904911;
    [layer30 setShadowOpacity:v150];

    saveButton8 = [(ICDocCamViewController *)self saveButton];
    layer31 = [saveButton8 layer];
    [layer31 setShadowRadius:2.0];

    saveButton9 = [(ICDocCamViewController *)self saveButton];
    layer32 = [saveButton9 layer];
    [layer32 setShadowOffset:{0.0, 0.0}];

    saveButton10 = [(ICDocCamViewController *)self saveButton];
    [saveButton10 sizeToFit];

    cancelButton3 = [(ICDocCamViewController *)self cancelButton];
    layer33 = [cancelButton3 layer];
    [layer33 setMasksToBounds:0];

    blackColor6 = [MEMORY[0x277D75348] blackColor];
    cGColor8 = [blackColor6 CGColor];
    cancelButton4 = [(ICDocCamViewController *)self cancelButton];
    layer34 = [cancelButton4 layer];
    [layer34 setShadowColor:cGColor8];

    cancelButton5 = [(ICDocCamViewController *)self cancelButton];
    layer35 = [cancelButton5 layer];
    LODWORD(v164) = 1053609165;
    [layer35 setShadowOpacity:v164];

    cancelButton6 = [(ICDocCamViewController *)self cancelButton];
    layer36 = [cancelButton6 layer];
    [layer36 setShadowRadius:2.0];

    cancelButton7 = [(ICDocCamViewController *)self cancelButton];
    layer37 = [cancelButton7 layer];
    [layer37 setShadowOffset:{0.0, 1.0}];

    if ((DCDebugInterfaceEnabled() & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v169 = objc_claimAutoreleasedReturnValue(), v170 = objc_msgSend(v169, "userInterfaceIdiom"), v169, v170 == 1))
    {
      v171 = *v138;
      v172 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:*v138];
      flashSettingViewOnButton = [(ICDocCamViewController *)self flashSettingViewOnButton];
      titleLabel2 = [flashSettingViewOnButton titleLabel];
      [titleLabel2 setFont:v172];

      v175 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:v171];
      flashSettingViewOffButton = [(ICDocCamViewController *)self flashSettingViewOffButton];
      titleLabel3 = [flashSettingViewOffButton titleLabel];
      [titleLabel3 setFont:v175];

      v178 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:v171];
      flashSettingViewAutoButton = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      titleLabel4 = [flashSettingViewAutoButton titleLabel];
      [titleLabel4 setFont:v178];
    }

    else
    {
      v181 = *MEMORY[0x277D74410];
      v182 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:*MEMORY[0x277D74410]];
      flashSettingViewOnButton2 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      titleLabel5 = [flashSettingViewOnButton2 titleLabel];
      [titleLabel5 setFont:v182];

      v185 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:v181];
      flashSettingViewOffButton2 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      titleLabel6 = [flashSettingViewOffButton2 titleLabel];
      [titleLabel6 setFont:v185];

      v178 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:v181];
      flashSettingViewAutoButton = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      titleLabel4 = [flashSettingViewAutoButton titleLabel];
      [titleLabel4 setFont:v178];
    }

    filterViewContainer7 = [(ICDocCamViewController *)self filterViewContainer];
    [filterViewContainer7 setAccessibilityLabel:@"Filter View Container"];

    filterView = [(ICDocCamViewController *)self filterView];
    [filterView setAccessibilityLabel:@"Filter View"];

    filterScrollViewContainer = [(ICDocCamViewController *)self filterScrollViewContainer];
    [filterScrollViewContainer setAccessibilityLabel:@"Filter Scroll View Container"];

    filterScrollView = [(ICDocCamViewController *)self filterScrollView];
    [filterScrollView setAccessibilityLabel:@"Filter Scroll View"];

    flashSettingView13 = [(ICDocCamViewController *)self flashSettingView];
    [flashSettingView13 setAccessibilityLabel:@"Flash Setting View"];

    flashSettingButtonView = [(ICDocCamViewController *)self flashSettingButtonView];
    [flashSettingButtonView setAccessibilityLabel:@"Flash Setting Button View"];

    autoButton8 = [(ICDocCamViewController *)self autoButton];
    [autoButton8 _accessibilitySetInterfaceStyleIntent:2];

    manualButton7 = [(ICDocCamViewController *)self manualButton];
    [manualButton7 _accessibilitySetInterfaceStyleIntent:2];

    flashButton7 = [(ICDocCamViewController *)self flashButton];
    [flashButton7 _accessibilitySetInterfaceStyleIntent:2];

    flashButtonForIPhone4 = [(ICDocCamViewController *)self flashButtonForIPhone];
    [flashButtonForIPhone4 _accessibilitySetInterfaceStyleIntent:2];

    flashSettingViewFlashIcon2 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
    [flashSettingViewFlashIcon2 _accessibilitySetInterfaceStyleIntent:2];

    flashSettingViewAutoButton2 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
    [flashSettingViewAutoButton2 _accessibilitySetInterfaceStyleIntent:2];

    flashSettingViewOnButton3 = [(ICDocCamViewController *)self flashSettingViewOnButton];
    [flashSettingViewOnButton3 _accessibilitySetInterfaceStyleIntent:2];

    flashSettingViewOffButton3 = [(ICDocCamViewController *)self flashSettingViewOffButton];
    [flashSettingViewOffButton3 _accessibilitySetInterfaceStyleIntent:2];

    [(ICDocCamViewController *)self updateLabelColors];
    [(ICDocCamViewController *)self setupAccessibilityInfo];
    cancelButton8 = [(ICDocCamViewController *)self cancelButton];
    v203 = objc_alloc_init(MEMORY[0x277D75870]);
    [cancelButton8 addInteraction:v203];

    liquidGlassEvolutionControlsOverlayViewController6 = [(ICDocCamViewController *)self saveButton];
    view5 = objc_alloc_init(MEMORY[0x277D75870]);
    [liquidGlassEvolutionControlsOverlayViewController6 addInteraction:view5];
  }
}

- (void)setUpUserDefaults
{
  [(ICDocCamViewController *)self setSegmentTopLeft:0.0, 0.0];
  [(ICDocCamViewController *)self setSegmentTopRight:0.0, 0.0];
  [(ICDocCamViewController *)self setSegmentBottomLeft:0.0, 0.0];
  [(ICDocCamViewController *)self setSegmentBottomRight:0.0, 0.0];
  [(ICDocCamViewController *)self setSegmentMeanComputed:0];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults floatForKey:@"internalSettings.docCam.rectangle.segmentFudgeFactor"];
  [(ICDocCamViewController *)self setSegmentationFudgeFactor:?];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 floatForKey:@"internalSettings.docCam.rectangle.segmentVisualConfidence"];
  [(ICDocCamViewController *)self setSegmentMinimumVisualConfidence:?];

  standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults3 floatForKey:@"internalSettings.docCam.rectangle.segmentVisualConfidence60Frames"];
  [(ICDocCamViewController *)self setSegmentMinimumVisualConfidence60Frames:?];

  standardUserDefaults4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults4 floatForKey:@"internalSettings.docCam.rectangle.segmentVisualConfidenceFinalScan"];
  [(ICDocCamViewController *)self setSegmentMinimumVisualConfidenceFinalScan:?];

  standardUserDefaults5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults5 floatForKey:@"internalSettings.docCam.rectangle.segmentStabilityStdDev"];
  [(ICDocCamViewController *)self setSegmentStabilityStdDev:?];

  standardUserDefaults6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults6 floatForKey:@"internalSettings.docCam.rectangle.minimumAspectRatio"];
  [(ICDocCamViewController *)self setRectangleMinimumAspectRatio:?];

  standardUserDefaults7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults7 floatForKey:@"internalSettings.docCam.rectangle.maximumAspectRatio"];
  [(ICDocCamViewController *)self setRectangleMaximumAspectRatio:?];

  standardUserDefaults8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults8 floatForKey:@"internalSettings.docCam.rectangle.quadratureTolerance"];
  [(ICDocCamViewController *)self setRectangleQuadratureTolerance:?];

  standardUserDefaults9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults9 floatForKey:@"internalSettings.docCam.rectangle.minimumSize"];
  [(ICDocCamViewController *)self setRectangleMinimumSize:?];

  standardUserDefaults10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults10 floatForKey:@"internalSettings.docCam.rectangle.minimumConfidence"];
  [(ICDocCamViewController *)self setRectangleMinimumConfidence:?];

  standardUserDefaults11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults11 floatForKey:@"internalSettings.docCam.rectangle.visualConfidence"];
  [(ICDocCamViewController *)self setRectangleMinimumVisualConfidence:?];

  standardUserDefaults12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setRectangleMaximumNumber:](self, "setRectangleMaximumNumber:", [standardUserDefaults12 integerForKey:@"internalSettings.docCam.rectangle.maximumNumber"]);

  standardUserDefaults13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults13 floatForKey:@"internalSettings.docCam.rectangle.stabilityStdDev"];
  [(ICDocCamViewController *)self setRectangleStabilityStdDev:?];

  standardUserDefaults14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setRectangleDetectionEnabled:](self, "setRectangleDetectionEnabled:", [standardUserDefaults14 BOOLForKey:@"internalSettings.docCam.rectangle.detectionEnabled"]);

  standardUserDefaults15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setRegistrationEnabled:](self, "setRegistrationEnabled:", [standardUserDefaults15 BOOLForKey:@"internalSettings.docCam.registration.enabled"]);

  standardUserDefaults16 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setDebugRectanglesEnabled:](self, "setDebugRectanglesEnabled:", [standardUserDefaults16 BOOLForKey:@"internalSettings.docCam.debugRectangles.enabled"]);

  standardUserDefaults17 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setDisplayStringEnabled:](self, "setDisplayStringEnabled:", [standardUserDefaults17 BOOLForKey:@"internalSettings.docCam.displayString.enabled"]);

  standardUserDefaults18 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setRealTimeRectangleDetection:](self, "setRealTimeRectangleDetection:", [standardUserDefaults18 BOOLForKey:@"internalSettings.docCam.rectangle.realTime"]);

  standardUserDefaults19 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setSynchronousRectangleDetection:](self, "setSynchronousRectangleDetection:", [standardUserDefaults19 BOOLForKey:@"internalSettings.docCam.rectangle.synchronous"]);

  standardUserDefaults20 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setQueueSizeForRectangleDetection:](self, "setQueueSizeForRectangleDetection:", [standardUserDefaults20 integerForKey:@"internalSettings.docCam.rectangle.queueSize"]);

  standardUserDefaults21 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setScanMovieRecordingEnabled:](self, "setScanMovieRecordingEnabled:", [standardUserDefaults21 BOOLForKey:@"internalSettings.docCam.scanMovieRecording.enabled"]);

  standardUserDefaults22 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  -[ICDocCamViewController setScanMovieRecordingDontShowWarning:](self, "setScanMovieRecordingDontShowWarning:", [standardUserDefaults22 BOOLForKey:@"internalSettings.docCam.scanMovieRecording.doNotShowWarning"]);
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
  thumbnailViewController = [(ICDocCamViewController *)self thumbnailViewController];

  if (!thumbnailViewController)
  {
    v4 = [[ICDocCamThumbnailCollectionViewController alloc] initWithDelegate:self];
    [(ICDocCamViewController *)self setThumbnailViewController:v4];

    documentInfoCollection = [(ICDocCamViewController *)self documentInfoCollection];
    docInfos = [documentInfoCollection docInfos];
    thumbnailViewController2 = [(ICDocCamViewController *)self thumbnailViewController];
    [thumbnailViewController2 setDocumentInfoArray:docInfos];

    imageCache = [(ICDocCamViewController *)self imageCache];
    thumbnailViewController3 = [(ICDocCamViewController *)self thumbnailViewController];
    [thumbnailViewController3 setImageCache:imageCache];

    thumbnailViewController4 = [(ICDocCamViewController *)self thumbnailViewController];
    [(ICDocCamViewController *)self addChildViewController:thumbnailViewController4];

    thumbnailViewController5 = [(ICDocCamViewController *)self thumbnailViewController];
    collectionView = [thumbnailViewController5 collectionView];
    [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];

    thumbnailContainerView = [(ICDocCamViewController *)self thumbnailContainerView];
    thumbnailViewController6 = [(ICDocCamViewController *)self thumbnailViewController];
    collectionView2 = [thumbnailViewController6 collectionView];
    [thumbnailContainerView addSubview:collectionView2];

    thumbnailViewController7 = [(ICDocCamViewController *)self thumbnailViewController];
    [thumbnailViewController7 didMoveToParentViewController:self];

    v17 = MEMORY[0x277CCAAD0];
    v34 = @"childView";
    thumbnailViewController8 = [(ICDocCamViewController *)self thumbnailViewController];
    collectionView3 = [thumbnailViewController8 collectionView];
    v35[0] = collectionView3;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v21 = [v17 constraintsWithVisualFormat:@"H:|[childView]|" options:0 metrics:0 views:v20];

    v22 = MEMORY[0x277CCAAD0];
    v32 = @"childView";
    thumbnailViewController9 = [(ICDocCamViewController *)self thumbnailViewController];
    collectionView4 = [thumbnailViewController9 collectionView];
    v33 = collectionView4;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v26 = [v22 constraintsWithVisualFormat:@"V:|[childView]|" options:0 metrics:0 views:v25];

    thumbnailViewController10 = [(ICDocCamViewController *)self thumbnailViewController];
    collectionView5 = [thumbnailViewController10 collectionView];
    [collectionView5 setTranslatesAutoresizingMaskIntoConstraints:0];

    [MEMORY[0x277CCAAD0] activateConstraints:v21];
    [MEMORY[0x277CCAAD0] activateConstraints:v26];
    thumbnailViewController11 = [(ICDocCamViewController *)self thumbnailViewController];
    collectionView6 = [thumbnailViewController11 collectionView];
    thumbnailContainerView2 = [(ICDocCamViewController *)self thumbnailContainerView];
    [thumbnailContainerView2 setCollectionView:collectionView6];
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v3 = [currentDevice userInterfaceIdiom] == 1;
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
    view = [(ICDocCamViewController *)self view];
    [view safeAreaInsets];
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

  userPromptViewVerticalConstraint = [(ICDocCamViewController *)self userPromptViewVerticalConstraint];
  [userPromptViewVerticalConstraint setConstant:v6];

  moveCameraCloserViewVerticalConstraint = [(ICDocCamViewController *)self moveCameraCloserViewVerticalConstraint];
  [moveCameraCloserViewVerticalConstraint setConstant:v6];

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
  thumbnailContainerView = [(ICDocCamViewController *)self thumbnailContainerView];
  if (thumbnailContainerView)
  {
    view = [(ICDocCamViewController *)self view];

    if (view)
    {
      thumbnailContainerView2 = [(ICDocCamViewController *)self thumbnailContainerView];
      [thumbnailContainerView2 setTranslatesAutoresizingMaskIntoConstraints:0];

      thumbnailContainerView3 = [(ICDocCamViewController *)self thumbnailContainerView];
      bottomAnchor = [thumbnailContainerView3 bottomAnchor];
      view2 = [(ICDocCamViewController *)self view];
      safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
      bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
      v6 = [bottomAnchor constraintEqualToAnchor:?];
      v21[0] = v6;
      thumbnailContainerView4 = [(ICDocCamViewController *)self thumbnailContainerView];
      widthAnchor = [thumbnailContainerView4 widthAnchor];
      view3 = [(ICDocCamViewController *)self view];
      widthAnchor2 = [view3 widthAnchor];
      v11 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      v21[1] = v11;
      thumbnailContainerView5 = [(ICDocCamViewController *)self thumbnailContainerView];
      heightAnchor = [thumbnailContainerView5 heightAnchor];
      +[_TtC14DocumentCamera22DCLiquidGlassConstants thumbnailHeight];
      v14 = [heightAnchor constraintEqualToConstant:?];
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
  iPadLayoutConstraints = [(ICDocCamViewController *)self iPadLayoutConstraints];

  if (iPadLayoutConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    iPadLayoutConstraints2 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    [v4 activateConstraints:iPadLayoutConstraints2];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(ICDocCamViewController *)self setIPadLayoutConstraints:v5];

    filterNameFeedbackBottomConstraint = [(ICDocCamViewController *)self filterNameFeedbackBottomConstraint];
    [filterNameFeedbackBottomConstraint setConstant:30.0];

    iPadLayoutConstraints3 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    filterNameFeedbackBottomConstraint2 = [(ICDocCamViewController *)self filterNameFeedbackBottomConstraint];
    [iPadLayoutConstraints3 addObject:filterNameFeedbackBottomConstraint2];

    iPadLayoutConstraints4 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    shutterButton = [(ICDocCamViewController *)self shutterButton];
    centerXAnchor = [shutterButton centerXAnchor];
    view = [(ICDocCamViewController *)self view];
    trailingAnchor = [view trailingAnchor];
    v14 = [centerXAnchor constraintEqualToAnchor:trailingAnchor constant:-50.0];
    [iPadLayoutConstraints4 addObject:v14];

    iPadLayoutConstraints5 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    shutterButton2 = [(ICDocCamViewController *)self shutterButton];
    centerYAnchor = [shutterButton2 centerYAnchor];
    view2 = [(ICDocCamViewController *)self view];
    centerYAnchor2 = [view2 centerYAnchor];
    v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0];
    [iPadLayoutConstraints5 addObject:v20];

    manualButton = [(ICDocCamViewController *)self manualButton];
    titleLabel = [manualButton titleLabel];
    text = [titleLabel text];

    autoButton = [(ICDocCamViewController *)self autoButton];
    titleLabel2 = [autoButton titleLabel];
    text2 = [titleLabel2 text];

    v194 = *MEMORY[0x277D740A8];
    v27 = v194;
    manualButton2 = [(ICDocCamViewController *)self manualButton];
    titleLabel3 = [manualButton2 titleLabel];
    font = [titleLabel3 font];
    v195[0] = font;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v195 forKeys:&v194 count:1];
    [text sizeWithAttributes:v31];
    v33 = v32;

    v192 = v27;
    autoButton2 = [(ICDocCamViewController *)self autoButton];
    titleLabel4 = [autoButton2 titleLabel];
    font2 = [titleLabel4 font];
    v193 = font2;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
    [text2 sizeWithAttributes:v37];
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
    iPadLayoutConstraints6 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    manualButton3 = [(ICDocCamViewController *)self manualButton];
    if (v42 * 0.5 >= 43.0)
    {
      trailingAnchor2 = [manualButton3 trailingAnchor];
      view3 = [(ICDocCamViewController *)self view];
      trailingAnchor3 = [view3 trailingAnchor];
      [trailingAnchor2 constraintGreaterThanOrEqualToAnchor:trailingAnchor3 constant:-11.0];
    }

    else
    {
      trailingAnchor2 = [manualButton3 centerXAnchor];
      view3 = [(ICDocCamViewController *)self shutterButton];
      trailingAnchor3 = [view3 centerXAnchor];
      [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:0.0];
    }
    v48 = ;
    [iPadLayoutConstraints6 addObject:v48];

    iPadLayoutConstraints7 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    manualButton4 = [(ICDocCamViewController *)self manualButton];
    centerYAnchor3 = [manualButton4 centerYAnchor];
    view4 = [(ICDocCamViewController *)self view];
    centerYAnchor4 = [view4 centerYAnchor];
    v54 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:164.0];
    [iPadLayoutConstraints7 addObject:v54];

    iPadLayoutConstraints8 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    manualButton5 = [(ICDocCamViewController *)self manualButton];
    widthAnchor = [manualButton5 widthAnchor];
    v58 = [widthAnchor constraintEqualToConstant:v42];
    [iPadLayoutConstraints8 addObject:v58];

    iPadLayoutConstraints9 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    autoButton3 = [(ICDocCamViewController *)self autoButton];
    if (v42 * 0.5 >= 43.0)
    {
      trailingAnchor4 = [autoButton3 trailingAnchor];
      view5 = [(ICDocCamViewController *)self view];
      trailingAnchor5 = [view5 trailingAnchor];
      [trailingAnchor4 constraintGreaterThanOrEqualToAnchor:trailingAnchor5 constant:-11.0];
    }

    else
    {
      trailingAnchor4 = [autoButton3 centerXAnchor];
      view5 = [(ICDocCamViewController *)self shutterButton];
      trailingAnchor5 = [view5 centerXAnchor];
      [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:0.0];
    }
    v64 = ;
    [iPadLayoutConstraints9 addObject:v64];

    iPadLayoutConstraints10 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    autoButton4 = [(ICDocCamViewController *)self autoButton];
    centerYAnchor5 = [autoButton4 centerYAnchor];
    view6 = [(ICDocCamViewController *)self view];
    centerYAnchor6 = [view6 centerYAnchor];
    v70 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6 constant:118.0];
    [iPadLayoutConstraints10 addObject:v70];

    iPadLayoutConstraints11 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    autoButton5 = [(ICDocCamViewController *)self autoButton];
    widthAnchor2 = [autoButton5 widthAnchor];
    v74 = [widthAnchor2 constraintEqualToConstant:v42];
    [iPadLayoutConstraints11 addObject:v74];

    iPadLayoutConstraints12 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    saveButton = [(ICDocCamViewController *)self saveButton];
    trailingAnchor6 = [saveButton trailingAnchor];
    view7 = [(ICDocCamViewController *)self view];
    trailingAnchor7 = [view7 trailingAnchor];
    v80 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-21.0];
    [iPadLayoutConstraints12 addObject:v80];

    iPadLayoutConstraints13 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    saveButton2 = [(ICDocCamViewController *)self saveButton];
    centerYAnchor7 = [saveButton2 centerYAnchor];
    cancelButton = [(ICDocCamViewController *)self cancelButton];
    centerYAnchor8 = [cancelButton centerYAnchor];
    v86 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8 constant:0.0];
    [iPadLayoutConstraints13 addObject:v86];

    iPadLayoutConstraints14 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    cancelButton2 = [(ICDocCamViewController *)self cancelButton];
    leadingAnchor = [cancelButton2 leadingAnchor];
    view8 = [(ICDocCamViewController *)self view];
    leadingAnchor2 = [view8 leadingAnchor];
    v92 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:21.0];
    [iPadLayoutConstraints14 addObject:v92];

    iPadLayoutConstraints15 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    cancelButton3 = [(ICDocCamViewController *)self cancelButton];
    firstBaselineAnchor = [cancelButton3 firstBaselineAnchor];
    view9 = [(ICDocCamViewController *)self view];
    bottomAnchor = [view9 bottomAnchor];
    v98 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:-40.0];
    [iPadLayoutConstraints15 addObject:v98];

    thumbnailContainerView = [(ICDocCamViewController *)self thumbnailContainerView];
    [thumbnailContainerView setTranslatesAutoresizingMaskIntoConstraints:0];

    thumbnailContainerView2 = [(ICDocCamViewController *)self thumbnailContainerView];
    leadingAnchor3 = [thumbnailContainerView2 leadingAnchor];
    cancelButton4 = [(ICDocCamViewController *)self cancelButton];
    trailingAnchor8 = [cancelButton4 trailingAnchor];
    v104 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor8 constant:48.0];
    [(ICDocCamViewController *)self setThumbnailContainerViewLeadingConstraintForIPad:v104];

    iPadLayoutConstraints16 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    thumbnailContainerViewLeadingConstraintForIPad = [(ICDocCamViewController *)self thumbnailContainerViewLeadingConstraintForIPad];
    [iPadLayoutConstraints16 addObject:thumbnailContainerViewLeadingConstraintForIPad];

    thumbnailContainerView3 = [(ICDocCamViewController *)self thumbnailContainerView];
    trailingAnchor9 = [thumbnailContainerView3 trailingAnchor];
    saveButton3 = [(ICDocCamViewController *)self saveButton];
    leadingAnchor4 = [saveButton3 leadingAnchor];
    v111 = [trailingAnchor9 constraintEqualToAnchor:leadingAnchor4 constant:48.0];
    [(ICDocCamViewController *)self setThumbnailContainerViewTrailingConstraintForIPad:v111];

    [(ICDocCamViewController *)self updateThumbnailContainerViewConstraintConstantForIPad];
    iPadLayoutConstraints17 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    thumbnailContainerViewTrailingConstraintForIPad = [(ICDocCamViewController *)self thumbnailContainerViewTrailingConstraintForIPad];
    [iPadLayoutConstraints17 addObject:thumbnailContainerViewTrailingConstraintForIPad];

    iPadLayoutConstraints18 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    thumbnailContainerView4 = [(ICDocCamViewController *)self thumbnailContainerView];
    bottomAnchor2 = [thumbnailContainerView4 bottomAnchor];
    view10 = [(ICDocCamViewController *)self view];
    safeAreaLayoutGuide = [view10 safeAreaLayoutGuide];
    bottomAnchor3 = [safeAreaLayoutGuide bottomAnchor];
    v120 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-16.0];
    [iPadLayoutConstraints18 addObject:v120];

    iPadLayoutConstraints19 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    flashSettingView = [(ICDocCamViewController *)self flashSettingView];
    trailingAnchor10 = [flashSettingView trailingAnchor];
    flashButton = [(ICDocCamViewController *)self flashButton];
    trailingAnchor11 = [flashButton trailingAnchor];
    v126 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:0.0];
    [iPadLayoutConstraints19 addObject:v126];

    iPadLayoutConstraints20 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    flashSettingView2 = [(ICDocCamViewController *)self flashSettingView];
    centerYAnchor9 = [flashSettingView2 centerYAnchor];
    flashButton2 = [(ICDocCamViewController *)self flashButton];
    centerYAnchor10 = [flashButton2 centerYAnchor];
    v132 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10 constant:0.0];
    [iPadLayoutConstraints20 addObject:v132];

    iPadLayoutConstraints21 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    flashSettingView3 = [(ICDocCamViewController *)self flashSettingView];
    heightAnchor = [flashSettingView3 heightAnchor];
    v136 = [heightAnchor constraintEqualToConstant:44.0];
    [iPadLayoutConstraints21 addObject:v136];

    iPadLayoutConstraints22 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    filterViewContainer = [(ICDocCamViewController *)self filterViewContainer];
    centerYAnchor11 = [filterViewContainer centerYAnchor];
    filterButton = [(ICDocCamViewController *)self filterButton];
    centerYAnchor12 = [filterButton centerYAnchor];
    v142 = [centerYAnchor11 constraintEqualToAnchor:centerYAnchor12 constant:0.0];
    [iPadLayoutConstraints22 addObject:v142];

    iPadLayoutConstraints23 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    filterViewContainer2 = [(ICDocCamViewController *)self filterViewContainer];
    heightAnchor2 = [filterViewContainer2 heightAnchor];
    v146 = [heightAnchor2 constraintEqualToConstant:44.0];
    [iPadLayoutConstraints23 addObject:v146];

    iPadLayoutConstraints24 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    filterViewContainer3 = [(ICDocCamViewController *)self filterViewContainer];
    trailingAnchor12 = [filterViewContainer3 trailingAnchor];
    filterButton2 = [(ICDocCamViewController *)self filterButton];
    trailingAnchor13 = [filterButton2 trailingAnchor];
    v152 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13 constant:0.0];
    [iPadLayoutConstraints24 addObject:v152];

    filterScrollView = [(ICDocCamViewController *)self filterScrollView];
    [filterScrollView setContentInset:{0.0, 6.0, 0.0, 0.0}];

    filterViewContainer4 = [(ICDocCamViewController *)self filterViewContainer];
    widthAnchor3 = [filterViewContainer4 widthAnchor];
    v156 = [widthAnchor3 constraintEqualToConstant:44.0];
    [(ICDocCamViewController *)self setFilterViewContainerWidthConstraint:v156];

    iPadLayoutConstraints25 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    filterViewContainerWidthConstraint = [(ICDocCamViewController *)self filterViewContainerWidthConstraint];
    [iPadLayoutConstraints25 addObject:filterViewContainerWidthConstraint];

    iPadLayoutConstraints26 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    filterViewContainer5 = [(ICDocCamViewController *)self filterViewContainer];
    centerYAnchor13 = [filterViewContainer5 centerYAnchor];
    filterButton3 = [(ICDocCamViewController *)self filterButton];
    centerYAnchor14 = [filterButton3 centerYAnchor];
    v164 = [centerYAnchor13 constraintEqualToAnchor:centerYAnchor14 constant:0.0];
    [iPadLayoutConstraints26 addObject:v164];

    iPadLayoutConstraints27 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    filterScrollViewContainer = [(ICDocCamViewController *)self filterScrollViewContainer];
    leadingAnchor5 = [filterScrollViewContainer leadingAnchor];
    filterView = [(ICDocCamViewController *)self filterView];
    leadingAnchor6 = [filterView leadingAnchor];
    v170 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:0.0];
    [iPadLayoutConstraints27 addObject:v170];

    iPadLayoutConstraints28 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    filterScrollViewContainer2 = [(ICDocCamViewController *)self filterScrollViewContainer];
    topAnchor = [filterScrollViewContainer2 topAnchor];
    filterView2 = [(ICDocCamViewController *)self filterView];
    topAnchor2 = [filterView2 topAnchor];
    v176 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    [iPadLayoutConstraints28 addObject:v176];

    iPadLayoutConstraints29 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    filterScrollViewContainer3 = [(ICDocCamViewController *)self filterScrollViewContainer];
    bottomAnchor4 = [filterScrollViewContainer3 bottomAnchor];
    filterView3 = [(ICDocCamViewController *)self filterView];
    bottomAnchor5 = [filterView3 bottomAnchor];
    v182 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:0.0];
    [iPadLayoutConstraints29 addObject:v182];

    iPadLayoutConstraints30 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    filterScrollViewContainer4 = [(ICDocCamViewController *)self filterScrollViewContainer];
    trailingAnchor14 = [filterScrollViewContainer4 trailingAnchor];
    filterView4 = [(ICDocCamViewController *)self filterView];
    trailingAnchor15 = [filterView4 trailingAnchor];
    v188 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15 constant:0.0];
    [iPadLayoutConstraints30 addObject:v188];

    v189 = MEMORY[0x277CCAAD0];
    iPadLayoutConstraints31 = [(ICDocCamViewController *)self iPadLayoutConstraints];
    [v189 activateConstraints:iPadLayoutConstraints31];
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  statusBarOrientation = [(ICDocCamViewController *)self statusBarOrientation];
  view = [(ICDocCamViewController *)self view];
  [view safeAreaInsets];
  v6 = v5;
  v8 = v7;

  if (userInterfaceIdiom)
  {
    +[_TtC14DocumentCamera22DCLiquidGlassConstants bottomPlacardSpacingToBottomLandscapePad];
  }

  else
  {
    view2 = [(ICDocCamViewController *)self view];
    [DCLiquidGlassConstants topPlacardSpacingFor:"topPlacardSpacingFor:isPortrait:" isPortrait:?];
    v6 = v10;

    if ((statusBarOrientation - 1) > 1)
    {
      +[_TtC14DocumentCamera22DCLiquidGlassConstants bottomPlacardSpacingToBottomLandscape];
    }

    else
    {
      +[_TtC14DocumentCamera22DCLiquidGlassConstants bottomPlacardSpacingToBottomPortrait];
    }
  }

  v11 = v9;
  userPromptViewVerticalConstraint = [(ICDocCamViewController *)self userPromptViewVerticalConstraint];
  [userPromptViewVerticalConstraint setConstant:v6];

  moveCameraCloserViewVerticalConstraint = [(ICDocCamViewController *)self moveCameraCloserViewVerticalConstraint];
  [moveCameraCloserViewVerticalConstraint setConstant:v6];

  v12 = -(v8 + v11);
  flashFeedbackBottomConstraint = [(ICDocCamViewController *)self flashFeedbackBottomConstraint];
  [flashFeedbackBottomConstraint setConstant:v12];

  filterNameFeedbackBottomConstraint = [(ICDocCamViewController *)self filterNameFeedbackBottomConstraint];
  [filterNameFeedbackBottomConstraint setConstant:v12];

  autoShutterOnFeedbackBottomConstraint = [(ICDocCamViewController *)self autoShutterOnFeedbackBottomConstraint];
  [autoShutterOnFeedbackBottomConstraint setConstant:v12];

  autoShutterOffFeedbackBottomConstraint = [(ICDocCamViewController *)self autoShutterOffFeedbackBottomConstraint];
  [autoShutterOffFeedbackBottomConstraint setConstant:v12];
}

- (void)updateThumbnailConstraintsForIPhone
{
  array = [MEMORY[0x277CBEB18] array];
  view = [(ICDocCamViewController *)self view];
  thumbnailContainerView = [(ICDocCamViewController *)self thumbnailContainerView];
  [view dc_removeAllConstraintsForSubview:thumbnailContainerView];

  thumbnailContainerView2 = [(ICDocCamViewController *)self thumbnailContainerView];
  [thumbnailContainerView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = 16.0;
  if ([objc_opt_class() isLiquidGlassEnabledForCapture])
  {
    +[_TtC14DocumentCamera22DCLiquidGlassConstants thumbnailSpacingToLeadingEdge];
    v6 = v7;
  }

  thumbnailContainerView3 = [(ICDocCamViewController *)self thumbnailContainerView];
  leadingAnchor = [thumbnailContainerView3 leadingAnchor];
  view2 = [(ICDocCamViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v6];
  [(ICDocCamViewController *)self setThumbnailContainerViewLeadingConstraintForIPhone:v12];

  thumbnailContainerViewLeadingConstraintForIPhone = [(ICDocCamViewController *)self thumbnailContainerViewLeadingConstraintForIPhone];
  [array addObject:thumbnailContainerViewLeadingConstraintForIPhone];

  v14 = 0.0;
  if ([objc_opt_class() isLiquidGlassEnabledForCapture])
  {
    +[_TtC14DocumentCamera22DCLiquidGlassConstants thumbnailSpacingToBottom];
    v14 = -v15;
  }

  thumbnailContainerView4 = [(ICDocCamViewController *)self thumbnailContainerView];
  bottomAnchor = [thumbnailContainerView4 bottomAnchor];
  view3 = [(ICDocCamViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v14];
  [(ICDocCamViewController *)self setThumbnailContainerViewBottomConstraintForIPhone:v20];

  thumbnailContainerViewBottomConstraintForIPhone = [(ICDocCamViewController *)self thumbnailContainerViewBottomConstraintForIPhone];
  [array addObject:thumbnailContainerViewBottomConstraintForIPhone];

  thumbnailContainerView5 = [(ICDocCamViewController *)self thumbnailContainerView];
  heightAnchor = [thumbnailContainerView5 heightAnchor];
  v24 = [heightAnchor constraintEqualToConstant:80.0];
  [array addObject:v24];

  thumbnailContainerView6 = [(ICDocCamViewController *)self thumbnailContainerView];
  widthAnchor = [thumbnailContainerView6 widthAnchor];
  v27 = [widthAnchor constraintEqualToConstant:100.0];
  [array addObject:v27];

  iPhonePortraitLayoutConstraints = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
  [iPhonePortraitLayoutConstraints addObjectsFromArray:array];

  iPhoneLandscapeLayoutConstraints = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
  [iPhoneLandscapeLayoutConstraints addObjectsFromArray:array];

  iPhoneCompactLandscapeLayoutConstraints = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
  [iPhoneCompactLandscapeLayoutConstraints addObjectsFromArray:array];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

- (void)legacyUpdateConstraintsForIPhone
{
  v645 = *MEMORY[0x277D85DE8];
  view = [(ICDocCamViewController *)self view];
  [view dc_directionalSafeAreaInsets];
  v634 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [(ICDocCamViewController *)self statusBarOrientation]- 1;
  if (v11 > 1)
  {
    view2 = [(ICDocCamViewController *)self view];
    window = [view2 window];
    dc_requiresCompactLandscapeIcons = [window dc_requiresCompactLandscapeIcons];

    v633 = dc_requiresCompactLandscapeIcons;
    if (dc_requiresCompactLandscapeIcons)
    {
      v14 = 32.0;
    }

    else
    {
      v14 = 44.0;
    }

    view3 = [(ICDocCamViewController *)self view];
    window2 = [view3 window];
    windowScene = [window2 windowScene];
    statusBarManager = [windowScene statusBarManager];
    [statusBarManager statusBarFrame];
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

  iPhonePortraitLayoutConstraints = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
  v25 = -(v13 + 13.0);
  if (iPhonePortraitLayoutConstraints || ([(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints], (iPhonePortraitLayoutConstraints = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    iPhoneCompactLandscapeLayoutConstraints = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];

    if (!iPhoneCompactLandscapeLayoutConstraints)
    {
      v95 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(ICDocCamViewController *)self setIPhonePortraitLayoutConstraints:v95];

      v96 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(ICDocCamViewController *)self setIPhoneLandscapeLayoutConstraints:v96];

      v97 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(ICDocCamViewController *)self setIPhoneCompactLandscapeLayoutConstraints:v97];

      iPhonePortraitLayoutConstraints2 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      filterNameFeedbackBottomConstraint = [(ICDocCamViewController *)self filterNameFeedbackBottomConstraint];
      [iPhonePortraitLayoutConstraints2 addObject:filterNameFeedbackBottomConstraint];

      iPhoneLandscapeLayoutConstraints = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      filterNameFeedbackBottomConstraint2 = [(ICDocCamViewController *)self filterNameFeedbackBottomConstraint];
      [iPhoneLandscapeLayoutConstraints addObject:filterNameFeedbackBottomConstraint2];

      iPhoneCompactLandscapeLayoutConstraints2 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      filterNameFeedbackBottomConstraint3 = [(ICDocCamViewController *)self filterNameFeedbackBottomConstraint];
      [iPhoneCompactLandscapeLayoutConstraints2 addObject:filterNameFeedbackBottomConstraint3];

      topToolbarForIPhone = [(ICDocCamViewController *)self topToolbarForIPhone];
      [topToolbarForIPhone setTranslatesAutoresizingMaskIntoConstraints:0];

      cancelButtonForIPhone = [(ICDocCamViewController *)self cancelButtonForIPhone];
      [cancelButtonForIPhone setTranslatesAutoresizingMaskIntoConstraints:0];

      autoButtonForIPhone = [(ICDocCamViewController *)self autoButtonForIPhone];
      [autoButtonForIPhone setTranslatesAutoresizingMaskIntoConstraints:0];

      flashButtonForIPhone = [(ICDocCamViewController *)self flashButtonForIPhone];
      [flashButtonForIPhone setTranslatesAutoresizingMaskIntoConstraints:0];

      filterButtonForIPhone = [(ICDocCamViewController *)self filterButtonForIPhone];
      [filterButtonForIPhone setTranslatesAutoresizingMaskIntoConstraints:0];

      saveButton = [(ICDocCamViewController *)self saveButton];
      [saveButton setTranslatesAutoresizingMaskIntoConstraints:0];

      filterScrollViewContainer = [(ICDocCamViewController *)self filterScrollViewContainer];
      [filterScrollViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];

      iPhonePortraitLayoutConstraints3 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      shutterButton = [(ICDocCamViewController *)self shutterButton];
      centerXAnchor = [shutterButton centerXAnchor];
      view4 = [(ICDocCamViewController *)self view];
      centerXAnchor2 = [view4 centerXAnchor];
      v116 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0];
      [iPhonePortraitLayoutConstraints3 addObject:v116];

      shutterButton2 = [(ICDocCamViewController *)self shutterButton];
      bottomAnchor = [shutterButton2 bottomAnchor];
      view5 = [(ICDocCamViewController *)self view];
      bottomAnchor2 = [view5 bottomAnchor];
      v121 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v25];
      [(ICDocCamViewController *)self setShutterButtonBottomConstraintForPortraitIPhone:v121];

      iPhonePortraitLayoutConstraints4 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      shutterButtonBottomConstraintForPortraitIPhone = [(ICDocCamViewController *)self shutterButtonBottomConstraintForPortraitIPhone];
      [iPhonePortraitLayoutConstraints4 addObject:shutterButtonBottomConstraintForPortraitIPhone];

      iPhoneLandscapeLayoutConstraints2 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      shutterButton3 = [(ICDocCamViewController *)self shutterButton];
      centerYAnchor = [shutterButton3 centerYAnchor];
      view6 = [(ICDocCamViewController *)self view];
      centerYAnchor2 = [view6 centerYAnchor];
      v129 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0];
      [iPhoneLandscapeLayoutConstraints2 addObject:v129];

      shutterButton4 = [(ICDocCamViewController *)self shutterButton];
      trailingAnchor = [shutterButton4 trailingAnchor];
      view7 = [(ICDocCamViewController *)self view];
      trailingAnchor2 = [view7 trailingAnchor];
      v134 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v25];
      [(ICDocCamViewController *)self setShutterButtonBottomConstraintForLandscapeIPhone:v134];

      iPhoneLandscapeLayoutConstraints3 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      shutterButtonBottomConstraintForLandscapeIPhone = [(ICDocCamViewController *)self shutterButtonBottomConstraintForLandscapeIPhone];
      [iPhoneLandscapeLayoutConstraints3 addObject:shutterButtonBottomConstraintForLandscapeIPhone];

      iPhoneCompactLandscapeLayoutConstraints3 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      shutterButton5 = [(ICDocCamViewController *)self shutterButton];
      centerYAnchor3 = [shutterButton5 centerYAnchor];
      view8 = [(ICDocCamViewController *)self view];
      centerYAnchor4 = [view8 centerYAnchor];
      v142 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:0.0];
      [iPhoneCompactLandscapeLayoutConstraints3 addObject:v142];

      iPhoneCompactLandscapeLayoutConstraints4 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      shutterButtonBottomConstraintForLandscapeIPhone2 = [(ICDocCamViewController *)self shutterButtonBottomConstraintForLandscapeIPhone];
      [iPhoneCompactLandscapeLayoutConstraints4 addObject:shutterButtonBottomConstraintForLandscapeIPhone2];

      array = [MEMORY[0x277CBEB18] array];
      saveButton2 = [(ICDocCamViewController *)self saveButton];
      centerYAnchor5 = [saveButton2 centerYAnchor];
      shutterButton6 = [(ICDocCamViewController *)self shutterButton];
      centerYAnchor6 = [shutterButton6 centerYAnchor];
      v150 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6 constant:0.0];
      [array addObject:v150];

      iPhonePortraitLayoutConstraints5 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [iPhonePortraitLayoutConstraints5 addObjectsFromArray:array];

      [array removeAllObjects];
      saveButton3 = [(ICDocCamViewController *)self saveButton];
      centerYAnchor7 = [saveButton3 centerYAnchor];
      view9 = [(ICDocCamViewController *)self view];
      bottomAnchor3 = [view9 bottomAnchor];
      v156 = [centerYAnchor7 constraintEqualToAnchor:bottomAnchor3 constant:-34.0];
      [(ICDocCamViewController *)self setSaveButtonLandscapeVerticalConstraintForIPhone:v156];

      iPhoneLandscapeLayoutConstraints4 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      saveButtonLandscapeVerticalConstraintForIPhone = [(ICDocCamViewController *)self saveButtonLandscapeVerticalConstraintForIPhone];
      [iPhoneLandscapeLayoutConstraints4 addObject:saveButtonLandscapeVerticalConstraintForIPhone];

      iPhoneCompactLandscapeLayoutConstraints5 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      saveButtonLandscapeVerticalConstraintForIPhone2 = [(ICDocCamViewController *)self saveButtonLandscapeVerticalConstraintForIPhone];
      [iPhoneCompactLandscapeLayoutConstraints5 addObject:saveButtonLandscapeVerticalConstraintForIPhone2];

      saveButton4 = [(ICDocCamViewController *)self saveButton];
      trailingAnchor3 = [saveButton4 trailingAnchor];
      view10 = [(ICDocCamViewController *)self view];
      trailingAnchor4 = [view10 trailingAnchor];
      v165 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
      [array addObject:v165];

      iPhonePortraitLayoutConstraints6 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [iPhonePortraitLayoutConstraints6 addObjectsFromArray:array];

      [array removeAllObjects];
      saveButton5 = [(ICDocCamViewController *)self saveButton];
      trailingAnchor5 = [saveButton5 trailingAnchor];
      view11 = [(ICDocCamViewController *)self view];
      trailingAnchor6 = [view11 trailingAnchor];
      v171 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:0.0];
      [(ICDocCamViewController *)self setSaveButtonLandscapeTrailingConstraintForIPhone:v171];

      iPhoneLandscapeLayoutConstraints5 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      saveButtonLandscapeTrailingConstraintForIPhone = [(ICDocCamViewController *)self saveButtonLandscapeTrailingConstraintForIPhone];
      [iPhoneLandscapeLayoutConstraints5 addObject:saveButtonLandscapeTrailingConstraintForIPhone];

      iPhoneCompactLandscapeLayoutConstraints6 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      saveButtonLandscapeTrailingConstraintForIPhone2 = [(ICDocCamViewController *)self saveButtonLandscapeTrailingConstraintForIPhone];
      [iPhoneCompactLandscapeLayoutConstraints6 addObject:saveButtonLandscapeTrailingConstraintForIPhone2];

      array2 = [MEMORY[0x277CBEB18] array];
      filterViewContainer = [(ICDocCamViewController *)self filterViewContainer];
      leadingAnchor = [filterViewContainer leadingAnchor];
      view12 = [(ICDocCamViewController *)self view];
      leadingAnchor2 = [view12 leadingAnchor];
      v181 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
      [array2 addObject:v181];

      filterViewContainer2 = [(ICDocCamViewController *)self filterViewContainer];
      trailingAnchor7 = [filterViewContainer2 trailingAnchor];
      view13 = [(ICDocCamViewController *)self view];
      trailingAnchor8 = [view13 trailingAnchor];
      v186 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:0.0];
      [array2 addObject:v186];

      filterViewContainer3 = [(ICDocCamViewController *)self filterViewContainer];
      topAnchor = [filterViewContainer3 topAnchor];
      view14 = [(ICDocCamViewController *)self view];
      topAnchor2 = [view14 topAnchor];
      v191 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
      [array2 addObject:v191];

      iPhonePortraitLayoutConstraints7 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [iPhonePortraitLayoutConstraints7 addObjectsFromArray:array2];

      iPhoneLandscapeLayoutConstraints6 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      [iPhoneLandscapeLayoutConstraints6 addObjectsFromArray:array2];

      iPhoneCompactLandscapeLayoutConstraints7 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      [iPhoneCompactLandscapeLayoutConstraints7 addObjectsFromArray:array2];

      filterViewContainer4 = [(ICDocCamViewController *)self filterViewContainer];
      heightAnchor = [filterViewContainer4 heightAnchor];
      v197 = [heightAnchor constraintEqualToConstant:v14];
      [(ICDocCamViewController *)self setFilterViewContainerHeightConstraint:v197];

      iPhonePortraitLayoutConstraints8 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      filterViewContainerHeightConstraint = [(ICDocCamViewController *)self filterViewContainerHeightConstraint];
      [iPhonePortraitLayoutConstraints8 addObject:filterViewContainerHeightConstraint];

      iPhoneLandscapeLayoutConstraints7 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      filterViewContainerHeightConstraint2 = [(ICDocCamViewController *)self filterViewContainerHeightConstraint];
      [iPhoneLandscapeLayoutConstraints7 addObject:filterViewContainerHeightConstraint2];

      iPhoneCompactLandscapeLayoutConstraints8 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      filterViewContainerHeightConstraint3 = [(ICDocCamViewController *)self filterViewContainerHeightConstraint];
      [iPhoneCompactLandscapeLayoutConstraints8 addObject:filterViewContainerHeightConstraint3];

      array3 = [MEMORY[0x277CBEB18] array];
      filterViewButton = [(ICDocCamViewController *)self filterViewButton];
      leadingAnchor3 = [filterViewButton leadingAnchor];
      filterView = [(ICDocCamViewController *)self filterView];
      leadingAnchor4 = [filterView leadingAnchor];
      v209 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:4.0];
      [array3 addObject:v209];

      filterViewButton2 = [(ICDocCamViewController *)self filterViewButton];
      bottomAnchor4 = [filterViewButton2 bottomAnchor];
      filterView2 = [(ICDocCamViewController *)self filterView];
      bottomAnchor5 = [filterView2 bottomAnchor];
      v214 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:0.0];
      [array3 addObject:v214];

      filterScrollViewContainer2 = [(ICDocCamViewController *)self filterScrollViewContainer];
      leadingAnchor5 = [filterScrollViewContainer2 leadingAnchor];
      filterViewButton3 = [(ICDocCamViewController *)self filterViewButton];
      trailingAnchor9 = [filterViewButton3 trailingAnchor];
      v219 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor9 constant:0.0];
      [array3 addObject:v219];

      filterScrollViewContainer3 = [(ICDocCamViewController *)self filterScrollViewContainer];
      bottomAnchor6 = [filterScrollViewContainer3 bottomAnchor];
      filterView3 = [(ICDocCamViewController *)self filterView];
      bottomAnchor7 = [filterView3 bottomAnchor];
      v224 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:0.0];
      [array3 addObject:v224];

      filterScrollViewContainer4 = [(ICDocCamViewController *)self filterScrollViewContainer];
      trailingAnchor10 = [filterScrollViewContainer4 trailingAnchor];
      filterView4 = [(ICDocCamViewController *)self filterView];
      trailingAnchor11 = [filterView4 trailingAnchor];
      v229 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:0.0];
      [array3 addObject:v229];

      iPhonePortraitLayoutConstraints9 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [iPhonePortraitLayoutConstraints9 addObjectsFromArray:array3];

      iPhoneLandscapeLayoutConstraints8 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      [iPhoneLandscapeLayoutConstraints8 addObjectsFromArray:array3];

      iPhoneCompactLandscapeLayoutConstraints9 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      [iPhoneCompactLandscapeLayoutConstraints9 addObjectsFromArray:array3];

      [array3 removeAllObjects];
      filterViewButton4 = [(ICDocCamViewController *)self filterViewButton];
      topAnchor3 = [filterViewButton4 topAnchor];
      filterView5 = [(ICDocCamViewController *)self filterView];
      bottomAnchor8 = [filterView5 bottomAnchor];
      v237 = [topAnchor3 constraintEqualToAnchor:bottomAnchor8 constant:-44.0];
      [array3 addObject:v237];

      filterScrollViewContainer5 = [(ICDocCamViewController *)self filterScrollViewContainer];
      topAnchor4 = [filterScrollViewContainer5 topAnchor];
      filterView6 = [(ICDocCamViewController *)self filterView];
      bottomAnchor9 = [filterView6 bottomAnchor];
      v242 = [topAnchor4 constraintEqualToAnchor:bottomAnchor9 constant:-44.0];
      [array3 addObject:v242];

      iPhonePortraitLayoutConstraints10 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [iPhonePortraitLayoutConstraints10 addObjectsFromArray:array3];

      [array3 removeAllObjects];
      filterViewButton5 = [(ICDocCamViewController *)self filterViewButton];
      topAnchor5 = [filterViewButton5 topAnchor];
      filterView7 = [(ICDocCamViewController *)self filterView];
      bottomAnchor10 = [filterView7 bottomAnchor];
      v248 = [topAnchor5 constraintEqualToAnchor:bottomAnchor10 constant:-44.0];
      [array3 addObject:v248];

      filterScrollViewContainer6 = [(ICDocCamViewController *)self filterScrollViewContainer];
      topAnchor6 = [filterScrollViewContainer6 topAnchor];
      filterView8 = [(ICDocCamViewController *)self filterView];
      bottomAnchor11 = [filterView8 bottomAnchor];
      v253 = [topAnchor6 constraintEqualToAnchor:bottomAnchor11 constant:-44.0];
      [array3 addObject:v253];

      iPhoneLandscapeLayoutConstraints9 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      [iPhoneLandscapeLayoutConstraints9 addObjectsFromArray:array3];

      [array3 removeAllObjects];
      filterViewButton6 = [(ICDocCamViewController *)self filterViewButton];
      topAnchor7 = [filterViewButton6 topAnchor];
      filterView9 = [(ICDocCamViewController *)self filterView];
      bottomAnchor12 = [filterView9 bottomAnchor];
      v259 = [topAnchor7 constraintEqualToAnchor:bottomAnchor12 constant:-32.0];
      [array3 addObject:v259];

      filterScrollViewContainer7 = [(ICDocCamViewController *)self filterScrollViewContainer];
      topAnchor8 = [filterScrollViewContainer7 topAnchor];
      filterView10 = [(ICDocCamViewController *)self filterView];
      bottomAnchor13 = [filterView10 bottomAnchor];
      v264 = [topAnchor8 constraintEqualToAnchor:bottomAnchor13 constant:-32.0];
      [array3 addObject:v264];

      iPhoneCompactLandscapeLayoutConstraints10 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      [iPhoneCompactLandscapeLayoutConstraints10 addObjectsFromArray:array3];

      iPhonePortraitLayoutConstraints11 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      cancelButtonForIPhone2 = [(ICDocCamViewController *)self cancelButtonForIPhone];
      centerYAnchor8 = [cancelButtonForIPhone2 centerYAnchor];
      topToolbarForIPhone2 = [(ICDocCamViewController *)self topToolbarForIPhone];
      bottomAnchor14 = [topToolbarForIPhone2 bottomAnchor];
      v271 = [centerYAnchor8 constraintEqualToAnchor:bottomAnchor14 constant:-22.0];
      [iPhonePortraitLayoutConstraints11 addObject:v271];

      iPhoneLandscapeLayoutConstraints10 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      cancelButtonForIPhone3 = [(ICDocCamViewController *)self cancelButtonForIPhone];
      centerYAnchor9 = [cancelButtonForIPhone3 centerYAnchor];
      topToolbarForIPhone3 = [(ICDocCamViewController *)self topToolbarForIPhone];
      bottomAnchor15 = [topToolbarForIPhone3 bottomAnchor];
      v277 = [centerYAnchor9 constraintEqualToAnchor:bottomAnchor15 constant:-22.0];
      [iPhoneLandscapeLayoutConstraints10 addObject:v277];

      iPhoneCompactLandscapeLayoutConstraints11 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      cancelButtonForIPhone4 = [(ICDocCamViewController *)self cancelButtonForIPhone];
      centerYAnchor10 = [cancelButtonForIPhone4 centerYAnchor];
      topToolbarForIPhone4 = [(ICDocCamViewController *)self topToolbarForIPhone];
      bottomAnchor16 = [topToolbarForIPhone4 bottomAnchor];
      v283 = [centerYAnchor10 constraintEqualToAnchor:bottomAnchor16 constant:-16.0];
      [iPhoneCompactLandscapeLayoutConstraints11 addObject:v283];

      cancelButtonForIPhone5 = [(ICDocCamViewController *)self cancelButtonForIPhone];
      leadingAnchor6 = [cancelButtonForIPhone5 leadingAnchor];
      topToolbarForIPhone5 = [(ICDocCamViewController *)self topToolbarForIPhone];
      leadingAnchor7 = [topToolbarForIPhone5 leadingAnchor];
      v288 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:0.0];
      [(ICDocCamViewController *)self setCancelButtonForIPhoneLeadingConstraint:v288];

      iPhonePortraitLayoutConstraints12 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      cancelButtonForIPhoneLeadingConstraint = [(ICDocCamViewController *)self cancelButtonForIPhoneLeadingConstraint];
      [iPhonePortraitLayoutConstraints12 addObject:cancelButtonForIPhoneLeadingConstraint];

      iPhoneLandscapeLayoutConstraints11 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      cancelButtonForIPhoneLeadingConstraint2 = [(ICDocCamViewController *)self cancelButtonForIPhoneLeadingConstraint];
      [iPhoneLandscapeLayoutConstraints11 addObject:cancelButtonForIPhoneLeadingConstraint2];

      iPhoneCompactLandscapeLayoutConstraints12 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      cancelButtonForIPhoneLeadingConstraint3 = [(ICDocCamViewController *)self cancelButtonForIPhoneLeadingConstraint];
      [iPhoneCompactLandscapeLayoutConstraints12 addObject:cancelButtonForIPhoneLeadingConstraint3];

      iPhonePortraitLayoutConstraints13 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      autoButtonForIPhone2 = [(ICDocCamViewController *)self autoButtonForIPhone];
      centerYAnchor11 = [autoButtonForIPhone2 centerYAnchor];
      topToolbarForIPhone6 = [(ICDocCamViewController *)self topToolbarForIPhone];
      bottomAnchor17 = [topToolbarForIPhone6 bottomAnchor];
      v300 = [centerYAnchor11 constraintEqualToAnchor:bottomAnchor17 constant:-22.0];
      [iPhonePortraitLayoutConstraints13 addObject:v300];

      iPhoneLandscapeLayoutConstraints12 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      autoButtonForIPhone3 = [(ICDocCamViewController *)self autoButtonForIPhone];
      centerYAnchor12 = [autoButtonForIPhone3 centerYAnchor];
      topToolbarForIPhone7 = [(ICDocCamViewController *)self topToolbarForIPhone];
      bottomAnchor18 = [topToolbarForIPhone7 bottomAnchor];
      v306 = [centerYAnchor12 constraintEqualToAnchor:bottomAnchor18 constant:-22.0];
      [iPhoneLandscapeLayoutConstraints12 addObject:v306];

      iPhoneCompactLandscapeLayoutConstraints13 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      autoButtonForIPhone4 = [(ICDocCamViewController *)self autoButtonForIPhone];
      centerYAnchor13 = [autoButtonForIPhone4 centerYAnchor];
      topToolbarForIPhone8 = [(ICDocCamViewController *)self topToolbarForIPhone];
      bottomAnchor19 = [topToolbarForIPhone8 bottomAnchor];
      v312 = [centerYAnchor13 constraintEqualToAnchor:bottomAnchor19 constant:-16.0];
      [iPhoneCompactLandscapeLayoutConstraints13 addObject:v312];

      autoButtonForIPhone5 = [(ICDocCamViewController *)self autoButtonForIPhone];
      trailingAnchor12 = [autoButtonForIPhone5 trailingAnchor];
      topToolbarForIPhone9 = [(ICDocCamViewController *)self topToolbarForIPhone];
      trailingAnchor13 = [topToolbarForIPhone9 trailingAnchor];
      v317 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13 constant:0.0];
      [(ICDocCamViewController *)self setAutoButtonForIPhoneTrailingConstraint:v317];

      iPhonePortraitLayoutConstraints14 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      autoButtonForIPhoneTrailingConstraint = [(ICDocCamViewController *)self autoButtonForIPhoneTrailingConstraint];
      [iPhonePortraitLayoutConstraints14 addObject:autoButtonForIPhoneTrailingConstraint];

      iPhoneLandscapeLayoutConstraints13 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      autoButtonForIPhoneTrailingConstraint2 = [(ICDocCamViewController *)self autoButtonForIPhoneTrailingConstraint];
      [iPhoneLandscapeLayoutConstraints13 addObject:autoButtonForIPhoneTrailingConstraint2];

      iPhoneCompactLandscapeLayoutConstraints14 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      autoButtonForIPhoneTrailingConstraint3 = [(ICDocCamViewController *)self autoButtonForIPhoneTrailingConstraint];
      [iPhoneCompactLandscapeLayoutConstraints14 addObject:autoButtonForIPhoneTrailingConstraint3];

      iPhonePortraitLayoutConstraints15 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      flashButtonForIPhone2 = [(ICDocCamViewController *)self flashButtonForIPhone];
      centerYAnchor14 = [flashButtonForIPhone2 centerYAnchor];
      topToolbarForIPhone10 = [(ICDocCamViewController *)self topToolbarForIPhone];
      bottomAnchor20 = [topToolbarForIPhone10 bottomAnchor];
      v329 = [centerYAnchor14 constraintEqualToAnchor:bottomAnchor20 constant:-22.0];
      [iPhonePortraitLayoutConstraints15 addObject:v329];

      iPhoneLandscapeLayoutConstraints14 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      flashButtonForIPhone3 = [(ICDocCamViewController *)self flashButtonForIPhone];
      centerYAnchor15 = [flashButtonForIPhone3 centerYAnchor];
      topToolbarForIPhone11 = [(ICDocCamViewController *)self topToolbarForIPhone];
      bottomAnchor21 = [topToolbarForIPhone11 bottomAnchor];
      v335 = [centerYAnchor15 constraintEqualToAnchor:bottomAnchor21 constant:-22.0];
      [iPhoneLandscapeLayoutConstraints14 addObject:v335];

      iPhoneCompactLandscapeLayoutConstraints15 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      flashButtonForIPhone4 = [(ICDocCamViewController *)self flashButtonForIPhone];
      centerYAnchor16 = [flashButtonForIPhone4 centerYAnchor];
      topToolbarForIPhone12 = [(ICDocCamViewController *)self topToolbarForIPhone];
      bottomAnchor22 = [topToolbarForIPhone12 bottomAnchor];
      v341 = [centerYAnchor16 constraintEqualToAnchor:bottomAnchor22 constant:-16.0];
      [iPhoneCompactLandscapeLayoutConstraints15 addObject:v341];

      view15 = [(ICDocCamViewController *)self view];
      [view15 bounds];
      v344 = v343;

      view16 = [(ICDocCamViewController *)self view];
      [view16 bounds];
      v347 = v346;

      if (v344 < v347)
      {
        v347 = v344;
      }

      cancelButtonForIPhone6 = [(ICDocCamViewController *)self cancelButtonForIPhone];
      [cancelButtonForIPhone6 bounds];
      v350 = v349;

      autoButtonForIPhone6 = [(ICDocCamViewController *)self autoButtonForIPhone];
      v632 = v14;
      [autoButtonForIPhone6 bounds];
      v352 = v350 + 12.0;
      v354 = v353 + 12.0;

      if (v352 < v354)
      {
        v352 = v354;
      }

      array4 = [MEMORY[0x277CBEB18] array];
      flashButtonForIPhone5 = [(ICDocCamViewController *)self flashButtonForIPhone];
      centerXAnchor3 = [flashButtonForIPhone5 centerXAnchor];
      topToolbarForIPhone13 = [(ICDocCamViewController *)self topToolbarForIPhone];
      centerXAnchor4 = [topToolbarForIPhone13 centerXAnchor];
      v360 = (v347 - (v352 + v352) + -88.0) / 3.0 * 0.5;
      v360 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4 constant:-22.0 - v360];
      [array4 addObject:v360];

      iPhonePortraitLayoutConstraints16 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [iPhonePortraitLayoutConstraints16 addObjectsFromArray:array4];

      [array4 removeAllObjects];
      view17 = [(ICDocCamViewController *)self view];
      [view17 bounds];
      v365 = v364;

      view18 = [(ICDocCamViewController *)self view];
      [view18 bounds];
      v368 = v367;

      if (v365 >= v368)
      {
        v368 = v365;
      }

      cancelButtonForIPhone7 = [(ICDocCamViewController *)self cancelButtonForIPhone];
      [cancelButtonForIPhone7 bounds];
      v371 = v370;

      autoButtonForIPhone7 = [(ICDocCamViewController *)self autoButtonForIPhone];
      v631 = v360;
      [autoButtonForIPhone7 bounds];
      v373 = v371 + 12.0;
      v375 = v374 + 12.0;

      if (v373 >= v375)
      {
        v375 = v373;
      }

      flashButtonForIPhone6 = [(ICDocCamViewController *)self flashButtonForIPhone];
      centerXAnchor5 = [flashButtonForIPhone6 centerXAnchor];
      topToolbarForIPhone14 = [(ICDocCamViewController *)self topToolbarForIPhone];
      centerXAnchor6 = [topToolbarForIPhone14 centerXAnchor];
      v380 = (v368 - (v375 + v375) + -88.0) / 3.0 * 0.5;
      v380 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6 constant:-22.0 - v380];
      [array4 addObject:v380];

      iPhoneLandscapeLayoutConstraints15 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      [iPhoneLandscapeLayoutConstraints15 addObjectsFromArray:array4];

      [array4 removeAllObjects];
      view19 = [(ICDocCamViewController *)self view];
      [view19 bounds];
      v385 = v384;

      view20 = [(ICDocCamViewController *)self view];
      [view20 bounds];
      v388 = v387;

      if (v385 >= v388)
      {
        v388 = v385;
      }

      cancelButtonForIPhone8 = [(ICDocCamViewController *)self cancelButtonForIPhone];
      [cancelButtonForIPhone8 bounds];
      v391 = v390;

      autoButtonForIPhone8 = [(ICDocCamViewController *)self autoButtonForIPhone];
      v630 = v380;
      [autoButtonForIPhone8 bounds];
      v393 = v391 + 12.0;
      v395 = v394 + 12.0;

      if (v393 >= v395)
      {
        v395 = v393;
      }

      [(ICDocCamViewController *)self flashButtonForIPhone];
      v396 = v14 = v632;
      centerXAnchor7 = [v396 centerXAnchor];
      topToolbarForIPhone15 = [(ICDocCamViewController *)self topToolbarForIPhone];
      centerXAnchor8 = [topToolbarForIPhone15 centerXAnchor];
      v400 = (v388 - (v395 + v395) + -64.0) / 3.0 * 0.5;
      v400 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8 constant:-16.0 - v400];
      [array4 addObject:v400];

      iPhoneCompactLandscapeLayoutConstraints16 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      [iPhoneCompactLandscapeLayoutConstraints16 addObjectsFromArray:array4];

      [array4 removeAllObjects];
      iPhonePortraitLayoutConstraints17 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      filterButtonForIPhone2 = [(ICDocCamViewController *)self filterButtonForIPhone];
      centerYAnchor17 = [filterButtonForIPhone2 centerYAnchor];
      topToolbarForIPhone16 = [(ICDocCamViewController *)self topToolbarForIPhone];
      bottomAnchor23 = [topToolbarForIPhone16 bottomAnchor];
      v408 = [centerYAnchor17 constraintEqualToAnchor:bottomAnchor23 constant:-22.0];
      [iPhonePortraitLayoutConstraints17 addObject:v408];

      iPhoneLandscapeLayoutConstraints16 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      filterButtonForIPhone3 = [(ICDocCamViewController *)self filterButtonForIPhone];
      centerYAnchor18 = [filterButtonForIPhone3 centerYAnchor];
      topToolbarForIPhone17 = [(ICDocCamViewController *)self topToolbarForIPhone];
      bottomAnchor24 = [topToolbarForIPhone17 bottomAnchor];
      v414 = [centerYAnchor18 constraintEqualToAnchor:bottomAnchor24 constant:-22.0];
      [iPhoneLandscapeLayoutConstraints16 addObject:v414];

      iPhoneCompactLandscapeLayoutConstraints17 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      filterButtonForIPhone4 = [(ICDocCamViewController *)self filterButtonForIPhone];
      centerYAnchor19 = [filterButtonForIPhone4 centerYAnchor];
      topToolbarForIPhone18 = [(ICDocCamViewController *)self topToolbarForIPhone];
      bottomAnchor25 = [topToolbarForIPhone18 bottomAnchor];
      v420 = [centerYAnchor19 constraintEqualToAnchor:bottomAnchor25 constant:-16.0];
      [iPhoneCompactLandscapeLayoutConstraints17 addObject:v420];

      filterButtonForIPhone5 = [(ICDocCamViewController *)self filterButtonForIPhone];
      centerXAnchor9 = [filterButtonForIPhone5 centerXAnchor];
      topToolbarForIPhone19 = [(ICDocCamViewController *)self topToolbarForIPhone];
      centerXAnchor10 = [topToolbarForIPhone19 centerXAnchor];
      v425 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10 constant:v631 + 22.0];
      [array4 addObject:v425];

      iPhonePortraitLayoutConstraints18 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [iPhonePortraitLayoutConstraints18 addObjectsFromArray:array4];

      [array4 removeAllObjects];
      filterButtonForIPhone6 = [(ICDocCamViewController *)self filterButtonForIPhone];
      centerXAnchor11 = [filterButtonForIPhone6 centerXAnchor];
      topToolbarForIPhone20 = [(ICDocCamViewController *)self topToolbarForIPhone];
      centerXAnchor12 = [topToolbarForIPhone20 centerXAnchor];
      v431 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12 constant:v630 + 22.0];
      [array4 addObject:v431];

      iPhoneLandscapeLayoutConstraints17 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      [iPhoneLandscapeLayoutConstraints17 addObjectsFromArray:array4];

      [array4 removeAllObjects];
      filterButtonForIPhone7 = [(ICDocCamViewController *)self filterButtonForIPhone];
      centerXAnchor13 = [filterButtonForIPhone7 centerXAnchor];
      topToolbarForIPhone21 = [(ICDocCamViewController *)self topToolbarForIPhone];
      centerXAnchor14 = [topToolbarForIPhone21 centerXAnchor];
      v437 = [centerXAnchor13 constraintEqualToAnchor:centerXAnchor14 constant:v400 + 16.0];
      [array4 addObject:v437];

      iPhoneCompactLandscapeLayoutConstraints18 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      [iPhoneCompactLandscapeLayoutConstraints18 addObjectsFromArray:array4];

      array5 = [MEMORY[0x277CBEB18] array];
      v641 = 0u;
      v642 = 0u;
      v639 = 0u;
      v640 = 0u;
      flashSettingView = [(ICDocCamViewController *)self flashSettingView];
      constraints = [flashSettingView constraints];

      v442 = [constraints countByEnumeratingWithState:&v639 objects:v644 count:16];
      if (v442)
      {
        v443 = *v640;
        do
        {
          for (i = 0; i != v442; ++i)
          {
            if (*v640 != v443)
            {
              objc_enumerationMutation(constraints);
            }

            [array5 addObject:*(*(&v639 + 1) + 8 * i)];
          }

          v442 = [constraints countByEnumeratingWithState:&v639 objects:v644 count:16];
        }

        while (v442);
      }

      flashSettingView2 = [(ICDocCamViewController *)self flashSettingView];
      [flashSettingView2 removeConstraints:array5];

      array6 = [MEMORY[0x277CBEB18] array];

      v637 = 0u;
      v638 = 0u;
      v635 = 0u;
      v636 = 0u;
      flashSettingButtonView = [(ICDocCamViewController *)self flashSettingButtonView];
      constraints2 = [flashSettingButtonView constraints];

      v449 = [constraints2 countByEnumeratingWithState:&v635 objects:v643 count:16];
      if (v449)
      {
        v450 = *v636;
        do
        {
          for (j = 0; j != v449; ++j)
          {
            if (*v636 != v450)
            {
              objc_enumerationMutation(constraints2);
            }

            [array6 addObject:*(*(&v635 + 1) + 8 * j)];
          }

          v449 = [constraints2 countByEnumeratingWithState:&v635 objects:v643 count:16];
        }

        while (v449);
      }

      flashSettingButtonView2 = [(ICDocCamViewController *)self flashSettingButtonView];
      [flashSettingButtonView2 removeConstraints:array6];

      view21 = [(ICDocCamViewController *)self view];
      flashSettingView3 = [(ICDocCamViewController *)self flashSettingView];
      [view21 dc_removeAllConstraintsForSubview:flashSettingView3];

      flashSettingView4 = [(ICDocCamViewController *)self flashSettingView];
      [flashSettingView4 setTranslatesAutoresizingMaskIntoConstraints:0];

      flashSettingView5 = [(ICDocCamViewController *)self flashSettingView];
      flashSettingButtonView3 = [(ICDocCamViewController *)self flashSettingButtonView];
      [flashSettingView5 dc_removeAllConstraintsForSubview:flashSettingButtonView3];

      flashSettingButtonView4 = [(ICDocCamViewController *)self flashSettingButtonView];
      [flashSettingButtonView4 setTranslatesAutoresizingMaskIntoConstraints:0];

      flashSettingButtonView5 = [(ICDocCamViewController *)self flashSettingButtonView];
      flashSettingViewFlashIcon = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      [flashSettingButtonView5 dc_removeAllConstraintsForSubview:flashSettingViewFlashIcon];

      flashSettingViewFlashIcon2 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      [flashSettingViewFlashIcon2 setTranslatesAutoresizingMaskIntoConstraints:0];

      flashSettingButtonView6 = [(ICDocCamViewController *)self flashSettingButtonView];
      flashSettingViewAutoButton = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      [flashSettingButtonView6 dc_removeAllConstraintsForSubview:flashSettingViewAutoButton];

      flashSettingViewAutoButton2 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      [flashSettingViewAutoButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

      flashSettingButtonView7 = [(ICDocCamViewController *)self flashSettingButtonView];
      flashSettingViewOnButton = [(ICDocCamViewController *)self flashSettingViewOnButton];
      [flashSettingButtonView7 dc_removeAllConstraintsForSubview:flashSettingViewOnButton];

      flashSettingViewOnButton2 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      [flashSettingViewOnButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

      flashSettingButtonView8 = [(ICDocCamViewController *)self flashSettingButtonView];
      flashSettingViewOffButton = [(ICDocCamViewController *)self flashSettingViewOffButton];
      [flashSettingButtonView8 dc_removeAllConstraintsForSubview:flashSettingViewOffButton];

      flashSettingViewOffButton2 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      [flashSettingViewOffButton2 setTranslatesAutoresizingMaskIntoConstraints:0];

      flashButton = [(ICDocCamViewController *)self flashButton];
      [flashButton setHidden:1];

      array7 = [MEMORY[0x277CBEB18] array];
      flashSettingView6 = [(ICDocCamViewController *)self flashSettingView];
      leadingAnchor8 = [flashSettingView6 leadingAnchor];
      view22 = [(ICDocCamViewController *)self view];
      leadingAnchor9 = [view22 leadingAnchor];
      v477 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9 constant:0.0];
      [array7 addObject:v477];

      flashSettingView7 = [(ICDocCamViewController *)self flashSettingView];
      trailingAnchor14 = [flashSettingView7 trailingAnchor];
      view23 = [(ICDocCamViewController *)self view];
      trailingAnchor15 = [view23 trailingAnchor];
      v482 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15 constant:0.0];
      [array7 addObject:v482];

      flashSettingView8 = [(ICDocCamViewController *)self flashSettingView];
      topAnchor9 = [flashSettingView8 topAnchor];
      view24 = [(ICDocCamViewController *)self view];
      topAnchor10 = [view24 topAnchor];
      v487 = [topAnchor9 constraintEqualToAnchor:topAnchor10 constant:0.0];
      [array7 addObject:v487];

      iPhonePortraitLayoutConstraints19 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [iPhonePortraitLayoutConstraints19 addObjectsFromArray:array7];

      iPhoneLandscapeLayoutConstraints18 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      [iPhoneLandscapeLayoutConstraints18 addObjectsFromArray:array7];

      iPhoneCompactLandscapeLayoutConstraints19 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      [iPhoneCompactLandscapeLayoutConstraints19 addObjectsFromArray:array7];

      flashSettingView9 = [(ICDocCamViewController *)self flashSettingView];
      heightAnchor2 = [flashSettingView9 heightAnchor];
      v493 = [heightAnchor2 constraintEqualToConstant:v632];
      [(ICDocCamViewController *)self setFlashSettingViewHeightConstraint:v493];

      iPhonePortraitLayoutConstraints20 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      flashSettingViewHeightConstraint = [(ICDocCamViewController *)self flashSettingViewHeightConstraint];
      [iPhonePortraitLayoutConstraints20 addObject:flashSettingViewHeightConstraint];

      iPhoneLandscapeLayoutConstraints19 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      flashSettingViewHeightConstraint2 = [(ICDocCamViewController *)self flashSettingViewHeightConstraint];
      [iPhoneLandscapeLayoutConstraints19 addObject:flashSettingViewHeightConstraint2];

      iPhoneCompactLandscapeLayoutConstraints20 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      flashSettingViewHeightConstraint3 = [(ICDocCamViewController *)self flashSettingViewHeightConstraint];
      [iPhoneCompactLandscapeLayoutConstraints20 addObject:flashSettingViewHeightConstraint3];

      array8 = [MEMORY[0x277CBEB18] array];
      flashSettingButtonView9 = [(ICDocCamViewController *)self flashSettingButtonView];
      leadingAnchor10 = [flashSettingButtonView9 leadingAnchor];
      flashSettingView10 = [(ICDocCamViewController *)self flashSettingView];
      leadingAnchor11 = [flashSettingView10 leadingAnchor];
      v505 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11 constant:0.0];
      [array8 addObject:v505];

      flashSettingButtonView10 = [(ICDocCamViewController *)self flashSettingButtonView];
      trailingAnchor16 = [flashSettingButtonView10 trailingAnchor];
      flashSettingView11 = [(ICDocCamViewController *)self flashSettingView];
      trailingAnchor17 = [flashSettingView11 trailingAnchor];
      v510 = [trailingAnchor16 constraintEqualToAnchor:trailingAnchor17 constant:0.0];
      [array8 addObject:v510];

      flashSettingButtonView11 = [(ICDocCamViewController *)self flashSettingButtonView];
      bottomAnchor26 = [flashSettingButtonView11 bottomAnchor];
      flashSettingView12 = [(ICDocCamViewController *)self flashSettingView];
      bottomAnchor27 = [flashSettingView12 bottomAnchor];
      v515 = [bottomAnchor26 constraintEqualToAnchor:bottomAnchor27 constant:0.0];
      [array8 addObject:v515];

      iPhonePortraitLayoutConstraints21 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [iPhonePortraitLayoutConstraints21 addObjectsFromArray:array8];

      iPhoneLandscapeLayoutConstraints20 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      [iPhoneLandscapeLayoutConstraints20 addObjectsFromArray:array8];

      iPhoneCompactLandscapeLayoutConstraints21 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      [iPhoneCompactLandscapeLayoutConstraints21 addObjectsFromArray:array8];

      iPhonePortraitLayoutConstraints22 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      flashSettingButtonView12 = [(ICDocCamViewController *)self flashSettingButtonView];
      topAnchor11 = [flashSettingButtonView12 topAnchor];
      flashSettingView13 = [(ICDocCamViewController *)self flashSettingView];
      bottomAnchor28 = [flashSettingView13 bottomAnchor];
      v524 = [topAnchor11 constraintEqualToAnchor:bottomAnchor28 constant:-44.0];
      [iPhonePortraitLayoutConstraints22 addObject:v524];

      iPhoneLandscapeLayoutConstraints21 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      flashSettingButtonView13 = [(ICDocCamViewController *)self flashSettingButtonView];
      topAnchor12 = [flashSettingButtonView13 topAnchor];
      flashSettingView14 = [(ICDocCamViewController *)self flashSettingView];
      bottomAnchor29 = [flashSettingView14 bottomAnchor];
      v530 = [topAnchor12 constraintEqualToAnchor:bottomAnchor29 constant:-44.0];
      [iPhoneLandscapeLayoutConstraints21 addObject:v530];

      iPhoneCompactLandscapeLayoutConstraints22 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      flashSettingButtonView14 = [(ICDocCamViewController *)self flashSettingButtonView];
      topAnchor13 = [flashSettingButtonView14 topAnchor];
      flashSettingView15 = [(ICDocCamViewController *)self flashSettingView];
      bottomAnchor30 = [flashSettingView15 bottomAnchor];
      v536 = [topAnchor13 constraintEqualToAnchor:bottomAnchor30 constant:-32.0];
      [iPhoneCompactLandscapeLayoutConstraints22 addObject:v536];

      view25 = [(ICDocCamViewController *)self view];
      [view25 bounds];
      v539 = v538;

      view26 = [(ICDocCamViewController *)self view];
      [view26 bounds];
      v542 = v541;

      if (v539 >= v542)
      {
        v539 = v542;
      }

      array9 = [MEMORY[0x277CBEB18] array];
      flashSettingViewFlashIcon3 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      centerXAnchor15 = [flashSettingViewFlashIcon3 centerXAnchor];
      flashSettingButtonView15 = [(ICDocCamViewController *)self flashSettingButtonView];
      leadingAnchor12 = [flashSettingButtonView15 leadingAnchor];
      v548 = [centerXAnchor15 constraintEqualToAnchor:leadingAnchor12 constant:24.0];
      [array9 addObject:v548];

      flashSettingViewFlashIcon4 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      centerYAnchor20 = [flashSettingViewFlashIcon4 centerYAnchor];
      flashSettingButtonView16 = [(ICDocCamViewController *)self flashSettingButtonView];
      centerYAnchor21 = [flashSettingButtonView16 centerYAnchor];
      v553 = [centerYAnchor20 constraintEqualToAnchor:centerYAnchor21 constant:0.0];
      [array9 addObject:v553];

      flashSettingViewAutoButton3 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      centerXAnchor16 = [flashSettingViewAutoButton3 centerXAnchor];
      flashSettingButtonView17 = [(ICDocCamViewController *)self flashSettingButtonView];
      leadingAnchor13 = [flashSettingButtonView17 leadingAnchor];
      v558 = v539 * 0.5;
      v559 = (v558 + -32.0) * 0.5;
      v560 = [centerXAnchor16 constraintEqualToAnchor:leadingAnchor13 constant:v559 + 32.0];
      [array9 addObject:v560];

      flashSettingViewAutoButton4 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      centerYAnchor22 = [flashSettingViewAutoButton4 centerYAnchor];
      flashSettingButtonView18 = [(ICDocCamViewController *)self flashSettingButtonView];
      centerYAnchor23 = [flashSettingButtonView18 centerYAnchor];
      v565 = [centerYAnchor22 constraintEqualToAnchor:centerYAnchor23 constant:0.0];
      [array9 addObject:v565];

      flashSettingViewOnButton3 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      centerXAnchor17 = [flashSettingViewOnButton3 centerXAnchor];
      flashSettingButtonView19 = [(ICDocCamViewController *)self flashSettingButtonView];
      leadingAnchor14 = [flashSettingButtonView19 leadingAnchor];
      v570 = [centerXAnchor17 constraintEqualToAnchor:leadingAnchor14 constant:v558];
      [array9 addObject:v570];

      flashSettingViewOnButton4 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      centerYAnchor24 = [flashSettingViewOnButton4 centerYAnchor];
      flashSettingButtonView20 = [(ICDocCamViewController *)self flashSettingButtonView];
      centerYAnchor25 = [flashSettingButtonView20 centerYAnchor];
      v575 = [centerYAnchor24 constraintEqualToAnchor:centerYAnchor25 constant:0.0];
      [array9 addObject:v575];

      flashSettingViewOffButton3 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      centerXAnchor18 = [flashSettingViewOffButton3 centerXAnchor];
      flashSettingButtonView21 = [(ICDocCamViewController *)self flashSettingButtonView];
      leadingAnchor15 = [flashSettingButtonView21 leadingAnchor];
      v559 = [centerXAnchor18 constraintEqualToAnchor:leadingAnchor15 constant:v558 + v559];
      [array9 addObject:v559];

      flashSettingViewOffButton4 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      centerYAnchor26 = [flashSettingViewOffButton4 centerYAnchor];
      flashSettingButtonView22 = [(ICDocCamViewController *)self flashSettingButtonView];
      centerYAnchor27 = [flashSettingButtonView22 centerYAnchor];
      v585 = [centerYAnchor26 constraintEqualToAnchor:centerYAnchor27 constant:0.0];
      [array9 addObject:v585];

      iPhonePortraitLayoutConstraints23 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [iPhonePortraitLayoutConstraints23 addObjectsFromArray:array9];

      array10 = [MEMORY[0x277CBEB18] array];
      flashSettingViewFlashIcon5 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      trailingAnchor18 = [flashSettingViewFlashIcon5 trailingAnchor];
      flashSettingViewAutoButton5 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      leadingAnchor16 = [flashSettingViewAutoButton5 leadingAnchor];
      v592 = [trailingAnchor18 constraintEqualToAnchor:leadingAnchor16 constant:-37.0];
      [array10 addObject:v592];

      flashSettingViewFlashIcon6 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      centerYAnchor28 = [flashSettingViewFlashIcon6 centerYAnchor];
      flashSettingViewAutoButton6 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      centerYAnchor29 = [flashSettingViewAutoButton6 centerYAnchor];
      v597 = [centerYAnchor28 constraintEqualToAnchor:centerYAnchor29 constant:0.0];
      [array10 addObject:v597];

      flashSettingViewAutoButton7 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      trailingAnchor19 = [flashSettingViewAutoButton7 trailingAnchor];
      flashSettingViewOnButton5 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      leadingAnchor17 = [flashSettingViewOnButton5 leadingAnchor];
      v602 = [trailingAnchor19 constraintEqualToAnchor:leadingAnchor17 constant:-46.0];
      [array10 addObject:v602];

      flashSettingViewAutoButton8 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      centerYAnchor30 = [flashSettingViewAutoButton8 centerYAnchor];
      flashSettingButtonView23 = [(ICDocCamViewController *)self flashSettingButtonView];
      centerYAnchor31 = [flashSettingButtonView23 centerYAnchor];
      v607 = [centerYAnchor30 constraintEqualToAnchor:centerYAnchor31 constant:0.0];
      [array10 addObject:v607];

      flashSettingViewOnButton6 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      centerXAnchor19 = [flashSettingViewOnButton6 centerXAnchor];
      flashSettingButtonView24 = [(ICDocCamViewController *)self flashSettingButtonView];
      centerXAnchor20 = [flashSettingButtonView24 centerXAnchor];
      v612 = [centerXAnchor19 constraintEqualToAnchor:centerXAnchor20 constant:0.0];
      [array10 addObject:v612];

      flashSettingViewOnButton7 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      centerYAnchor32 = [flashSettingViewOnButton7 centerYAnchor];
      flashSettingButtonView25 = [(ICDocCamViewController *)self flashSettingButtonView];
      centerYAnchor33 = [flashSettingButtonView25 centerYAnchor];
      v617 = [centerYAnchor32 constraintEqualToAnchor:centerYAnchor33 constant:0.0];
      [array10 addObject:v617];

      flashSettingViewOffButton5 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      leadingAnchor18 = [flashSettingViewOffButton5 leadingAnchor];
      flashSettingViewOnButton8 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      trailingAnchor20 = [flashSettingViewOnButton8 trailingAnchor];
      v622 = [leadingAnchor18 constraintEqualToAnchor:trailingAnchor20 constant:46.0];
      [array10 addObject:v622];

      flashSettingViewOffButton6 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      centerYAnchor34 = [flashSettingViewOffButton6 centerYAnchor];
      flashSettingButtonView26 = [(ICDocCamViewController *)self flashSettingButtonView];
      centerYAnchor35 = [flashSettingButtonView26 centerYAnchor];
      v627 = [centerYAnchor34 constraintEqualToAnchor:centerYAnchor35 constant:0.0];
      [array10 addObject:v627];

      iPhoneLandscapeLayoutConstraints22 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      [iPhoneLandscapeLayoutConstraints22 addObjectsFromArray:array10];

      iPhoneCompactLandscapeLayoutConstraints23 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      [iPhoneCompactLandscapeLayoutConstraints23 addObjectsFromArray:array10];

      [(ICDocCamViewController *)self updateThumbnailConstraintsForIPhone];
    }
  }

  autoShutterOffTopLayoutConstraint = [(ICDocCamViewController *)self autoShutterOffTopLayoutConstraint];
  [autoShutterOffTopLayoutConstraint setConstant:v6 + 60.0];

  autoShutterOffTopLayoutConstraint2 = [(ICDocCamViewController *)self autoShutterOffTopLayoutConstraint];
  [autoShutterOffTopLayoutConstraint2 setConstant:v6 + 60.0];

  shutterButtonBottomConstraintForPortraitIPhone2 = [(ICDocCamViewController *)self shutterButtonBottomConstraintForPortraitIPhone];
  [shutterButtonBottomConstraintForPortraitIPhone2 setConstant:v25];

  shutterButtonBottomConstraintForLandscapeIPhone3 = [(ICDocCamViewController *)self shutterButtonBottomConstraintForLandscapeIPhone];
  [shutterButtonBottomConstraintForLandscapeIPhone3 setConstant:v25];

  filterViewContainerHeightConstraint4 = [(ICDocCamViewController *)self filterViewContainerHeightConstraint];
  v31 = v14 + v6;
  [filterViewContainerHeightConstraint4 setConstant:v31];

  flashSettingViewHeightConstraint4 = [(ICDocCamViewController *)self flashSettingViewHeightConstraint];
  [flashSettingViewHeightConstraint4 setConstant:v31];

  thumbnailContainerViewBottomConstraintForIPhone = [(ICDocCamViewController *)self thumbnailContainerViewBottomConstraintForIPhone];
  [thumbnailContainerViewBottomConstraintForIPhone setConstant:-16.0 - v8 - v12];

  thumbnailContainerViewLeadingConstraintForIPhone = [(ICDocCamViewController *)self thumbnailContainerViewLeadingConstraintForIPhone];
  [thumbnailContainerViewLeadingConstraintForIPhone setConstant:v634 + 16.0];

  cancelButtonForIPhoneLeadingConstraint4 = [(ICDocCamViewController *)self cancelButtonForIPhoneLeadingConstraint];
  [cancelButtonForIPhoneLeadingConstraint4 setConstant:v634 + 12.0];

  autoButtonForIPhoneTrailingConstraint4 = [(ICDocCamViewController *)self autoButtonForIPhoneTrailingConstraint];
  [autoButtonForIPhoneTrailingConstraint4 setConstant:-12.0 - v10];

  saveButtonLandscapeVerticalConstraintForIPhone3 = [(ICDocCamViewController *)self saveButtonLandscapeVerticalConstraintForIPhone];
  [saveButtonLandscapeVerticalConstraintForIPhone3 setConstant:-34.0 - v8];

  saveButtonLandscapeTrailingConstraintForIPhone3 = [(ICDocCamViewController *)self saveButtonLandscapeTrailingConstraintForIPhone];
  [saveButtonLandscapeTrailingConstraintForIPhone3 setConstant:-21.0 - v10];

  view27 = [(ICDocCamViewController *)self view];
  [view27 frame];
  v41 = v40;

  view28 = [(ICDocCamViewController *)self view];
  [view28 frame];
  v44 = v43;

  if (v41 >= v44)
  {
    v41 = v44;
  }

  saveButton6 = [(ICDocCamViewController *)self saveButton];
  [saveButton6 setMaxWidthForPortraitIPhone:(v41 * 0.5 + -43.0 + -16.0)];

  filterButtonImage = [(ICDocCamViewController *)self filterButtonImage];
  filterButton = [(ICDocCamViewController *)self filterButton];
  [filterButton setImage:filterButtonImage forState:0];

  filterButtonForIPhone8 = [(ICDocCamViewController *)self filterButtonForIPhone];
  [filterButtonForIPhone8 setImage:filterButtonImage forState:0];

  filterViewButton7 = [(ICDocCamViewController *)self filterViewButton];
  [filterViewButton7 setImage:filterButtonImage forState:0];

  flashButtonImage = [(ICDocCamViewController *)self flashButtonImage];
  flashButton2 = [(ICDocCamViewController *)self flashButton];
  [flashButton2 setImage:flashButtonImage forState:0];

  flashButtonForIPhone7 = [(ICDocCamViewController *)self flashButtonForIPhone];
  [flashButtonForIPhone7 setImage:flashButtonImage forState:0];

  flashSettingViewFlashIcon7 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
  [flashSettingViewFlashIcon7 setImage:flashButtonImage forState:0];

  [(ICDocCamViewController *)self filterScrollViewContentWidthWithInterItemSpacing:20.0 startPadding:10.0 endPadding:0.0];
  v55 = v54;
  filterViewButton8 = [(ICDocCamViewController *)self filterViewButton];
  [filterViewButton8 frame];
  v58 = v57;

  view29 = [(ICDocCamViewController *)self view];
  [view29 bounds];
  v61 = v60;

  filterViewLeadingConstraint = [(ICDocCamViewController *)self filterViewLeadingConstraint];
  [filterViewLeadingConstraint setConstant:0.0];

  filterViewTrailingConstraint = [(ICDocCamViewController *)self filterViewTrailingConstraint];
  [filterViewTrailingConstraint setConstant:0.0];

  if (v61 <= v55 + v58 || v11 < 2)
  {
    if (v11 <= 1)
    {
      v65 = MEMORY[0x277CCAAD0];
      iPhoneLandscapeLayoutConstraints23 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
      [v65 deactivateConstraints:iPhoneLandscapeLayoutConstraints23];

      v67 = MEMORY[0x277CCAAD0];
      iPhoneCompactLandscapeLayoutConstraints24 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
      [v67 deactivateConstraints:iPhoneCompactLandscapeLayoutConstraints24];

      v69 = MEMORY[0x277CCAAD0];
      iPhonePortraitLayoutConstraints24 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
      [v69 activateConstraints:iPhonePortraitLayoutConstraints24];

      topToolbarForIPhoneHeightConstraint = [(ICDocCamViewController *)self topToolbarForIPhoneHeightConstraint];
      [topToolbarForIPhoneHeightConstraint setConstant:v6 + 44.0];

      filterNameFeedbackBottomConstraint4 = [(ICDocCamViewController *)self filterNameFeedbackBottomConstraint];
      [filterNameFeedbackBottomConstraint4 setConstant:v6 + 59.0];
      goto LABEL_25;
    }
  }

  else
  {
    view30 = [(ICDocCamViewController *)self view];
    [view30 bounds];
    v75 = v74;

    filterViewButton9 = [(ICDocCamViewController *)self filterViewButton];
    [filterViewButton9 frame];
    v78 = v77;
    filterViewLeadingConstraint2 = [(ICDocCamViewController *)self filterViewLeadingConstraint];
    v80 = v75 - v55 + -10.0;
    [filterViewLeadingConstraint2 setConstant:v80 * 0.5 - v78 + -4.0];

    filterViewTrailingConstraint2 = [(ICDocCamViewController *)self filterViewTrailingConstraint];
    [filterViewTrailingConstraint2 setConstant:v80 * -0.5];
  }

  v82 = MEMORY[0x277CCAAD0];
  iPhonePortraitLayoutConstraints25 = [(ICDocCamViewController *)self iPhonePortraitLayoutConstraints];
  [v82 deactivateConstraints:iPhonePortraitLayoutConstraints25];

  v84 = MEMORY[0x277CCAAD0];
  if (v633)
  {
    iPhoneLandscapeLayoutConstraints24 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
    [v84 deactivateConstraints:iPhoneLandscapeLayoutConstraints24];

    v86 = MEMORY[0x277CCAAD0];
    iPhoneCompactLandscapeLayoutConstraints25 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
    [v86 activateConstraints:iPhoneCompactLandscapeLayoutConstraints25];

    topToolbarForIPhoneHeightConstraint2 = [(ICDocCamViewController *)self topToolbarForIPhoneHeightConstraint];
    [topToolbarForIPhoneHeightConstraint2 setConstant:v6 + 32.0];

    filterNameFeedbackBottomConstraint4 = [(ICDocCamViewController *)self filterNameFeedbackBottomConstraint];
    [filterNameFeedbackBottomConstraint4 setConstant:v6 + 45.0];
  }

  else
  {
    iPhoneCompactLandscapeLayoutConstraints26 = [(ICDocCamViewController *)self iPhoneCompactLandscapeLayoutConstraints];
    [v84 deactivateConstraints:iPhoneCompactLandscapeLayoutConstraints26];

    v90 = MEMORY[0x277CCAAD0];
    iPhoneLandscapeLayoutConstraints25 = [(ICDocCamViewController *)self iPhoneLandscapeLayoutConstraints];
    [v90 activateConstraints:iPhoneLandscapeLayoutConstraints25];

    topToolbarForIPhoneHeightConstraint3 = [(ICDocCamViewController *)self topToolbarForIPhoneHeightConstraint];
    [topToolbarForIPhoneHeightConstraint3 setConstant:v6 + 44.0];

    filterNameFeedbackBottomConstraint4 = [(ICDocCamViewController *)self filterNameFeedbackBottomConstraint];
    [filterNameFeedbackBottomConstraint4 setConstant:v6 + 59.0];
  }

LABEL_25:

  view31 = [(ICDocCamViewController *)self view];
  [view31 layoutIfNeeded];
}

- (void)updateThumbnailContainerViewConstraintConstantForIPad
{
  cancelButton = [(ICDocCamViewController *)self cancelButton];
  [cancelButton bounds];
  v4 = v3;

  saveButton = [(ICDocCamViewController *)self saveButton];
  [saveButton bounds];
  v6 = v5;

  v7 = vabdd_f64(v4, v6);
  thumbnailContainerViewLeadingConstraintForIPad = [(ICDocCamViewController *)self thumbnailContainerViewLeadingConstraintForIPad];
  if (v4 >= v6)
  {
    [thumbnailContainerViewLeadingConstraintForIPad setConstant:48.0];

    thumbnailContainerViewTrailingConstraintForIPad = [(ICDocCamViewController *)self thumbnailContainerViewTrailingConstraintForIPad];
    [thumbnailContainerViewTrailingConstraintForIPad setConstant:-(v7 + 48.0)];
  }

  else
  {
    [thumbnailContainerViewLeadingConstraintForIPad setConstant:v7 + 48.0];

    thumbnailContainerViewTrailingConstraintForIPad = [(ICDocCamViewController *)self thumbnailContainerViewTrailingConstraintForIPad];
    [thumbnailContainerViewTrailingConstraintForIPad setConstant:-48.0];
  }
}

- (double)filterScrollViewContentWidthWithInterItemSpacing:(double)spacing startPadding:(double)padding endPadding:(double)endPadding
{
  for (i = 0; ; ++i)
  {
    filterButtons = [(ICDocCamViewController *)self filterButtons];
    v11 = [filterButtons count];

    if (v11 <= i)
    {
      break;
    }

    filterButtons2 = [(ICDocCamViewController *)self filterButtons];
    v13 = [filterButtons2 objectAtIndexedSubscript:i];

    [v13 frame];
    v15 = v14;
    filterNames = [(ICDocCamViewController *)self filterNames];
    v17 = [filterNames count] - 1;

    if (v17 <= i)
    {
      spacingCopy = endPadding;
    }

    else
    {
      spacingCopy = spacing;
    }

    padding = padding + v15 + spacingCopy;
  }

  return padding;
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

- (void)overlayCloseButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = os_log_create("com.apple.documentcamera", "LiquidGlass");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamViewController overlayCloseButtonTapped:];
  }

  [(ICDocCamViewController *)self cancelAction:tappedCopy];
}

- (void)overlayCaptureButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = os_log_create("com.apple.documentcamera", "LiquidGlass");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamViewController overlayCaptureButtonTapped:];
  }

  [(ICDocCamViewController *)self shutterButtonAction:tappedCopy];
  thumbnailViewController = [(ICDocCamViewController *)self thumbnailViewController];
  [thumbnailViewController update];
}

- (void)overlayDoneButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = os_log_create("com.apple.documentcamera", "LiquidGlass");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamViewController overlayDoneButtonTapped:];
  }

  [(ICDocCamViewController *)self saveAction:tappedCopy];
}

- (void)setOverlayFlashMode:(int64_t)mode
{
  v5 = os_log_create("com.apple.documentcamera", "LiquidGlass");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamViewController setOverlayFlashMode:];
  }

  [(ICDocCamViewController *)self setFlashMode:mode];
  [(ICDocCamViewController *)self flashFlashButtonNameFeedback];
}

- (void)setOverlayFilter:(signed __int16)filter
{
  [(ICDocCamViewController *)self setDefaultFilter:?];
  [(ICDocCamViewController *)self flashFilterButtonNameFeedback];
  v4 = os_log_create("com.apple.documentcamera", "LiquidGlass");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamViewController setOverlayFilter:];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
  [processRequestsBlocker addBlockerOfType:@"OrientationBlocker" clearRectangles:1 clearQueue:1];

  v20.receiver = self;
  v20.super_class = ICDocCamViewController;
  [(ICDocCamViewController *)&v20 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  accelerometer = [(ICDocCamViewController *)self accelerometer];
  currentDeviceOrientation = [accelerometer currentDeviceOrientation];

  if ((currentDeviceOrientation - 1) <= 3)
  {
    videoPreviewLayer = [(ICDocCamViewController *)self videoPreviewLayer];
    connection = [videoPreviewLayer connection];
    [connection setVideoOrientation:currentDeviceOrientation];
  }

  navigationController = [(ICDocCamViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  lastObject = [viewControllers lastObject];
  v16 = lastObject;
  if (lastObject == self)
  {
    presentedViewController = [(ICDocCamViewController *)self presentedViewController];

    if (presentedViewController)
    {
      goto LABEL_7;
    }

    navigationController = [(ICDocCamViewController *)self shutterButton];
    [ICDocCamUtilities prepareForRotationIfNecessaryWithShutterButton:navigationController coodinator:coordinatorCopy];
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
  [coordinatorCopy animateAlongsideTransition:v19 completion:v18];
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

- (void)updateAutoButtonTitleForAutoMode:(BOOL)mode
{
  modeCopy = mode;
  v27 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(ICDocCamViewController *)self view];
  tintColor = [view tintColor];

  if (modeCopy)
  {
    v8 = [DCLocalization localizedStringForKey:@"Auto" value:@"Auto" table:@"Localizable"];
    autoButtonForIPhone = [(ICDocCamViewController *)self autoButtonForIPhone];
    [autoButtonForIPhone setTitle:v8 forState:0];

    autoButtonForIPhone2 = [(ICDocCamViewController *)self autoButtonForIPhone];
    [autoButtonForIPhone2 setLargeContentTitle:v8];

    cameraHighlightColor = [(ICDocCamViewController *)self cameraHighlightColor];
    autoButton = [(ICDocCamViewController *)self autoButton];
    [autoButton setTintColor:cameraHighlightColor];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    manualButton = [(ICDocCamViewController *)self manualButton];
    [manualButton setTintColor:whiteColor];

    autoButton2 = [(ICDocCamViewController *)self autoButton];
    [autoButton2 setBackgroundColor:v27];

    manualButton2 = [(ICDocCamViewController *)self manualButton];
    [manualButton2 setBackgroundColor:clearColor];
  }

  else
  {
    v8 = [DCLocalization localizedStringForKey:@"Manual" value:@"Manual" table:@"Localizable"];
    autoButtonForIPhone3 = [(ICDocCamViewController *)self autoButtonForIPhone];
    [autoButtonForIPhone3 setTitle:v8 forState:0];

    autoButtonForIPhone4 = [(ICDocCamViewController *)self autoButtonForIPhone];
    [autoButtonForIPhone4 setLargeContentTitle:v8];

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    autoButton3 = [(ICDocCamViewController *)self autoButton];
    [autoButton3 setTintColor:whiteColor2];

    cameraHighlightColor2 = [(ICDocCamViewController *)self cameraHighlightColor];
    manualButton3 = [(ICDocCamViewController *)self manualButton];
    [manualButton3 setTintColor:cameraHighlightColor2];

    autoButton4 = [(ICDocCamViewController *)self autoButton];
    [autoButton4 setBackgroundColor:clearColor];

    manualButton2 = [(ICDocCamViewController *)self manualButton];
    [manualButton2 setBackgroundColor:v27];
  }

  autoShutterOnView = [(ICDocCamViewController *)self autoShutterOnView];
  [autoShutterOnView setBackgroundColor:tintColor];

  if ([tintColor dc_colorIsLight])
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v25 = ;
  autoShutterOnLabel = [(ICDocCamViewController *)self autoShutterOnLabel];
  [autoShutterOnLabel setTextColor:v25];
}

- (void)enableShutterButtonIfPossible
{
  if ([(ICDocCamViewController *)self isInRetakeMode])
  {
    v3 = 1;
  }

  else
  {
    delegate = [(ICDocCamViewController *)self delegate];
    documentInfoCollection = [(ICDocCamViewController *)self documentInfoCollection];
    docInfos = [documentInfoCollection docInfos];
    v3 = [delegate documentCameraController:self canAddImages:{objc_msgSend(docInfos, "count") + 1}];
  }

  [(ICDocCamViewController *)self enableShutter:v3];
}

- (void)enableUIElements:(BOOL)elements
{
  elementsCopy = elements;
  flashButton = [(ICDocCamViewController *)self flashButton];
  [flashButton setEnabled:elementsCopy];

  filterButton = [(ICDocCamViewController *)self filterButton];
  [filterButton setEnabled:elementsCopy];

  autoButton = [(ICDocCamViewController *)self autoButton];
  [autoButton setEnabled:elementsCopy];

  manualButton = [(ICDocCamViewController *)self manualButton];
  [manualButton setEnabled:elementsCopy];

  flashButtonForIPhone = [(ICDocCamViewController *)self flashButtonForIPhone];
  [flashButtonForIPhone setEnabled:elementsCopy];

  filterButtonForIPhone = [(ICDocCamViewController *)self filterButtonForIPhone];
  [filterButtonForIPhone setEnabled:elementsCopy];

  autoButtonForIPhone = [(ICDocCamViewController *)self autoButtonForIPhone];
  [autoButtonForIPhone setEnabled:elementsCopy];

  [(ICDocCamViewController *)self updateAccessibilityEnabledStateForUIElements];
}

- (void)killFeedbackDisplayIncludingUserPrompts:(BOOL)prompts
{
  promptsCopy = prompts;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {

    [(ICDocCamViewController *)self killFeedbackDisplayInternalIncludingUserPrompts:promptsCopy];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __66__ICDocCamViewController_killFeedbackDisplayIncludingUserPrompts___block_invoke;
    v5[3] = &unk_278F93B00;
    v5[4] = self;
    v6 = promptsCopy;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

- (void)killFeedbackDisplayInternalIncludingUserPrompts:(BOOL)prompts
{
  promptsCopy = prompts;
  autoShutterOffView = [(ICDocCamViewController *)self autoShutterOffView];
  layer = [autoShutterOffView layer];
  [layer removeAllAnimations];

  autoShutterOnView = [(ICDocCamViewController *)self autoShutterOnView];
  layer2 = [autoShutterOnView layer];
  [layer2 removeAllAnimations];

  filterNameFeedbackView = [(ICDocCamViewController *)self filterNameFeedbackView];
  layer3 = [filterNameFeedbackView layer];
  [layer3 removeAllAnimations];

  flashFeedbackView = [(ICDocCamViewController *)self flashFeedbackView];
  layer4 = [flashFeedbackView layer];
  [layer4 removeAllAnimations];

  autoShutterOnView2 = [(ICDocCamViewController *)self autoShutterOnView];
  [autoShutterOnView2 setHidden:0];

  autoShutterOnView3 = [(ICDocCamViewController *)self autoShutterOnView];
  [autoShutterOnView3 setAlpha:1.0];

  autoShutterOnView4 = [(ICDocCamViewController *)self autoShutterOnView];
  layer5 = [autoShutterOnView4 layer];
  [layer5 setOpacity:0.0];

  autoShutterOffView2 = [(ICDocCamViewController *)self autoShutterOffView];
  [autoShutterOffView2 setHidden:0];

  autoShutterOffView3 = [(ICDocCamViewController *)self autoShutterOffView];
  [autoShutterOffView3 setAlpha:1.0];

  autoShutterOffView4 = [(ICDocCamViewController *)self autoShutterOffView];
  layer6 = [autoShutterOffView4 layer];
  [layer6 setOpacity:0.0];

  filterNameFeedbackView2 = [(ICDocCamViewController *)self filterNameFeedbackView];
  [filterNameFeedbackView2 setHidden:0];

  filterNameFeedbackView3 = [(ICDocCamViewController *)self filterNameFeedbackView];
  [filterNameFeedbackView3 setAlpha:1.0];

  filterNameFeedbackView4 = [(ICDocCamViewController *)self filterNameFeedbackView];
  layer7 = [filterNameFeedbackView4 layer];
  [layer7 setOpacity:0.0];

  flashFeedbackView2 = [(ICDocCamViewController *)self flashFeedbackView];
  [flashFeedbackView2 setHidden:0];

  flashFeedbackView3 = [(ICDocCamViewController *)self flashFeedbackView];
  [flashFeedbackView3 setAlpha:1.0];

  flashFeedbackView4 = [(ICDocCamViewController *)self flashFeedbackView];
  layer8 = [flashFeedbackView4 layer];
  [layer8 setOpacity:0.0];

  if (promptsCopy)
  {
    moveCameraCloserView = [(ICDocCamViewController *)self moveCameraCloserView];
    layer9 = [moveCameraCloserView layer];
    [layer9 removeAllAnimations];

    userPromptView = [(ICDocCamViewController *)self userPromptView];
    layer10 = [userPromptView layer];
    [layer10 removeAllAnimations];

    moveCameraCloserView2 = [(ICDocCamViewController *)self moveCameraCloserView];
    [moveCameraCloserView2 setHidden:0];

    moveCameraCloserView3 = [(ICDocCamViewController *)self moveCameraCloserView];
    [moveCameraCloserView3 setAlpha:1.0];

    moveCameraCloserView4 = [(ICDocCamViewController *)self moveCameraCloserView];
    layer11 = [moveCameraCloserView4 layer];
    [layer11 setOpacity:0.0];

    userPromptView2 = [(ICDocCamViewController *)self userPromptView];
    [userPromptView2 setAlpha:0.0];

    userPromptView3 = [(ICDocCamViewController *)self userPromptView];
    [userPromptView3 setHidden:1];
  }
}

- (void)updateLabelColors
{
  labelColor = [MEMORY[0x277D75348] labelColor];
  autoShutterOffLabel = [(ICDocCamViewController *)self autoShutterOffLabel];
  [autoShutterOffLabel setTextColor:labelColor];

  dc_labelBackgroundColor = [MEMORY[0x277D75348] dc_labelBackgroundColor];
  autoShutterOffView = [(ICDocCamViewController *)self autoShutterOffView];
  [autoShutterOffView setBackgroundColor:dc_labelBackgroundColor];

  labelColor2 = [MEMORY[0x277D75348] labelColor];
  filterNameFeedbackLabel = [(ICDocCamViewController *)self filterNameFeedbackLabel];
  [filterNameFeedbackLabel setTextColor:labelColor2];

  dc_labelBackgroundColor2 = [MEMORY[0x277D75348] dc_labelBackgroundColor];
  filterNameFeedbackView = [(ICDocCamViewController *)self filterNameFeedbackView];
  [filterNameFeedbackView setBackgroundColor:dc_labelBackgroundColor2];

  labelColor3 = [MEMORY[0x277D75348] labelColor];
  flashFeedbackLabel = [(ICDocCamViewController *)self flashFeedbackLabel];
  [flashFeedbackLabel setTextColor:labelColor3];

  dc_labelBackgroundColor3 = [MEMORY[0x277D75348] dc_labelBackgroundColor];
  flashFeedbackView = [(ICDocCamViewController *)self flashFeedbackView];
  [flashFeedbackView setBackgroundColor:dc_labelBackgroundColor3];
}

- (void)setDoneButtonVisible:(BOOL)visible
{
  visibleCopy = visible;
  isLiquidGlassEnabledForCapture = [objc_opt_class() isLiquidGlassEnabledForCapture];
  if (visibleCopy)
  {
    if (isLiquidGlassEnabledForCapture)
    {
      liquidGlassEvolutionControlsOverlayViewController = [(ICDocCamViewController *)self liquidGlassEvolutionControlsOverlayViewController];
      [liquidGlassEvolutionControlsOverlayViewController setDoneButtonShowing:1];
    }

    else
    {
      liquidGlassEvolutionControlsOverlayViewController = [(ICDocCamViewController *)self saveButton];
      [liquidGlassEvolutionControlsOverlayViewController setHidden:0];
    }
  }

  else if (isLiquidGlassEnabledForCapture)
  {
    liquidGlassEvolutionControlsOverlayViewController = [(ICDocCamViewController *)self liquidGlassEvolutionControlsOverlayViewController];
    [liquidGlassEvolutionControlsOverlayViewController setDoneButtonShowing:0];
  }

  else
  {
    liquidGlassEvolutionControlsOverlayViewController = [(ICDocCamViewController *)self saveButton];
    [liquidGlassEvolutionControlsOverlayViewController setHidden:1];
  }
}

- (void)retakeButtonWasPressed
{
  delegate = [(ICDocCamViewController *)self delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    delegate2 = [(ICDocCamViewController *)self delegate];
    documentInfoCollection = [(ICDocCamViewController *)self documentInfoCollection];
    docInfos = [documentInfoCollection docInfos];
    [delegate2 documentCameraControllerDidRetake:self pageCount:{objc_msgSend(docInfos, "count")}];
  }
}

- (void)setFlashMode:(int64_t)mode
{
  self->_flashMode = mode;
  photoOutput = [(ICDocCamViewController *)self photoOutput];
  photoSettingsForSceneMonitoring = [photoOutput photoSettingsForSceneMonitoring];
  [photoSettingsForSceneMonitoring setFlashMode:mode];
}

- (void)setupCaptureSession
{
  v20[7] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CE5B38]);
  [(ICDocCamViewController *)self setSession:v3];

  session = [(ICDocCamViewController *)self session];
  previewView = [(ICDocCamViewController *)self previewView];
  [previewView setSession:session];

  [(ICDocCamViewController *)self setSetupResult:0];
  v6 = *MEMORY[0x277CE5EA8];
  if ([MEMORY[0x277CE5AC8] authorizationStatusForMediaType:*MEMORY[0x277CE5EA8]] != 3)
  {
    sessionQueue = [(ICDocCamViewController *)self sessionQueue];
    dispatch_suspend(sessionQueue);

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

  sessionQueue2 = [(ICDocCamViewController *)self sessionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ICDocCamViewController_setupCaptureSession__block_invoke_3;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_async(sessionQueue2, block);

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
  sessionQueue = [(ICDocCamViewController *)self sessionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ICDocCamViewController_launchCaptureSession__block_invoke;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_async(sessionQueue, block);

  if ([(ICDocCamViewController *)self isInRetakeMode])
  {
    processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
    [processRequestsBlocker addBlockerOfType:@"ViewLifetimeBlocker" clearRectangles:1 clearQueue:1];

    overlayView = [(ICDocCamViewController *)self overlayView];
    [overlayView setHidden:1];

    overlayView2 = [(ICDocCamViewController *)self overlayView];
    [overlayView2 clearRectangles];

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
  sessionQueue = [(ICDocCamViewController *)self sessionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ICDocCamViewController_restartImageCaptureSessionIfNecessary__block_invoke;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_async(sessionQueue, block);
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
  sessionQueue = [(ICDocCamViewController *)self sessionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ICDocCamViewController_stopImageCaptureSession__block_invoke;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_async(sessionQueue, block);
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  photoOutput = [(ICDocCamViewController *)self photoOutput];
  isConstantColorSupported = [photoOutput isConstantColorSupported];

  if (userInterfaceIdiom == 1)
  {
    return isConstantColorSupported;
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
    filterNames = [(ICDocCamViewController *)self filterNames];
    reverseObjectEnumerator = [filterNames reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    [(ICDocCamViewController *)self setFilterNames:allObjects];
  }

  filterButtons = [(ICDocCamViewController *)self filterButtons];

  if (!filterButtons)
  {
    filterScrollView = [(ICDocCamViewController *)self filterScrollView];
    [filterScrollView setShowsVerticalScrollIndicator:0];

    filterScrollView2 = [(ICDocCamViewController *)self filterScrollView];
    [filterScrollView2 setShowsHorizontalScrollIndicator:0];

    filterScrollView3 = [(ICDocCamViewController *)self filterScrollView];
    [filterScrollView3 setDelegate:self];

    filterScrollView4 = [(ICDocCamViewController *)self filterScrollView];
    [filterScrollView4 setClipsToBounds:1];

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(ICDocCamViewController *)self setFilterButtons:v22];

    v23 = 0;
    v24 = *MEMORY[0x277D74418];
    while (1)
    {
      filterNames2 = [(ICDocCamViewController *)self filterNames];
      v26 = [filterNames2 count];

      if (v26 <= v23)
      {
        break;
      }

      v27 = [MEMORY[0x277D75220] buttonWithType:1];
      v28 = [MEMORY[0x277D74300] systemFontOfSize:14.0 weight:v24];
      titleLabel = [v27 titleLabel];
      [titleLabel setFont:v28];

      [v27 addTarget:self action:sel_filterButtonChoiceAction_ forControlEvents:64];
      filterNames3 = [(ICDocCamViewController *)self filterNames];
      v31 = [filterNames3 objectAtIndexedSubscript:v23];
      [v27 setTag:{+[ICDocCamImageFilters imageFilterTypeFromName:](ICDocCamImageFilters, "imageFilterTypeFromName:", v31)}];

      filterNames4 = [(ICDocCamViewController *)self filterNames];
      v33 = [filterNames4 objectAtIndexedSubscript:v23];
      [v27 setTitle:v33 forState:0];

      [v27 sizeToFit];
      [v27 _accessibilitySetInterfaceStyleIntent:2];
      filterButtons2 = [(ICDocCamViewController *)self filterButtons];
      [filterButtons2 addObject:v27];

      filterScrollView5 = [(ICDocCamViewController *)self filterScrollView];
      [filterScrollView5 addSubview:v27];

      [v27 _accessibilitySetIsSpeakThisElement:1];
      ++v23;
    }
  }

  defaultFilter = [(ICDocCamViewController *)self defaultFilter];

  [(ICDocCamViewController *)self updateFilterChoiceButtonSelection:defaultFilter];
}

- (void)updateFilterChoiceButtonSelection:(signed __int16)selection
{
  v4 = 0;
  selectionCopy = selection;
  v6 = MEMORY[0x277D85CD0];
  while (1)
  {
    filterButtons = [(ICDocCamViewController *)self filterButtons];
    v8 = [filterButtons count];

    if (v8 <= v4)
    {
      break;
    }

    filterButtons2 = [(ICDocCamViewController *)self filterButtons];
    v10 = [filterButtons2 objectAtIndexedSubscript:v4];
    v11 = [v10 tag];

    if (v11 == selectionCopy)
    {
      [(ICDocCamViewController *)self cameraHighlightColor];
    }

    else
    {
      [MEMORY[0x277D75348] whiteColor];
    }
    v12 = ;
    filterButtons3 = [(ICDocCamViewController *)self filterButtons];
    v14 = [filterButtons3 objectAtIndexedSubscript:v4];
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      view = [(ICDocCamViewController *)self view];
      [view layoutIfNeeded];

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
      topToolbarForIPhone = [(ICDocCamViewController *)self topToolbarForIPhone];
      [topToolbarForIPhone setAlpha:0.0];

      topToolbarForIPhone2 = [(ICDocCamViewController *)self topToolbarForIPhone];
      [topToolbarForIPhone2 setHidden:0];

      filterViewContainer = [(ICDocCamViewController *)self filterViewContainer];
      [filterViewContainer setAlpha:1.0];

      filterViewContainer2 = [(ICDocCamViewController *)self filterViewContainer];
      [filterViewContainer2 setHidden:0];

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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 20.0;
  v6 = 22.0;
  if (!userInterfaceIdiom)
  {
    v6 = 8.0;
    if (([(ICDocCamViewController *)self statusBarOrientation]- 1) <= 1)
    {
      [(ICDocCamViewController *)self filterScrollViewContentWidthWithInterItemSpacing:20.0 startPadding:10.0 endPadding:0.0];
      v8 = v7;
      filterViewButton = [(ICDocCamViewController *)self filterViewButton];
      [filterViewButton frame];
      v11 = v10;

      view = [(ICDocCamViewController *)self view];
      [view bounds];
      v13 = v8 + v11 + 4.0;
      v15 = v14 + -12.0;

      v5 = 20.0;
      if (v15 > v13)
      {
        v16 = 0;
        v17 = 0.0;
        while (1)
        {
          filterButtons = [(ICDocCamViewController *)self filterButtons];
          v19 = [filterButtons count];

          if (v19 <= v16)
          {
            break;
          }

          filterButtons2 = [(ICDocCamViewController *)self filterButtons];
          v21 = [filterButtons2 objectAtIndexedSubscript:v16];

          [v21 frame];
          v17 = v17 + v22;

          ++v16;
        }

        filterScrollView = [(ICDocCamViewController *)self filterScrollView];
        [filterScrollView bounds];
        v25 = v24;
        filterButtons3 = [(ICDocCamViewController *)self filterButtons];
        v5 = (v25 + -12.0 + -10.0 - v17) / ([filterButtons3 count] - 1);
      }
    }
  }

  [(ICDocCamViewController *)self filterScrollViewContentWidthWithInterItemSpacing:v5 startPadding:10.0 endPadding:v6];
  v28 = v27;
  filterScrollView2 = [(ICDocCamViewController *)self filterScrollView];
  [filterScrollView2 bounds];
  v31 = v30;
  filterScrollView3 = [(ICDocCamViewController *)self filterScrollView];
  [filterScrollView3 setContentSize:{v28, v31}];

  v33 = 0;
  v34 = 10.0;
  while (1)
  {
    filterButtons4 = [(ICDocCamViewController *)self filterButtons];
    v36 = [filterButtons4 count];

    if (v36 <= v33)
    {
      break;
    }

    filterButtons5 = [(ICDocCamViewController *)self filterButtons];
    v38 = [filterButtons5 objectAtIndexedSubscript:v33];

    [v38 frame];
    v40 = v39;
    filterScrollView4 = [(ICDocCamViewController *)self filterScrollView];
    [filterScrollView4 bounds];
    [v38 setFrame:{v34, 0.0, v40}];

    filterNames = [(ICDocCamViewController *)self filterNames];
    v43 = [filterNames count] - 1;

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

  layer = [MEMORY[0x277CD9EB0] layer];
  filterScrollViewContainer = [(ICDocCamViewController *)self filterScrollViewContainer];
  [filterScrollViewContainer bounds];
  [layer setFrame:?];

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v49 = MEMORY[0x277CBEA60];
  [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  if (userInterfaceIdiom2)
    v50 = {;
    cGColor = [v50 CGColor];
    v52 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    cGColor2 = [v52 CGColor];
    v54 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    cGColor3 = [v54 CGColor];
    v56 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v57 = [v49 arrayWithObjects:{cGColor, cGColor2, cGColor3, objc_msgSend(v56, "CGColor"), 0}];
    [layer setColors:v57];

    v58 = MEMORY[0x277CCABB0];
    [layer frame];
    v60 = [v58 numberWithDouble:8.0 / v59];
    v82[0] = v60;
    v61 = MEMORY[0x277CCABB0];
    [layer frame];
    v63 = [v61 numberWithDouble:16.0 / v62];
    v82[1] = v63;
    v64 = MEMORY[0x277CCABB0];
    [layer frame];
    v66 = [v64 numberWithDouble:-12.0 / v65 + 1.0];
    v82[2] = v66;
    v82[3] = &unk_285C6D4E0;
    v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:4];
    [layer setLocations:v67];
  }

  else
    v68 = {;
    cGColor4 = [v68 CGColor];
    v70 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    cGColor5 = [v70 CGColor];
    v72 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    cGColor6 = [v72 CGColor];
    v74 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v75 = [v49 arrayWithObjects:{cGColor4, cGColor5, cGColor6, objc_msgSend(v74, "CGColor"), 0}];
    [layer setColors:v75];

    v83[0] = &unk_285C6D510;
    v76 = MEMORY[0x277CCABB0];
    [layer frame];
    v60 = [v76 numberWithDouble:8.0 / v77];
    v83[1] = v60;
    v78 = MEMORY[0x277CCABB0];
    [layer frame];
    v63 = [v78 numberWithDouble:-8.0 / v79 + 1.0];
    v83[2] = v63;
    v83[3] = &unk_285C6D4E0;
    v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:4];
    [layer setLocations:v66];
  }

  [layer setStartPoint:{0.0, 0.5}];
  [layer setEndPoint:{1.0, 0.5}];
  filterScrollViewContainer2 = [(ICDocCamViewController *)self filterScrollViewContainer];
  layer2 = [filterScrollViewContainer2 layer];
  [layer2 setMask:layer];
}

- (void)updateFilterButtonTint
{
  v3 = 0;
  v4 = MEMORY[0x277D85CD0];
  while (1)
  {
    filterButtons = [(ICDocCamViewController *)self filterButtons];
    v6 = [filterButtons count];

    if (v6 <= v3)
    {
      break;
    }

    filterButtons2 = [(ICDocCamViewController *)self filterButtons];
    v8 = [filterButtons2 objectAtIndexedSubscript:v3];

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
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    cGColor = [whiteColor CGColor];
    flashSettingView = [(ICDocCamViewController *)self flashSettingView];
    layer = [flashSettingView layer];
    [layer setBorderColor:cGColor];

    flashSettingView2 = [(ICDocCamViewController *)self flashSettingView];
    layer2 = [flashSettingView2 layer];
    [layer2 setBorderWidth:0.0];

    flashSettingView3 = [(ICDocCamViewController *)self flashSettingView];
    [flashSettingView3 frame];
    v12 = v11;
    flashSettingView4 = [(ICDocCamViewController *)self flashSettingView];
    layer3 = [flashSettingView4 layer];
    [layer3 setCornerRadius:v12 * 0.5];

    flashSettingView5 = [(ICDocCamViewController *)self flashSettingView];
    [flashSettingView5 setBackgroundColor:v29];

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    cGColor2 = [whiteColor2 CGColor];
    filterViewContainer = [(ICDocCamViewController *)self filterViewContainer];
    layer4 = [filterViewContainer layer];
    [layer4 setBorderColor:cGColor2];

    filterViewContainer2 = [(ICDocCamViewController *)self filterViewContainer];
    layer5 = [filterViewContainer2 layer];
    [layer5 setBorderWidth:0.0];

    filterViewContainer3 = [(ICDocCamViewController *)self filterViewContainer];
    [filterViewContainer3 frame];
    v24 = v23;
    filterViewContainer4 = [(ICDocCamViewController *)self filterViewContainer];
    layer6 = [filterViewContainer4 layer];
    [layer6 setCornerRadius:v24 * 0.5];

    filterViewContainer5 = [(ICDocCamViewController *)self filterViewContainer];
    [filterViewContainer5 setBackgroundColor:v29];
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
  flashMenuButtonSizes = [(ICDocCamViewController *)self flashMenuButtonSizes];
  v3 = [flashMenuButtonSizes objectForKey:@"Auto"];
  [v3 CGSizeValue];
  v5 = v4;
  v6 = [flashMenuButtonSizes objectForKey:@"On"];

  [v6 CGSizeValue];
  v8 = v7;
  v9 = [flashMenuButtonSizes objectForKey:@"Off"];

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
  filterNameFeedbackLabel = [(ICDocCamViewController *)self filterNameFeedbackLabel];
  [filterNameFeedbackLabel setText:v3];

  v5 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v5 setBeginTime:CACurrentMediaTime()];
  [v5 setDuration:2.0];
  [v5 setKeyTimes:&unk_285C6D678];
  [v5 setValues:&unk_285C6D690];
  [v5 setRemovedOnCompletion:1];
  [v5 setFillMode:*MEMORY[0x277CDA238]];
  LODWORD(v6) = 1.0;
  [v5 setRepeatCount:v6];
  filterNameFeedbackView = [(ICDocCamViewController *)self filterNameFeedbackView];
  layer = [filterNameFeedbackView layer];
  [layer addAnimation:v5 forKey:@"filterName"];

  filterNameFeedbackView2 = [(ICDocCamViewController *)self filterNameFeedbackView];
  layer2 = [filterNameFeedbackView2 layer];
  [layer2 setOpacity:0.0];

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
  flashMode = [(ICDocCamViewController *)self flashMode];
  switch(flashMode)
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
  localizedFlashFlashDescription = [(ICDocCamViewController *)self localizedFlashFlashDescription];
  flashFeedbackLabel = [(ICDocCamViewController *)self flashFeedbackLabel];
  [flashFeedbackLabel setText:localizedFlashFlashDescription];

  v5 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v5 setBeginTime:CACurrentMediaTime()];
  [v5 setDuration:2.0];
  [v5 setKeyTimes:&unk_285C6D6A8];
  [v5 setValues:&unk_285C6D6C0];
  [v5 setRemovedOnCompletion:1];
  [v5 setFillMode:*MEMORY[0x277CDA238]];
  LODWORD(v6) = 1.0;
  [v5 setRepeatCount:v6];
  flashFeedbackView = [(ICDocCamViewController *)self flashFeedbackView];
  layer = [flashFeedbackView layer];
  [layer addAnimation:v5 forKey:@"filterName"];

  flashFeedbackView2 = [(ICDocCamViewController *)self flashFeedbackView];
  layer2 = [flashFeedbackView2 layer];
  [layer2 setOpacity:0.0];

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

- (void)filterButtonChoiceAction:(id)action
{
  actionCopy = action;
  -[ICDocCamViewController setDefaultFilter:](self, "setDefaultFilter:", [actionCopy tag]);
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
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

- (void)updateFilterChoiceButtonScrollPositionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = 0;
  v7 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  while (1)
  {
    filterButtons = [(ICDocCamViewController *)self filterButtons];
    v11 = [filterButtons count];

    if (v11 <= v5)
    {
      break;
    }

    filterButtons2 = [(ICDocCamViewController *)self filterButtons];
    v13 = [filterButtons2 objectAtIndexedSubscript:v5];

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

    filterButtons3 = [(ICDocCamViewController *)self filterButtons];
    v21 = [filterButtons3 objectAtIndexedSubscript:0];
    [v21 frame];
    v7 = v22;
    v6 = v23;
    v9 = v24;
    v8 = v25;
  }

  filterScrollView = [(ICDocCamViewController *)self filterScrollView];
  [filterScrollView scrollRectToVisible:animatedCopy animated:{v7, v6, v9, v8}];
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
  flashMode = [(ICDocCamViewController *)self flashMode];
  if (flashMode > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_278F93FA0[flashMode];
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

- (void)myApplicationWillResignActive:(id)active
{
  captureEventInteraction = [(ICDocCamViewController *)self captureEventInteraction];
  [captureEventInteraction setEnabled:0];

  processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
  [processRequestsBlocker addBlockerOfType:@"ApplicationActiveBlocker" clearRectangles:1 clearQueue:1];

  [(ICDocCamViewController *)self dismissFilterAndFlashUI];
}

- (void)myApplicationDidBecomeActive:(id)active
{
  [(ICDocCamViewController *)self clearRectangles];
  [(ICDocCamViewController *)self clearQueue];
  processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
  [processRequestsBlocker removeBlockerOfType:@"ApplicationActiveBlocker"];

  isSessionRunning = [(ICDocCamViewController *)self isSessionRunning];
  if (isSessionRunning)
  {
    [(ICDocCamViewController *)self enableShutterButtonIfPossible];
  }

  else
  {
    [(ICDocCamViewController *)self enableShutter:0];
  }

  [(ICDocCamViewController *)self enableUIElements:isSessionRunning];
  view = [(ICDocCamViewController *)self view];
  window = [view window];
  isKeyWindow = [window isKeyWindow];

  if (isKeyWindow)
  {
    captureEventInteraction = [(ICDocCamViewController *)self captureEventInteraction];
    [captureEventInteraction setEnabled:1];
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D76768] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self name:*MEMORY[0x277D76648] object:0];

    [(ICDocCamViewController *)self setDidAddAppLifetimeObservers:0];
  }

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 removeObserver:self];

  if (self->_sessionQueue)
  {
    sessionQueue = [(ICDocCamViewController *)self sessionQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__ICDocCamViewController_removeAllNotifications__block_invoke_2;
    v9[3] = &unk_278F93AB0;
    v9[4] = self;
    dispatch_sync(sessionQueue, v9);
  }

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 removeObserver:self name:*MEMORY[0x277D76810] object:0];
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
    session = [(ICDocCamViewController *)self session];
    [session addObserver:self forKeyPath:@"running" options:1 context:SessionRunningContext];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    videoDeviceInput = [(ICDocCamViewController *)self videoDeviceInput];
    device = [videoDeviceInput device];
    [defaultCenter addObserver:self selector:sel_subjectAreaDidChange_ name:*MEMORY[0x277CE5838] object:device];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    session2 = [(ICDocCamViewController *)self session];
    [defaultCenter2 addObserver:self selector:sel_sessionRuntimeError_ name:*MEMORY[0x277CE59C0] object:session2];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    session3 = [(ICDocCamViewController *)self session];
    [defaultCenter3 addObserver:self selector:sel_sessionWasInterrupted_ name:*MEMORY[0x277CE59C8] object:session3];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    session4 = [(ICDocCamViewController *)self session];
    [defaultCenter4 addObserver:self selector:sel_sessionInterruptionEnded_ name:*MEMORY[0x277CE5948] object:session4];

    videoDeviceInput2 = [(ICDocCamViewController *)self videoDeviceInput];
    device2 = [videoDeviceInput2 device];
    [device2 addObserver:self forKeyPath:@"adjustingFocus" options:1 context:0];

    [(ICDocCamViewController *)self setIsObservingCaptureSession:1];
  }
}

- (void)removeObserversIfNecessary
{
  if ([(ICDocCamViewController *)self isObservingCaptureSession])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    videoDeviceInput = [(ICDocCamViewController *)self videoDeviceInput];
    device = [videoDeviceInput device];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE5838] object:device];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    session = [(ICDocCamViewController *)self session];
    [defaultCenter2 removeObserver:self name:*MEMORY[0x277CE59C0] object:session];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    session2 = [(ICDocCamViewController *)self session];
    [defaultCenter3 removeObserver:self name:*MEMORY[0x277CE59C8] object:session2];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    session3 = [(ICDocCamViewController *)self session];
    [defaultCenter4 removeObserver:self name:*MEMORY[0x277CE5948] object:session3];

    session4 = [(ICDocCamViewController *)self session];
    [session4 removeObserver:self forKeyPath:@"running" context:SessionRunningContext];

    videoDeviceInput2 = [(ICDocCamViewController *)self videoDeviceInput];
    device2 = [videoDeviceInput2 device];
    [device2 removeObserver:self forKeyPath:@"adjustingFocus"];

    [(ICDocCamViewController *)self setIsObservingCaptureSession:0];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v40 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"adjustingFocus"])
  {
    v13 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:1];
    -[ICDocCamViewController setAdjustingFocus:](self, "setAdjustingFocus:", [v13 isEqualToNumber:v14]);
  }

  else if (SessionRunningContext == context)
  {
    v15 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    bOOLValue = [v15 BOOLValue];

    processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
    if ([processRequestsBlocker blocked])
    {
      processRequestsBlocker2 = [(ICDocCamViewController *)self processRequestsBlocker];
      blockerSet = [processRequestsBlocker2 blockerSet];
      if ([blockerSet count] == 1)
      {
        processRequestsBlocker3 = [(ICDocCamViewController *)self processRequestsBlocker];
        blockerSet2 = [processRequestsBlocker3 blockerSet];
        v21 = [blockerSet2 member:@"OrientationBlocker"];
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
    if (bOOLValue && !v22)
    {
      snapStillImageBlocker = [(ICDocCamViewController *)self snapStillImageBlocker];
      v23 = [snapStillImageBlocker blocked] ^ 1;
    }

    [(ICDocCamViewController *)self setSessionRunning:bOOLValue];
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
      if (bOOLValue)
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
        processRequestsBlocker4 = [(ICDocCamViewController *)self processRequestsBlocker];
        blockerSet3 = [processRequestsBlocker4 blockerSet];
        *buf = 138412290;
        v39 = blockerSet3;
        _os_log_impl(&dword_249253000, v30, OS_LOG_TYPE_DEFAULT, "  procReqBlockers : %@", buf, 0xCu);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__ICDocCamViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_278F93BC8;
    v36 = bOOLValue;
    block[4] = self;
    v37 = v23;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v34.receiver = self;
    v34.super_class = ICDocCamViewController;
    [(ICDocCamViewController *)&v34 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
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

- (void)subjectAreaDidChange:(id)change
{
  date = [MEMORY[0x277CBEAA8] date];
  [(ICDocCamViewController *)self setLastSubjectAreaChange:?];
}

- (void)sessionRuntimeError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CE5940]];

  v7 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_249253000, v7, OS_LOG_TYPE_DEFAULT, "Capture session runtime error: %@", buf, 0xCu);
  }

  if ([v6 code] == -11819)
  {
    sessionQueue = [(ICDocCamViewController *)self sessionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__ICDocCamViewController_sessionRuntimeError___block_invoke;
    block[3] = &unk_278F93AB0;
    block[4] = self;
    dispatch_async(sessionQueue, block);
  }

  else
  {
    resumeButton = [(ICDocCamViewController *)self resumeButton];
    [resumeButton setHidden:0];
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

- (void)hideUIForInterruptedSession:(BOOL)session
{
  sessionCopy = session;
  if ((DCDebugInterfaceEnabled() & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "userInterfaceIdiom"), v5, v6 == 1))
  {
    if (sessionCopy)
    {
      [(ICDocCamViewController *)self enableShutter:0];
      flashButton = [(ICDocCamViewController *)self flashButton];
      [flashButton setEnabled:0];

      filterButton = [(ICDocCamViewController *)self filterButton];
      [filterButton setEnabled:0];

      autoButton = [(ICDocCamViewController *)self autoButton];
      [autoButton setEnabled:0];

      manualButton = [(ICDocCamViewController *)self manualButton];
      [manualButton setEnabled:0];

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __54__ICDocCamViewController_hideUIForInterruptedSession___block_invoke;
      v17[3] = &unk_278F93AB0;
      v17[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v17 animations:0.25];
    }

    else
    {
      flashButton2 = [(ICDocCamViewController *)self flashButton];
      [flashButton2 setEnabled:1];

      filterButton2 = [(ICDocCamViewController *)self filterButton];
      [filterButton2 setEnabled:1];

      autoButton2 = [(ICDocCamViewController *)self autoButton];
      [autoButton2 setEnabled:1];

      manualButton2 = [(ICDocCamViewController *)self manualButton];
      [manualButton2 setEnabled:1];

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

- (void)sessionWasInterrupted:(id)interrupted
{
  v19 = *MEMORY[0x277D85DE8];
  userInfo = [interrupted userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CE5950]];
  integerValue = [v5 integerValue];

  if ((integerValue - 1) >= 4)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_278F93FB8[integerValue - 1];
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
  if (integerValue != 1)
  {
    if ((integerValue & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      resumeButton = [(ICDocCamViewController *)self resumeButton];
      [resumeButton setAlpha:0.0];

      resumeButton2 = [(ICDocCamViewController *)self resumeButton];
      [resumeButton2 setHidden:0];

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __48__ICDocCamViewController_sessionWasInterrupted___block_invoke;
      v16[3] = &unk_278F93AB0;
      v16[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v16 animations:0.25];
    }

    else if (integerValue == 4)
    {
      userPromptView = [(ICDocCamViewController *)self userPromptView];
      [userPromptView setHidden:1];

      cameraUnavailableScrim = [(ICDocCamViewController *)self cameraUnavailableScrim];
      [cameraUnavailableScrim setAlpha:0.0];

      cameraUnavailableScrim2 = [(ICDocCamViewController *)self cameraUnavailableScrim];
      [cameraUnavailableScrim2 setHidden:0];

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __48__ICDocCamViewController_sessionWasInterrupted___block_invoke_2;
      v15[3] = &unk_278F93AB0;
      v15[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v15 animations:0.25];
      cameraUnavailableLabel = [(ICDocCamViewController *)self cameraUnavailableLabel];
      [(ICDocCamViewController *)self speakLabelTextForAccessibilityIfNecessary:cameraUnavailableLabel afterDelay:1.0];
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

- (void)sessionInterruptionEnded:(id)ended
{
  v4 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249253000, v4, OS_LOG_TYPE_DEFAULT, "Capture session interruption ended", buf, 2u);
  }

  resumeButton = [(ICDocCamViewController *)self resumeButton];
  isHidden = [resumeButton isHidden];

  if ((isHidden & 1) == 0)
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

  cameraUnavailableScrim = [(ICDocCamViewController *)self cameraUnavailableScrim];
  isHidden2 = [cameraUnavailableScrim isHidden];

  if ((isHidden2 & 1) == 0)
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

- (void)resumeInterruptedSession:(id)session
{
  sessionQueue = [(ICDocCamViewController *)self sessionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ICDocCamViewController_resumeInterruptedSession___block_invoke;
  block[3] = &unk_278F93AB0;
  block[4] = self;
  dispatch_async(sessionQueue, block);
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

- (id)createNSDataFrom:(id)from metaData:(id)data
{
  fromCopy = from;
  dataCopy = data;
  v7 = MEMORY[0x277CBEA90];
  v28 = dataCopy;
  v29 = fromCopy;
  v8 = UIImageJPEGRepresentation(fromCopy, 1.0);
  v9 = [v7 dataWithData:v8];

  v27 = v9;
  v10 = CGImageSourceCreateWithData(v9, 0);
  v11 = [dataCopy mutableCopy];
  v12 = *MEMORY[0x277CD3038];
  dictionary = [v11 objectForKey:*MEMORY[0x277CD3038]];
  v13 = *MEMORY[0x277CD3258];
  dictionary2 = [v11 objectForKey:*MEMORY[0x277CD3258]];
  v14 = *MEMORY[0x277CD3490];
  dictionary3 = [v11 objectForKey:*MEMORY[0x277CD3490]];
  v15 = *MEMORY[0x277CD3468];
  dictionary5 = [v11 objectForKey:*MEMORY[0x277CD3468]];
  v16 = *MEMORY[0x277CD33A8];
  dictionary4 = [v11 objectForKey:*MEMORY[0x277CD33A8]];
  v18 = *MEMORY[0x277CD31C8];
  dictionary6 = [v11 objectForKey:*MEMORY[0x277CD31C8]];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  if (!dictionary2)
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  }

  if (!dictionary3)
  {
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  }

  if (dictionary5)
  {
    if (dictionary4)
    {
      goto LABEL_9;
    }

LABEL_12:
    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    if (dictionary6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  dictionary5 = [MEMORY[0x277CBEB38] dictionary];
  if (!dictionary4)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (dictionary6)
  {
    goto LABEL_14;
  }

LABEL_13:
  dictionary6 = [MEMORY[0x277CBEB38] dictionary];
LABEL_14:
  [v11 setObject:dictionary forKey:v12];
  [v11 setObject:dictionary2 forKey:v13];
  [v11 setObject:dictionary3 forKey:v14];
  [v11 setObject:dictionary5 forKey:v15];
  [v11 setObject:dictionary4 forKey:v16];
  [v11 setObject:dictionary6 forKey:v18];
  imageOrientation = [(UIImage *)v29 imageOrientation];
  if ((imageOrientation - 1) >= 3)
  {
    v21 = 1;
  }

  else
  {
    v21 = dword_2492F7B00[imageOrientation - 1];
  }

  v22 = [MEMORY[0x277CCABB0] numberWithInt:v21];
  [v11 setObject:v22 forKey:@"Orientation"];

  [v11 removeObjectForKey:@"Diagnostic"];
  Type = CGImageSourceGetType(v10);
  data = [MEMORY[0x277CBEB28] data];
  v25 = CGImageDestinationCreateWithData(data, Type, 1uLL, 0);
  CGImageDestinationAddImageFromSource(v25, v10, 0, v11);
  CGImageDestinationFinalize(v25);
  CFRelease(v25);
  CFRelease(v10);

  return data;
}

- (void)toggleAutoCapture:(id)capture
{
  captureCopy = capture;
  manualButton = [(ICDocCamViewController *)self manualButton];
  if (manualButton == captureCopy && ![(ICDocCamViewController *)self autoMode])
  {

    goto LABEL_13;
  }

  autoButton = [(ICDocCamViewController *)self autoButton];
  v7 = autoButton;
  if (autoButton == captureCopy)
  {
    autoMode = [(ICDocCamViewController *)self autoMode];

    if (autoMode)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
  [processRequestsBlocker addBlockerOfType:@"ToggleAutoModeBlocker" clearRectangles:1 clearQueue:1];

  [(ICDocCamViewController *)self killFeedbackDisplayIncludingUserPrompts:1];
  autoButton2 = [(ICDocCamViewController *)self autoButton];
  [autoButton2 setEnabled:0];

  manualButton2 = [(ICDocCamViewController *)self manualButton];
  [manualButton2 setEnabled:0];

  autoButtonForIPhone = [(ICDocCamViewController *)self autoButtonForIPhone];
  [autoButtonForIPhone setEnabled:0];

  [(ICDocCamViewController *)self clearRectangles];
  [(ICDocCamViewController *)self clearQueue];
  if ([(ICDocCamViewController *)self autoMode])
  {
    [(ICDocCamViewController *)self setAutoMode:0];
    autoMode2 = [(ICDocCamViewController *)self autoMode];
    overlayView = [(ICDocCamViewController *)self overlayView];
    [overlayView setShowGridAnimation:autoMode2];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (!userInterfaceIdiom)
    {
      [(ICDocCamViewController *)self updateConstraintsForIPhone];
      thumbnailViewController = [(ICDocCamViewController *)self thumbnailViewController];
      [thumbnailViewController animateLayoutChange];
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
    autoShutterOffView = [(ICDocCamViewController *)self autoShutterOffView];
    layer = [autoShutterOffView layer];
    [layer addAnimation:v18 forKey:@"autoOff"];

    autoShutterOffView2 = [(ICDocCamViewController *)self autoShutterOffView];
    layer2 = [autoShutterOffView2 layer];
    [layer2 setOpacity:0.0];

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
    autoShutterOnView = [(ICDocCamViewController *)self autoShutterOnView];
    layer3 = [autoShutterOnView layer];
    [layer3 addAnimation:v18 forKey:@"autoOn"];

    autoShutterOnView2 = [(ICDocCamViewController *)self autoShutterOnView];
    layer4 = [autoShutterOnView2 layer];
    [layer4 setOpacity:0.0];

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

- (void)filterButtonCancelUI:(id)i
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

- (void)filterButtonAction:(id)action
{
  actionCopy = action;
  if ([(ICDocCamViewController *)self filterSettingUIShowing])
  {
    [(ICDocCamViewController *)self filterButtonCancelUI:actionCopy];
  }

  else
  {
    flashAndFilterUISemaphore = [(ICDocCamViewController *)self flashAndFilterUISemaphore];
    v6 = dispatch_semaphore_wait(flashAndFilterUISemaphore, 0);

    if (!v6)
    {
      processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
      [processRequestsBlocker addBlockerOfType:@"FilterSettingBlocker" clearRectangles:1 clearQueue:1];

      [(ICDocCamViewController *)self dismissFlashUI];
      userPromptView = [(ICDocCamViewController *)self userPromptView];
      [userPromptView setHidden:1];

      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom)
      {
        view = [(ICDocCamViewController *)self view];
        [view layoutIfNeeded];

        [(ICDocCamViewController *)self setUpFilterScrollView];
        [(ICDocCamViewController *)self filterScrollViewContentWidthWithInterItemSpacing:20.0 startPadding:10.0 endPadding:22.0];
        v13 = v12;
        filterScrollView = [(ICDocCamViewController *)self filterScrollView];
        [filterScrollView contentInset];
        v16 = v15;

        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen bounds];
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
        topToolbarForIPhone = [(ICDocCamViewController *)self topToolbarForIPhone];
        [topToolbarForIPhone setAlpha:1.0];

        topToolbarForIPhone2 = [(ICDocCamViewController *)self topToolbarForIPhone];
        [topToolbarForIPhone2 setHidden:0];

        filterViewContainer = [(ICDocCamViewController *)self filterViewContainer];
        [filterViewContainer setAlpha:0.0];

        filterViewContainer2 = [(ICDocCamViewController *)self filterViewContainer];
        [filterViewContainer2 setHidden:0];

        view2 = [(ICDocCamViewController *)self view];
        [view2 layoutIfNeeded];

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

- (void)cancelAction:(id)action
{
  processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
  [processRequestsBlocker addBlockerOfType:@"CancelActionBlocker" clearRectangles:1 clearQueue:1];

  [(ICDocCamViewController *)self dismissFilterAndFlashUI];
  if ([(ICDocCamViewController *)self isInRetakeMode])
  {
    retakeIndex = [(ICDocCamViewController *)self retakeIndex];
    [(ICDocCamViewController *)self disableRetakeMode];
    v6 = [ICDocCamExtractedDocumentViewController alloc];
    documentInfoCollection = [(ICDocCamViewController *)self documentInfoCollection];
    imageCache = [(ICDocCamViewController *)self imageCache];
    v9 = [(ICDocCamExtractedDocumentViewController *)v6 initWithDelegate:self documentInfoCollection:documentInfoCollection imageCache:imageCache currentIndex:retakeIndex mode:0];

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

  documentInfoCollection2 = [(ICDocCamViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection2 docInfos];
  v14 = [docInfos count];

  if (v14)
  {
    documentInfoCollection3 = [(ICDocCamViewController *)self documentInfoCollection];
    docInfos2 = [documentInfoCollection3 docInfos];
    v17 = [docInfos2 count];

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
    documentInfoCollection4 = [(ICDocCamViewController *)self documentInfoCollection];
    docInfos3 = [documentInfoCollection4 docInfos];
    v25 = [v21 localizedStringWithFormat:v22, objc_msgSend(docInfos3, "count")];

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

  cameraUnavailableScrim = [(ICDocCamViewController *)self cameraUnavailableScrim];
  [cameraUnavailableScrim setHidden:1];

  delegate = [(ICDocCamViewController *)self delegate];
  [delegate documentCameraControllerDidCancel:self];

  processRequestsBlocker2 = [(ICDocCamViewController *)self processRequestsBlocker];
  [processRequestsBlocker2 removeBlockerOfType:@"CancelActionBlocker"];
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
  flashAndFilterUISemaphore = [(ICDocCamViewController *)self flashAndFilterUISemaphore];
  v4 = dispatch_semaphore_wait(flashAndFilterUISemaphore, 0);

  if (!v4)
  {
    [(ICDocCamViewController *)self dismissFilterAndFlashUI];
    flashAndFilterUISemaphore2 = [(ICDocCamViewController *)self flashAndFilterUISemaphore];
    dispatch_semaphore_signal(flashAndFilterUISemaphore2);
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  flashAndFilterUISemaphore = [(ICDocCamViewController *)self flashAndFilterUISemaphore];
  v6 = dispatch_semaphore_wait(flashAndFilterUISemaphore, 0);

  if (!v6)
  {
    singleTapGestureRecognizer = [(ICDocCamViewController *)self singleTapGestureRecognizer];

    if (singleTapGestureRecognizer != beginCopy)
    {
      LOBYTE(flashSettingUIShowing) = 1;
LABEL_12:
      flashAndFilterUISemaphore2 = [(ICDocCamViewController *)self flashAndFilterUISemaphore];
      dispatch_semaphore_signal(flashAndFilterUISemaphore2);

      goto LABEL_13;
    }

    filterViewContainer = [(ICDocCamViewController *)self filterViewContainer];
    if ([filterViewContainer isHidden])
    {
      flashSettingUIShowing = [(ICDocCamViewController *)self flashSettingUIShowing];

      if (!flashSettingUIShowing)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    view = [(ICDocCamViewController *)self view];
    [beginCopy locationInView:view];
    v12 = v11;
    v14 = v13;

    view2 = [(ICDocCamViewController *)self view];
    v16 = [view2 hitTest:0 withEvent:{v12, v14}];

    thumbnailContainerView = [(ICDocCamViewController *)self thumbnailContainerView];
    v18 = [v16 isDescendantOfView:thumbnailContainerView];

    if (v18)
    {
      [(ICDocCamViewController *)self dismissFilterAndFlashUI];
    }

    LOBYTE(flashSettingUIShowing) = v18 ^ 1;

    goto LABEL_12;
  }

  LOBYTE(flashSettingUIShowing) = 0;
LABEL_13:

  return flashSettingUIShowing;
}

- (void)shutterButtonAction:(id)action
{
  flashAndFilterUISemaphore = [(ICDocCamViewController *)self flashAndFilterUISemaphore];
  v5 = dispatch_semaphore_wait(flashAndFilterUISemaphore, 0);

  if (!v5)
  {
    [(ICDocCamViewController *)self dismissFilterAndFlashUI];
    overlayView = [(ICDocCamViewController *)self overlayView];
    documentQuad = [overlayView documentQuad];
    [(ICDocCamViewController *)self setBackupQuad:documentQuad];

    [(ICDocCamViewController *)self snapStillImageWithMode:2];
    flashAndFilterUISemaphore2 = [(ICDocCamViewController *)self flashAndFilterUISemaphore];
    dispatch_semaphore_signal(flashAndFilterUISemaphore2);
  }
}

- (void)saveAction:(id)action
{
  for (i = 0; ; ++i)
  {
    documentInfoCollection = [(ICDocCamViewController *)self documentInfoCollection];
    docInfos = [documentInfoCollection docInfos];
    v6 = [docInfos count];

    if (v6 <= i)
    {
      break;
    }

    documentInfoCollection2 = [(ICDocCamViewController *)self documentInfoCollection];
    docInfos2 = [documentInfoCollection2 docInfos];
    v8 = [docInfos2 objectAtIndexedSubscript:i];
    croppedAndFilteredImageUUID = [v8 croppedAndFilteredImageUUID];

    if (!croppedAndFilteredImageUUID)
    {
      return;
    }
  }

  processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
  blockerSet = [processRequestsBlocker blockerSet];
  v11 = [blockerSet containsObject:@"SaveActionBlocker"];

  if ((v11 & 1) == 0)
  {
    processRequestsBlocker2 = [(ICDocCamViewController *)self processRequestsBlocker];
    [processRequestsBlocker2 addBlockerOfType:@"SaveActionBlocker" clearRectangles:1 clearQueue:1];

    [(ICDocCamViewController *)self dismissFilterAndFlashUI];
    documentInfoCollection3 = [(ICDocCamViewController *)self documentInfoCollection];
    docInfos3 = [documentInfoCollection3 docInfos];
    v13 = [docInfos3 count];

    if (v13)
    {
      delegate = [(ICDocCamViewController *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        delegate2 = [(ICDocCamViewController *)self delegate];
        documentInfoCollection4 = [(ICDocCamViewController *)self documentInfoCollection];
        imageCache = [(ICDocCamViewController *)self imageCache];
        [delegate2 documentCameraController:self didFinishWithDocInfoCollection:documentInfoCollection4 imageCache:imageCache warnUser:1];
      }

      else
      {
        imageCache2 = [(ICDocCamViewController *)self imageCache];
        documentInfoCollection5 = [(ICDocCamViewController *)self documentInfoCollection];
        docInfos4 = [documentInfoCollection5 docInfos];
        v19 = [docInfos4 objectAtIndexedSubscript:0];
        croppedAndFilteredImageUUID2 = [v19 croppedAndFilteredImageUUID];
        v21 = [imageCache2 getImage:croppedAndFilteredImageUUID2];

        documentInfoCollection6 = [(ICDocCamViewController *)self documentInfoCollection];
        docInfos5 = [documentInfoCollection6 docInfos];
        v24 = [docInfos5 objectAtIndexedSubscript:0];
        metaData = [v24 metaData];
        documentInfoCollection4 = [(ICDocCamViewController *)self createNSDataFrom:v21 metaData:metaData];

        [(ICDocCamViewController *)self didFinishWithImage:documentInfoCollection4];
        delegate2 = v21;
      }
    }
  }
}

- (void)enableShutter:(BOOL)shutter
{
  shutterCopy = shutter;
  if (shutter)
  {
    shutterButton = [(ICDocCamViewController *)self shutterButton];
    [shutterButton setPseudoDisabled:0];
  }

  shutterButton2 = [(ICDocCamViewController *)self shutterButton];
  [shutterButton2 setUserInteractionEnabled:shutterCopy];

  captureEventInteraction = [(ICDocCamViewController *)self captureEventInteraction];
  [captureEventInteraction setEnabled:shutterCopy];

  if ([objc_opt_class() isLiquidGlassEnabledForCapture])
  {
    liquidGlassEvolutionControlsOverlayViewController = [(ICDocCamViewController *)self liquidGlassEvolutionControlsOverlayViewController];
    [liquidGlassEvolutionControlsOverlayViewController setCaptureButtonEnabled:shutterCopy];
  }
}

- (void)dismissFilterUI
{
  processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
  [processRequestsBlocker removeBlockerOfType:@"FilterSettingBlocker"];

  [(ICDocCamViewController *)self hideFilterSettingUI];
}

- (void)dismissFlashUI
{
  processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
  [processRequestsBlocker removeBlockerOfType:@"FlashSettingBlocker"];

  [(ICDocCamViewController *)self hideFlashSettingUI];
}

- (void)dismissFilterAndFlashUI
{
  [(ICDocCamViewController *)self dismissFilterUI];

  [(ICDocCamViewController *)self dismissFlashUI];
}

- (void)hideShutter:(BOOL)shutter
{
  shutterCopy = shutter;
  v5 = !shutter;
  shutterButton = [(ICDocCamViewController *)self shutterButton];
  [shutterButton setAlpha:v5];

  captureEventInteraction = [(ICDocCamViewController *)self captureEventInteraction];
  [captureEventInteraction setEnabled:shutterCopy];
}

- (void)hideFlashSettingUI
{
  if ([(ICDocCamViewController *)self flashSettingUIShowing])
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom)
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
      topToolbarForIPhone = [(ICDocCamViewController *)self topToolbarForIPhone];
      [topToolbarForIPhone setHidden:0];

      topToolbarForIPhone2 = [(ICDocCamViewController *)self topToolbarForIPhone];
      [topToolbarForIPhone2 setAlpha:0.0];

      flashSettingView = [(ICDocCamViewController *)self flashSettingView];
      [flashSettingView setAlpha:1.0];

      flashSettingView2 = [(ICDocCamViewController *)self flashSettingView];
      [flashSettingView2 setHidden:0];

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

- (void)flashButtonCancelUI:(id)i
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

- (void)changeFlashAction:(id)action
{
  actionCopy = action;
  flashSettingViewOffButton = [(ICDocCamViewController *)self flashSettingViewOffButton];

  if (flashSettingViewOffButton == actionCopy)
  {
    [(ICDocCamViewController *)self setFlashMode:0];
    flashButtonImage = [(ICDocCamViewController *)self flashButtonImage];
    flashButton = [(ICDocCamViewController *)self flashButton];
    [flashButton setImage:flashButtonImage forState:0];

    flashButton2 = [(ICDocCamViewController *)self flashButton];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [flashButton2 setTintColor:whiteColor];

    flashButtonForIPhone = [(ICDocCamViewController *)self flashButtonForIPhone];
    [flashButtonForIPhone setImage:flashButtonImage forState:0];

    flashButtonForIPhone2 = [(ICDocCamViewController *)self flashButtonForIPhone];
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [flashButtonForIPhone2 setTintColor:whiteColor2];

    flashButtonForIPhone3 = [(ICDocCamViewController *)self flashButtonForIPhone];
    [flashButtonForIPhone3 setLargeContentImage:flashButtonImage];

    flashSettingViewFlashIcon = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
    [flashSettingViewFlashIcon setImage:flashButtonImage forState:0];

    flashSettingViewFlashIcon2 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [flashSettingViewFlashIcon2 setTintColor:whiteColor3];
  }

  else
  {
    flashSettingViewOnButton = [(ICDocCamViewController *)self flashSettingViewOnButton];

    if (flashSettingViewOnButton == actionCopy)
    {
      [(ICDocCamViewController *)self setFlashMode:1];
      flashButtonImage = [(ICDocCamViewController *)self flashButtonImage];
      flashButton3 = [(ICDocCamViewController *)self flashButton];
      [flashButton3 setImage:flashButtonImage forState:0];

      flashButton4 = [(ICDocCamViewController *)self flashButton];
      cameraHighlightColor = [(ICDocCamViewController *)self cameraHighlightColor];
      [flashButton4 setTintColor:cameraHighlightColor];

      flashButtonForIPhone4 = [(ICDocCamViewController *)self flashButtonForIPhone];
      [flashButtonForIPhone4 setImage:flashButtonImage forState:0];

      flashButtonForIPhone5 = [(ICDocCamViewController *)self flashButtonForIPhone];
      cameraHighlightColor2 = [(ICDocCamViewController *)self cameraHighlightColor];
      [flashButtonForIPhone5 setTintColor:cameraHighlightColor2];

      flashButtonForIPhone6 = [(ICDocCamViewController *)self flashButtonForIPhone];
      [flashButtonForIPhone6 setLargeContentImage:flashButtonImage];

      flashSettingViewFlashIcon3 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      [flashSettingViewFlashIcon3 setImage:flashButtonImage forState:0];

      flashSettingViewFlashIcon2 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      whiteColor3 = [(ICDocCamViewController *)self cameraHighlightColor];
      [flashSettingViewFlashIcon2 setTintColor:whiteColor3];
    }

    else
    {
      flashSettingViewAutoButton = [(ICDocCamViewController *)self flashSettingViewAutoButton];

      if (flashSettingViewAutoButton != actionCopy)
      {
        flashButtonImage = 0;
        goto LABEL_9;
      }

      [(ICDocCamViewController *)self setFlashMode:2];
      flashButtonImage = [(ICDocCamViewController *)self flashButtonImage];
      flashButton5 = [(ICDocCamViewController *)self flashButton];
      [flashButton5 setImage:flashButtonImage forState:0];

      flashButton6 = [(ICDocCamViewController *)self flashButton];
      whiteColor4 = [MEMORY[0x277D75348] whiteColor];
      [flashButton6 setTintColor:whiteColor4];

      flashButtonForIPhone7 = [(ICDocCamViewController *)self flashButtonForIPhone];
      [flashButtonForIPhone7 setImage:flashButtonImage forState:0];

      flashButtonForIPhone8 = [(ICDocCamViewController *)self flashButtonForIPhone];
      whiteColor5 = [MEMORY[0x277D75348] whiteColor];
      [flashButtonForIPhone8 setTintColor:whiteColor5];

      flashButtonForIPhone9 = [(ICDocCamViewController *)self flashButtonForIPhone];
      [flashButtonForIPhone9 setLargeContentImage:flashButtonImage];

      flashSettingViewFlashIcon4 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      [flashSettingViewFlashIcon4 setImage:flashButtonImage forState:0];

      flashSettingViewFlashIcon2 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      whiteColor3 = [MEMORY[0x277D75348] whiteColor];
      [flashSettingViewFlashIcon2 setTintColor:whiteColor3];
    }
  }

LABEL_9:
  flashMode = [(ICDocCamViewController *)self flashMode];
  if (flashMode)
  {
    if (flashMode == 1)
    {
      flashSettingViewOnButton2 = [(ICDocCamViewController *)self flashSettingViewOnButton];
    }

    else
    {
      if (flashMode != 2)
      {
        v37 = 0;
        goto LABEL_17;
      }

      flashSettingViewOnButton2 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
    }
  }

  else
  {
    flashSettingViewOnButton2 = [(ICDocCamViewController *)self flashSettingViewOffButton];
  }

  v37 = flashSettingViewOnButton2;
LABEL_17:
  whiteColor6 = [MEMORY[0x277D75348] whiteColor];
  flashSettingViewAutoButton2 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
  [flashSettingViewAutoButton2 setTintColor:whiteColor6];

  whiteColor7 = [MEMORY[0x277D75348] whiteColor];
  flashSettingViewOnButton3 = [(ICDocCamViewController *)self flashSettingViewOnButton];
  [flashSettingViewOnButton3 setTintColor:whiteColor7];

  whiteColor8 = [MEMORY[0x277D75348] whiteColor];
  flashSettingViewOffButton2 = [(ICDocCamViewController *)self flashSettingViewOffButton];
  [flashSettingViewOffButton2 setTintColor:whiteColor8];

  cameraHighlightColor3 = [(ICDocCamViewController *)self cameraHighlightColor];
  [v37 setTintColor:cameraHighlightColor3];

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

- (void)flashButtonAction:(id)action
{
  flashAndFilterUISemaphore = [(ICDocCamViewController *)self flashAndFilterUISemaphore];
  v5 = dispatch_semaphore_wait(flashAndFilterUISemaphore, 0);

  if (!v5)
  {
    processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
    [processRequestsBlocker addBlockerOfType:@"FlashSettingBlocker" clearRectangles:1 clearQueue:1];

    [(ICDocCamViewController *)self dismissFilterUI];
    userPromptView = [(ICDocCamViewController *)self userPromptView];
    [userPromptView setHidden:1];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      flashMode = [(ICDocCamViewController *)self flashMode];
      if (flashMode)
      {
        if (flashMode == 1)
        {
          flashSettingViewOnButton = [(ICDocCamViewController *)self flashSettingViewOnButton];
        }

        else
        {
          if (flashMode != 2)
          {
            v18 = 0;
            goto LABEL_15;
          }

          flashSettingViewOnButton = [(ICDocCamViewController *)self flashSettingViewAutoButton];
        }
      }

      else
      {
        flashSettingViewOnButton = [(ICDocCamViewController *)self flashSettingViewOffButton];
      }

      v18 = flashSettingViewOnButton;
LABEL_15:
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      flashSettingViewAutoButton = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      [flashSettingViewAutoButton setTintColor:whiteColor];

      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
      flashSettingViewOnButton2 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      [flashSettingViewOnButton2 setTintColor:whiteColor2];

      whiteColor3 = [MEMORY[0x277D75348] whiteColor];
      flashSettingViewOffButton = [(ICDocCamViewController *)self flashSettingViewOffButton];
      [flashSettingViewOffButton setTintColor:whiteColor3];

      cameraHighlightColor = [(ICDocCamViewController *)self cameraHighlightColor];
      [v18 setTintColor:cameraHighlightColor];

      view = [(ICDocCamViewController *)self view];
      [view layoutIfNeeded];

      flashSettingUIShowing = [(ICDocCamViewController *)self flashSettingUIShowing];
      v28 = 0;
      if (!flashSettingUIShowing)
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

    flashButtonImage = [(ICDocCamViewController *)self flashButtonImage];
    flashSettingViewFlashIcon = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
    [flashSettingViewFlashIcon setImage:flashButtonImage forState:0];

    flashMode2 = [(ICDocCamViewController *)self flashMode];
    if (flashMode2)
    {
      if (flashMode2 == 1)
      {
        flashSettingViewOnButton3 = [(ICDocCamViewController *)self flashSettingViewOnButton];
        flashSettingViewFlashIcon2 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
        cameraHighlightColor2 = [(ICDocCamViewController *)self cameraHighlightColor];
        [flashSettingViewFlashIcon2 setTintColor:cameraHighlightColor2];
      }

      else
      {
        if (flashMode2 != 2)
        {
          v18 = 0;
          goto LABEL_22;
        }

        flashSettingViewOnButton3 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
        flashSettingViewFlashIcon2 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
        cameraHighlightColor2 = [(ICDocCamViewController *)self cameraHighlightColor];
        [flashSettingViewFlashIcon2 setTintColor:cameraHighlightColor2];
      }
    }

    else
    {
      flashSettingViewOnButton3 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      flashSettingViewFlashIcon2 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
      cameraHighlightColor2 = [MEMORY[0x277D75348] whiteColor];
      [flashSettingViewFlashIcon2 setTintColor:cameraHighlightColor2];
    }

    v18 = flashSettingViewOnButton3;
LABEL_22:
    whiteColor4 = [MEMORY[0x277D75348] whiteColor];
    flashSettingViewAutoButton2 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
    [flashSettingViewAutoButton2 setTintColor:whiteColor4];

    whiteColor5 = [MEMORY[0x277D75348] whiteColor];
    flashSettingViewOnButton4 = [(ICDocCamViewController *)self flashSettingViewOnButton];
    [flashSettingViewOnButton4 setTintColor:whiteColor5];

    whiteColor6 = [MEMORY[0x277D75348] whiteColor];
    flashSettingViewOffButton2 = [(ICDocCamViewController *)self flashSettingViewOffButton];
    [flashSettingViewOffButton2 setTintColor:whiteColor6];

    cameraHighlightColor3 = [(ICDocCamViewController *)self cameraHighlightColor];
    [v18 setTintColor:cameraHighlightColor3];

    flashSettingView = [(ICDocCamViewController *)self flashSettingView];
    [flashSettingView setAlpha:0.0];

    flashSettingView2 = [(ICDocCamViewController *)self flashSettingView];
    [flashSettingView2 setHidden:0];

    topToolbarForIPhone = [(ICDocCamViewController *)self topToolbarForIPhone];
    [topToolbarForIPhone setAlpha:1.0];

    topToolbarForIPhone2 = [(ICDocCamViewController *)self topToolbarForIPhone];
    [topToolbarForIPhone2 setHidden:0];

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

- (void)image:(id)image didFinishSavingWithError:(id)error contextInfo:(void *)info
{
  errorCopy = error;
  if (errorCopy)
  {
    v6 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICDocCamViewController image:didFinishSavingWithError:contextInfo:];
    }
  }
}

- (void)didFinishWithImage:(id)image
{
  imageCopy = image;
  delegate = [(ICDocCamViewController *)self delegate];
  [delegate documentCameraController:self didFinishWithImage:imageCopy];
}

- (BOOL)validRect:(id)rect forImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  rectCopy = rect;
  v8 = rectCopy;
  if (!rectCopy || ![rectCopy count])
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

- (BOOL)sufficientlyLarge:(id)large forImageSize:(CGSize)size
{
  largeCopy = large;
  v6 = largeCopy;
  if (largeCopy && [largeCopy count])
  {
    videoPreviewLayer = [(ICDocCamViewController *)self videoPreviewLayer];
    videoPreviewLayer2 = [(ICDocCamViewController *)self videoPreviewLayer];
    [videoPreviewLayer2 frame];
    v10 = v9;
    videoPreviewLayer3 = [(ICDocCamViewController *)self videoPreviewLayer];
    [videoPreviewLayer3 frame];
    [videoPreviewLayer metadataOutputRectOfInterestForRect:{0.0, 0.0, v10}];
    v13 = v12;
    v15 = v14;

    videoPreviewLayer4 = [(ICDocCamViewController *)self videoPreviewLayer];
    connection = [videoPreviewLayer4 connection];
    videoOrientation = [connection videoOrientation];

    if ((videoOrientation - 1) >= 2)
    {
      v19 = v15;
    }

    else
    {
      v19 = v13;
    }

    if ((videoOrientation - 1) >= 2)
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
    delegate = [(ICDocCamViewController *)self delegate];
    documentInfoCollection = [(ICDocCamViewController *)self documentInfoCollection];
    docInfos = [documentInfoCollection docInfos];
    v6 = [delegate documentCameraController:self canAddImages:{objc_msgSend(docInfos, "count") + 1}];

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
  blocked = [processRequestsBlocker blocked];

  if (blocked)
  {
    return 0;
  }

  snapStillImageBlocker = [(ICDocCamViewController *)self snapStillImageBlocker];
  blocked2 = [snapStillImageBlocker blocked];

  if (blocked2)
  {
    return 0;
  }

  rectResultsQueue = [(ICDocCamViewController *)self rectResultsQueue];
  v12 = [rectResultsQueue size];

  if (!v12)
  {
    overlayView = [(ICDocCamViewController *)self overlayView];
    [overlayView clearRectangles];

    return 0;
  }

  date = [MEMORY[0x277CBEAA8] date];
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
  array = [MEMORY[0x277CBEB18] array];
  v158 = 0;
  v159 = &v158;
  v160 = 0x3032000000;
  v161 = __Block_byref_object_copy__811;
  v162 = __Block_byref_object_dispose__812;
  array2 = [MEMORY[0x277CBEB18] array];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__ICDocCamViewController_shouldAutoShoot__block_invoke;
  aBlock[3] = &unk_278F93C18;
  v149 = v187;
  v150 = &v174;
  v151 = v189;
  v152 = &v170;
  v14 = date;
  v148 = v14;
  v153 = &v179;
  v157 = 1101004800;
  v154 = v178;
  v155 = &v164;
  v156 = &v158;
  v15 = _Block_copy(aBlock);
  rectResultsQueue2 = [(ICDocCamViewController *)self rectResultsQueue];
  rectResultsQueue3 = [(ICDocCamViewController *)self rectResultsQueue];
  [rectResultsQueue2 apply:v15 fromIndex:objc_msgSend(rectResultsQueue3 toIndex:{"size") - 1, 0}];

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

- (id)cropAndFilterImage:(id)image rects:(id)rects filterType:(signed __int16)type constantColor:(BOOL)color
{
  typeCopy = type;
  colorCopy = color;
  imageCopy = image;
  rectsCopy = rects;
  cGImage = [imageCopy CGImage];
  Width = CGImageGetWidth(cGImage);
  Height = CGImageGetHeight(cGImage);
  v13 = objc_autoreleasePoolPush();
  if (rectsCopy && [rectsCopy count])
  {
    v14 = [rectsCopy objectAtIndexedSubscript:0];
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
      height = [(ICDocCamImageQuad *)v30 imageQuadByScalingBy:Width, Height];
      [height topLeft];
      [height topRight];
      [height bottomLeft];
      [height bottomRight];
      v38 = [objc_alloc(MEMORY[0x277CBF758]) initWithCGImage:cGImage];
      sharedCoreImageContext = [(ICDocCamViewController *)self sharedCoreImageContext];
      v33 = [ICDocCamImageFilters perspectiveCorrectedCIImageFromCIImage:v38 imageQuad:height];
      [v33 extent];
      v34 = [sharedCoreImageContext createCGImage:v33 fromRect:?];
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
    v35 = imageCopy;
  }

  v36 = [ICDocCamImageFilters filteredImage:v35 orientation:0 imageFilterType:typeCopy constantColor:colorCopy];

  return v36;
}

- (void)saveCapturedImage:(id)image metaData:(id)data rects:(id)rects constantColor:(BOOL)color completionHandler:(id)handler
{
  colorCopy = color;
  imageCopy = image;
  dataCopy = data;
  rectsCopy = rects;
  handlerCopy = handler;
  v12 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamViewController saveCapturedImage:metaData:rects:constantColor:completionHandler:];
  }

  if (-[ICDocCamViewController isInRetakeMode](self, "isInRetakeMode") || (-[ICDocCamViewController delegate](self, "delegate"), v13 = objc_claimAutoreleasedReturnValue(), -[ICDocCamViewController documentInfoCollection](self, "documentInfoCollection"), v14 = objc_claimAutoreleasedReturnValue(), [v14 docInfos], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v13, "documentCameraController:canAddImages:", self, objc_msgSend(v15, "count") + 1), v15, v14, v13, (v16 & 1) != 0))
  {
    v17 = objc_opt_class();
    v18 = DCDynamicCast(v17, imageCopy);
    if (v18)
    {
      [MEMORY[0x277D75D18] setAnimationsEnabled:0];
      saveButton = [(ICDocCamViewController *)self saveButton];
      documentInfoCollection = [(ICDocCamViewController *)self documentInfoCollection];
      docInfos = [documentInfoCollection docInfos];
      [saveButton setDocumentCount:{objc_msgSend(docInfos, "count") + 1}];

      [MEMORY[0x277D75D18] setAnimationsEnabled:1];
      [(ICDocCamViewController *)self updateThumbnailContainerViewConstraintConstantForIPad];
      documentInfoCollection2 = [(ICDocCamViewController *)self documentInfoCollection];
      docInfos2 = [documentInfoCollection2 docInfos];
      v24 = [docInfos2 count];

      if (!v24)
      {
        [(ICDocCamViewController *)self setDoneButtonVisible:1];
        saveButton2 = [(ICDocCamViewController *)self saveButton];
        [saveButton2 setEnabled:0];

        saveButton3 = [(ICDocCamViewController *)self saveButton];
        [saveButton3 setAlpha:0.0];

        v163[0] = MEMORY[0x277D85DD0];
        v163[1] = 3221225472;
        v163[2] = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke;
        v163[3] = &unk_278F93AB0;
        v163[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v163 animations:0.15];
      }

      if ([(ICDocCamViewController *)self isInRetakeMode])
      {
        statusBarOrientation = [(ICDocCamViewController *)self statusBarOrientation];
        view = [(ICDocCamViewController *)self view];
        window = [view window];
        [ICDocCamExtractedDocumentViewController targetRectForOrientation:statusBarOrientation window:window];
        v31 = v30;
        v33 = v32;
      }

      else
      {
        [(ICDocCamViewController *)self targetViewRect];
        v31 = v35;
        v33 = v36;
      }

      if (rectsCopy)
      {
        if (![rectsCopy count])
        {
          goto LABEL_27;
        }

        v37 = [rectsCopy objectAtIndexedSubscript:0];
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
        v130 = [(ICDocCamImageQuad *)v52 imageQuadByScalingBy:v132, v130];
        [v130 bounds];
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
          mainScreen = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen scale];
          v56 = v56 * v58;
        }

        v1302 = [ICDocCamUtilities resizedImage:v18 newSize:3 interpolationQuality:v56 * v132, v56 * v130];

        v131 = v1302;
        if (!v1302)
        {
LABEL_27:
          v131 = v18;
        }

        if ([rectsCopy count])
        {
          v60 = [rectsCopy objectAtIndexedSubscript:0];
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
      defaultFilter = [(ICDocCamViewController *)self defaultFilter];
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
        saveButton4 = [(ICDocCamViewController *)self saveButton];
        [saveButton4 setEnabled:0];

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
        v153 = rectsCopy;
        v156 = defaultFilter;
        v157 = colorCopy;
        dispatch_async(v78, block);

        objc_destroyWeak(&v155);
        objc_destroyWeak(&v159);
        objc_destroyWeak(&location);
      }

      v82 = [(ICDocCamViewController *)self cropAndFilterImage:v131 rects:rectsCopy filterType:[(ICDocCamViewController *)self defaultFilter] constantColor:colorCopy];
      v127 = v78;
      snapshotSpinnerQueue = [(ICDocCamViewController *)self snapshotSpinnerQueue];
      v150[0] = MEMORY[0x277D85DD0];
      v150[1] = 3221225472;
      v150[2] = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_4;
      v150[3] = &unk_278F93AB0;
      v150[4] = self;
      dispatch_sync(snapshotSpinnerQueue, v150);

      v84 = [ICDocCamDocumentInfo alloc];
      delegate = [(ICDocCamViewController *)self delegate];
      v86 = [(ICDocCamDocumentInfo *)v84 initWithDelegate:delegate];

      [(ICDocCamDocumentInfo *)v86 setCurrentFilter:[(ICDocCamViewController *)self defaultFilter]];
      [(ICDocCamDocumentInfo *)v86 setMetaData:dataCopy];
      [(ICDocCamDocumentInfo *)v86 setImageQuad:v133];
      imageCache = [(ICDocCamViewController *)self imageCache];
      v88 = [imageCache setImage:v82 metaData:dataCopy addToMemoryCache:1 completion:0];
      [(ICDocCamDocumentInfo *)v86 setMeshAnimImageUUID:v88];

      [(ICDocCamDocumentInfo *)v86 setCroppedAndFilteredImageUUID:0];
      [(ICDocCamDocumentInfo *)v86 setCroppedButNotFilteredImageUUID:0];
      imageCache2 = [(ICDocCamViewController *)self imageCache];
      v90 = [imageCache2 setImage:v18 metaData:dataCopy];
      [(ICDocCamDocumentInfo *)v86 setFullImageUUID:v90];

      [(ICDocCamDocumentInfo *)v86 setConstantColor:colorCopy];
      v91 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
      {
        [ICDocCamViewController saveCapturedImage:metaData:rects:constantColor:completionHandler:];
      }

      overlayView = [(ICDocCamViewController *)self overlayView];
      [overlayView setHidden:1];

      retakeIndex = [(ICDocCamViewController *)self retakeIndex];
      if ([(ICDocCamViewController *)self isInRetakeMode])
      {
        [(ICDocCamViewController *)self stopImageCaptureSession];
        statusBarOrientation2 = [(ICDocCamViewController *)self statusBarOrientation];
        view2 = [(ICDocCamViewController *)self view];
        window2 = [view2 window];
        [ICDocCamExtractedDocumentViewController targetRectForOrientation:statusBarOrientation2 window:window2];
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

      videoPreviewLayer = [(ICDocCamViewController *)self videoPreviewLayer];
      [videoPreviewLayer rectForMetadataOutputRectOfInterest:{0.0, 0.0, 1.0, 1.0}];
      v111 = v110;
      v113 = v112;
      v115 = v114;
      v117 = v116;

      previewView = [(ICDocCamViewController *)self previewView];
      scrimView = [(ICDocCamViewController *)self scrimView];
      v117 = [(ICDocCamViewController *)self imageMeshTransformWithImage:v82 backgroundImage:v18 imageViewFrame:v133 imageQuad:previewView previewView:scrimView previewBounds:v98 scrimView:v100, v102, v104, v111, v113, v115, v117];

      v138[0] = MEMORY[0x277D85DD0];
      v138[1] = v125;
      v138[2] = __91__ICDocCamViewController_saveCapturedImage_metaData_rects_constantColor_completionHandler___block_invoke_827;
      v138[3] = &unk_278F93D58;
      v138[4] = self;
      v121 = v18;
      v139 = v121;
      v140 = rectsCopy;
      v148 = defaultFilter;
      v149 = colorCopy;
      v122 = v86;
      v141 = v122;
      v147 = retakeIndex;
      v142 = dataCopy;
      v143 = v117;
      v145 = handlerCopy;
      v123 = v127;
      v144 = v123;
      v146 = v161;
      v124 = v117;
      [v124 startWithCompletionBlock:v138];

      _Block_object_dispose(v161, 8);
      v18 = v121;
      goto LABEL_44;
    }

    [(ICDocCamViewController *)self restartImageCaptureSessionIfNecessary];
    if (handlerCopy)
    {
      handlerCopy[2](0.5);
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
  videoDeviceInput = [(ICDocCamViewController *)self videoDeviceInput];
  device = [videoDeviceInput device];
  position = [device position];

  accelerometer = [(ICDocCamViewController *)self accelerometer];
  currentDeviceOrientation = [accelerometer currentDeviceOrientation];

  if ((currentDeviceOrientation - 5) <= 1)
  {
    currentDeviceOrientation = [(ICDocCamViewController *)self statusBarOrientation];
  }

  if (position == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (position == 2)
  {
    v9 = 4;
  }

  else
  {
    v9 = 3;
  }

  if (currentDeviceOrientation != 4)
  {
    v9 = 1;
  }

  if (currentDeviceOrientation != 3)
  {
    v8 = v9;
  }

  if (position == 2)
  {
    v10 = 7;
  }

  else
  {
    v10 = 6;
  }

  if (position == 2)
  {
    v11 = 5;
  }

  else
  {
    v11 = 8;
  }

  if (currentDeviceOrientation == 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (currentDeviceOrientation == 1)
  {
    v12 = v10;
  }

  if (currentDeviceOrientation <= 2)
  {
    return v12;
  }

  else
  {
    return v8;
  }
}

- (void)detectRectanglesAndSaveCapturedImage:(__CVBuffer *)image metadata:(id)metadata constantColor:(BOOL)color completionHandler:(id)handler
{
  colorCopy = color;
  v200[2] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  handlerCopy = handler;
  imageOrientationFromDevice = [(ICDocCamViewController *)self imageOrientationFromDevice];
  videoPreviewLayer = [(ICDocCamViewController *)self videoPreviewLayer];
  connection = [videoPreviewLayer connection];
  videoOrientation = [connection videoOrientation];

  accelerometer = [(ICDocCamViewController *)self accelerometer];
  currentDeviceOrientation = [accelerometer currentDeviceOrientation];

  if ((currentDeviceOrientation - 1) >= 4)
  {
    v16 = videoOrientation;
  }

  else
  {
    v16 = currentDeviceOrientation;
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

  v19 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:image];
  v177 = colorCopy;
  v194 = v195;
  v183 = [v19 imageByApplyingTransform:&v194];

  [v183 extent];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sharedCoreImageContext = [(ICDocCamViewController *)self sharedCoreImageContext];
  v28 = [sharedCoreImageContext createCGImage:v183 fromRect:{v21, v23, v25, v27}];
  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
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

  cameraIntrinsicData = [(ICDocCamViewController *)self cameraIntrinsicData];
  v37 = cameraIntrinsicData == 0;

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
    sharedCoreImageContext2 = [(ICDocCamViewController *)self sharedCoreImageContext];
    v198[1] = sharedCoreImageContext2;
    v181 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v198 forKeys:v197 count:2];
  }

  else
  {
    cameraIntrinsicData2 = [(ICDocCamViewController *)self cameraIntrinsicData];
    [cameraIntrinsicData2 getBytes:&v194 length:48];

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
    sharedCoreImageContext3 = [(ICDocCamViewController *)self sharedCoreImageContext];
    v200[1] = sharedCoreImageContext3;
    v181 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v200 forKeys:v199 count:2];
  }

  v178 = [objc_alloc(MEMORY[0x277CE2D50]) initWithCVPixelBuffer:image orientation:imageOrientationFromDevice options:v181];
  detectRectanglesRequest = [(ICDocCamViewController *)self detectRectanglesRequest];
  v196 = detectRectanglesRequest;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v196 count:1];
  v190 = 0;
  v63 = [v178 performRequests:v62 error:&v190];
  v175 = v190;

  v64 = [MEMORY[0x277D755B8] imageWithCGImage:v28];
  results = [detectRectanglesRequest results];
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

  if ([(ICDocCamViewController *)self validRect:results forImageSize:v68, v66])
  {
    if (!-[ICDocCamViewController useDocumentSegmentation](self, "useDocumentSegmentation") || ([results objectAtIndexedSubscript:0], v71 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v71, "confidence"), v73 = v72, v71, -[ICDocCamViewController segmentMinimumVisualConfidenceFinalScan](self, "segmentMinimumVisualConfidenceFinalScan"), v75 = 0, v73 < 0.99999) && v73 > v74)
    {
      v75 = results;
    }
  }

  else
  {
    v75 = 0;
  }

  lastHighConfidenceRectangle = [(ICDocCamViewController *)self lastHighConfidenceRectangle];
  if (lastHighConfidenceRectangle)
  {
    overlayView = [(ICDocCamViewController *)self overlayView];
    if (([overlayView rectangleIsActive] & 1) == 0)
    {

LABEL_37:
      goto LABEL_38;
    }

    firstObject = [v75 firstObject];
    v79 = firstObject == 0;

    if (!v79)
    {
      lastHighConfidenceRectangle2 = [(ICDocCamViewController *)self lastHighConfidenceRectangle];
      [lastHighConfidenceRectangle2 boundingBox];
      v82 = v81;
      v84 = v83;
      v86 = v85;
      v88 = v87;

      firstObject2 = [v75 firstObject];
      [firstObject2 boundingBox];
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

        lastHighConfidenceRectangle = os_log_create("com.apple.documentcamera", "");
        if (os_log_type_enabled(lastHighConfidenceRectangle, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v194.a) = 0;
          _os_log_impl(&dword_249253000, lastHighConfidenceRectangle, OS_LOG_TYPE_DEFAULT, "The detected rectangle doesn't intersect with the last visible rectangle", &v194, 2u);
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
      v144 = [(ICDocCamImageQuad *)v136 initWithBottomLeft:fmaxf(v145 bottomRight:0.0001) topLeft:fmaxf(v146 topRight:0.0001), fminf(v147, 0.9999), fmaxf(v148, 0.0001), v138, v140, v142, v144];
      array = [MEMORY[0x277CBEB18] array];
      [array addObject:v144];
      [(ICDocCamViewController *)self saveCapturedImage:v64 metaData:metadataCopy rects:array constantColor:v177 completionHandler:handlerCopy];
    }

    else
    {
      [(ICDocCamViewController *)self saveCapturedImage:v64 metaData:metadataCopy rects:v75 constantColor:v177 completionHandler:handlerCopy];
    }
  }

  else
  {
    snapshotSpinnerQueue = [(ICDocCamViewController *)self snapshotSpinnerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__ICDocCamViewController_detectRectanglesAndSaveCapturedImage_metadata_constantColor_completionHandler___block_invoke;
    block[3] = &unk_278F93AB0;
    block[4] = self;
    dispatch_sync(snapshotSpinnerQueue, block);

    firstObject3 = [v75 firstObject];
    v153 = [ICDocCamImageQuad quadFromVNRectangle:firstObject3];

    if (!v153)
    {
      backupQuad = [(ICDocCamViewController *)self backupQuad];
      v155 = backupQuad == 0;

      if (v155)
      {
        v153 = 0;
      }

      else
      {
        backupQuad2 = [(ICDocCamViewController *)self backupQuad];
        v157 = os_log_create("com.apple.documentcamera", "");
        if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v194.a) = 0;
          _os_log_impl(&dword_249253000, v157, OS_LOG_TYPE_DEFAULT, "No Quad found in image, falling back to visible quad at shutter press", &v194, 2u);
        }

        v153 = backupQuad2;
      }
    }

    userPromptView = [(ICDocCamViewController *)self userPromptView];
    [userPromptView setHidden:1];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __104__ICDocCamViewController_detectRectanglesAndSaveCapturedImage_metadata_constantColor_completionHandler___block_invoke_839;
    aBlock[3] = &unk_278F93DA8;
    aBlock[4] = self;
    v185 = v75;
    v188 = v177;
    v186 = metadataCopy;
    v187 = handlerCopy;
    v159 = _Block_copy(aBlock);
    v160 = [[ICDocCamImageQuadEditViewController alloc] initWithImage:v64 quad:v153 scanDataDelegate:0 orientation:0 completionHandler:v159];
    [(ICDocCamImageQuadEditViewController *)v160 setInCaptureMode:1];
    [(ICDocCamViewController *)self setUseCustomRecropTransition:0];
    navigationController = [(ICDocCamViewController *)self navigationController];
    [navigationController setDelegate:0];

    navigationController2 = [(ICDocCamImageQuadEditViewController *)v160 navigationController];
    [navigationController2 setDelegate:0];

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

- (void)snapStillImageWithMode:(int64_t)mode
{
  v5 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamViewController snapStillImageWithMode:];
  }

  processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
  blocked = [processRequestsBlocker blocked];

  if ((blocked & 1) == 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    snapStillImageBlocker = [(ICDocCamViewController *)selfCopy snapStillImageBlocker];
    blocked2 = [snapStillImageBlocker blocked];

    if (blocked2)
    {
      objc_sync_exit(selfCopy);
    }

    else
    {
      snapStillImageBlocker2 = [(ICDocCamViewController *)selfCopy snapStillImageBlocker];
      [snapStillImageBlocker2 addBlockerOfType:@"SnapStillImageBlocker" clearRectangles:0 clearQueue:1];

      processRequestsBlocker2 = [(ICDocCamViewController *)selfCopy processRequestsBlocker];
      [processRequestsBlocker2 addBlockerOfType:@"SnapshotDelayBlocker" clearRectangles:0 clearQueue:0];

      objc_sync_exit(selfCopy);
      inProgressPhotoCaptureDelegates = [(ICDocCamViewController *)selfCopy inProgressPhotoCaptureDelegates];
      v14 = [inProgressPhotoCaptureDelegates count];

      v15 = os_log_create("com.apple.documentcamera", "");
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
      if (v14)
      {
        if (v16)
        {
          [ICDocCamViewController snapStillImageWithMode:];
        }

        [(ICDocCamViewController *)selfCopy clearQueue];
      }

      else
      {
        if (v16)
        {
          [ICDocCamViewController snapStillImageWithMode:];
        }

        [(ICDocCamViewController *)selfCopy setSnapStillImageMode:mode];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__ICDocCamViewController_snapStillImageWithMode___block_invoke;
        block[3] = &unk_278F93AB0;
        block[4] = selfCopy;
        dispatch_async(MEMORY[0x277D85CD0], block);
        videoPreviewLayer = [(ICDocCamViewController *)selfCopy videoPreviewLayer];
        connection = [videoPreviewLayer connection];
        videoOrientation = [connection videoOrientation];

        sessionQueue = [(ICDocCamViewController *)selfCopy sessionQueue];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __49__ICDocCamViewController_snapStillImageWithMode___block_invoke_2;
        v22[3] = &unk_278F93BA0;
        v22[4] = selfCopy;
        v22[5] = videoOrientation;
        dispatch_async(sessionQueue, v22);

        date = [MEMORY[0x277CBEAA8] date];
        [(ICDocCamViewController *)selfCopy setLastAXPositionAnnouncementDate:date];
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

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  v37[2] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  if ([(ICDocCamViewController *)self scanMovieRecordingEnabled])
  {
    movieController = [(ICDocCamViewController *)self movieController];
    [movieController recordFrame:buffer fromConnection:connectionCopy];
  }

  [(ICDocCamViewController *)self setCameraIntrinsicData:0];
  if (![connectionCopy isCameraIntrinsicMatrixDeliverySupported])
  {
    v11 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0].value) = 0;
      _os_log_impl(&dword_249253000, v11, OS_LOG_TYPE_INFO, "Camera intrinsic matrix delivery is not supported.", buf, 2u);
    }

    goto LABEL_12;
  }

  if (![connectionCopy isCameraIntrinsicMatrixDeliveryEnabled])
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

  [(ICDocCamViewController *)self setCameraIntrinsicData:CMGetAttachment(buffer, *MEMORY[0x277CC06B0], 0)];
  cameraIntrinsicData = [(ICDocCamViewController *)self cameraIntrinsicData];

  if (cameraIntrinsicData)
  {
    cameraIntrinsicData2 = [(ICDocCamViewController *)self cameraIntrinsicData];
    [cameraIntrinsicData2 getBytes:buf length:48];
  }

LABEL_13:
  if (buffer)
  {
    if ([(ICDocCamViewController *)self adjustingFocus])
    {
      goto LABEL_15;
    }

    processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
    blocked = [processRequestsBlocker blocked];

    if (blocked)
    {
      goto LABEL_26;
    }

    date = [MEMORY[0x277CBEAA8] date];
    lastSubjectAreaChange = [(ICDocCamViewController *)self lastSubjectAreaChange];
    [date timeIntervalSinceDate:lastSubjectAreaChange];
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
        ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
        CVPixelBufferLockBaseAddress(ImageBuffer, 0);
        Width = CVPixelBufferGetWidth(ImageBuffer);
        [(ICDocCamViewController *)self setStreamingImageSize:Width, CVPixelBufferGetHeight(ImageBuffer)];
        CVPixelBufferUnlockBaseAddress(ImageBuffer, 0);
      }

      v22 = CMCopyDictionaryOfAttachments(0, buffer, 1u);
      v23 = CMGetAttachment(buffer, *MEMORY[0x277CC06B0], 0);
      v24 = [(__CFDictionary *)v22 valueForKey:*MEMORY[0x277CF3F30]];
      v25 = v24;
      if (v24)
      {
        v26 = [v24 valueForKey:*MEMORY[0x277CF5018]];
        [v26 floatValue];
        [(ICDocCamViewController *)self setPixelFocalLength:?];
      }

      v27 = CMSampleBufferGetImageBuffer(buffer);
      if (v27)
      {
        memset(buf, 0, 24);
        CMSampleBufferGetOutputPresentationTimeStamp(buf, buffer);
        imageOrientationFromDevice = [(ICDocCamViewController *)self imageOrientationFromDevice];
        v36[0] = @"ICDocCamImageSequenceFrame_Timestamp";
        v34 = buf[0];
        v29 = CMTimeCopyAsDictionary(&v34, 0);
        v37[0] = v29;
        v36[1] = @"ICDocCamImageSequenceFrame_Orientation";
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:imageOrientationFromDevice];
        v37[1] = v30;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];

        detectRectanglesRequest = [(ICDocCamViewController *)self detectRectanglesRequest];
        vkAnalyzer = [(ICDocCamViewController *)self vkAnalyzer];
        [(ICDocCamViewController *)self pixelFocalLength];
        [vkAnalyzer addFrame:v27 metaData:v22 frameOptions:v31 rectangleRequest:detectRectanglesRequest pixelFocalLength:v23 cameraIntrinsicData:?];
      }
    }
  }

LABEL_26:
}

- (void)clearRectangles
{
  overlayView = [(ICDocCamViewController *)self overlayView];
  [overlayView clearRectangles];
}

- (void)clearQueue
{
  rectResultsQueue = [(ICDocCamViewController *)self rectResultsQueue];
  [rectResultsQueue clear];
}

- (void)analyzerCallbackWithDictionaryResults:(id)results
{
  v74[3] = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  if (![(ICDocCamViewController *)self isInRetakeMode])
  {
    delegate = [(ICDocCamViewController *)self delegate];
    documentInfoCollection = [(ICDocCamViewController *)self documentInfoCollection];
    docInfos = [documentInfoCollection docInfos];
    if ([delegate documentCameraController:self canAddImages:{objc_msgSend(docInfos, "count") + 1}])
    {
    }

    else
    {
      didWarnAboutMaxScans = [(ICDocCamViewController *)self didWarnAboutMaxScans];

      if (didWarnAboutMaxScans)
      {
        goto LABEL_47;
      }
    }
  }

  processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
  blocked = [processRequestsBlocker blocked];

  if ((blocked & 1) == 0)
  {
    snapStillImageBlocker = [(ICDocCamViewController *)self snapStillImageBlocker];
    blocked2 = [snapStillImageBlocker blocked];

    if ((blocked2 & 1) == 0)
    {
      v13 = [resultsCopy objectForKeyedSubscript:@"ICDocCamImageSequenceAnalyzerResults"];
      if (v13)
      {
        videoPreviewLayer = [(ICDocCamViewController *)self videoPreviewLayer];
        [videoPreviewLayer rectForMetadataOutputRectOfInterest:{0.0, 0.0, 1.0, 1.0}];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        overlayView = [(ICDocCamViewController *)self overlayView];
        [overlayView setPreviewBounds:{v16, v18, v20, v22}];

        v24 = [resultsCopy objectForKeyedSubscript:@"ICDocCamImageSequenceFrame_Timestamp"];
        v25 = [resultsCopy objectForKeyedSubscript:@"ICDocCamImageSequenceFrame_MetaData"];

        if (v25)
        {
          v70 = [resultsCopy objectForKeyedSubscript:@"ICDocCamImageSequenceFrame_MetaData"];
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
            date = [MEMORY[0x277CBEAA8] date];
            v74[2] = date;
            v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:3];
            [v34 addEntriesFromDictionary:v36];

            rectResultsQueue = [(ICDocCamViewController *)self rectResultsQueue];
            [rectResultsQueue enqueue:v34];

            rectResultsQueue2 = [(ICDocCamViewController *)self rectResultsQueue];
            v39 = [rectResultsQueue2 size] > 250;

            if (v39)
            {
              rectResultsQueue3 = [(ICDocCamViewController *)self rectResultsQueue];
              dequeue = [rectResultsQueue3 dequeue];
            }

            if ([(ICDocCamViewController *)self debugRectanglesEnabled])
            {
              overlayView2 = [(ICDocCamViewController *)self overlayView];
              [overlayView2 setDocumentQuad:0];

              overlayView3 = [(ICDocCamViewController *)self overlayView];
              [overlayView3 setDebugRects:v27];

              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __64__ICDocCamViewController_analyzerCallbackWithDictionaryResults___block_invoke;
              block[3] = &unk_278F93AB0;
              block[4] = self;
              dispatch_async(MEMORY[0x277D85CD0], block);
            }

            else if ([v27 count])
            {
              firstObject = [v27 firstObject];
              if (!-[ICDocCamViewController useDocumentSegmentation](self, "useDocumentSegmentation") && ([firstObject confidence], v50 = v49, -[ICDocCamViewController rectangleMinimumVisualConfidence](self, "rectangleMinimumVisualConfidence"), v50 > v51) || -[ICDocCamViewController useDocumentSegmentation](self, "useDocumentSegmentation") && (objc_msgSend(firstObject, "confidence"), v53 = v52, -[ICDocCamViewController segmentMinimumVisualConfidence](self, "segmentMinimumVisualConfidence"), v53 > v54) && (objc_msgSend(firstObject, "confidence"), v55 < 0.99999))
              {
                [(ICDocCamViewController *)self setLastHighConfidenceRectangle:firstObject];
                v56 = [ICDocCamImageQuad quadFromVNRectangle:firstObject];
                overlayView4 = [(ICDocCamViewController *)self overlayView];
                [overlayView4 setDocumentQuad:v56];

                overlayView5 = [(ICDocCamViewController *)self overlayView];
                [overlayView5 setDebugRects:0];

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

                [(ICDocCamViewController *)self updateRecentlyObservedRectanglesWithRect:firstObject];
              }
            }

            else
            {
              overlayView6 = [(ICDocCamViewController *)self overlayView];
              [overlayView6 setDocumentQuad:0];

              overlayView7 = [(ICDocCamViewController *)self overlayView];
              [overlayView7 setDebugRects:v27];
            }
          }

          else
          {
            overlayView8 = [(ICDocCamViewController *)self overlayView];
            [overlayView8 setDocumentQuad:0];

            overlayView9 = [(ICDocCamViewController *)self overlayView];
            [overlayView9 setDebugRects:0];
          }

          string = [MEMORY[0x277CCAB68] string];
          v62 = [resultsCopy objectForKeyedSubscript:@"ICDocCamImageSequenceFrame_RequestTime"];
          v63 = v62 == 0;

          if (!v63)
          {
            self->_requestTimeSum = self->_requestTimeSum - self->_requestTime[self->_requestTimeIndex];
            v64 = [resultsCopy objectForKeyedSubscript:@"ICDocCamImageSequenceFrame_RequestTime"];
            [v64 doubleValue];
            self->_requestTime[self->_requestTimeIndex] = v65;

            requestTimeIndex = self->_requestTimeIndex;
            v67 = self->_requestTime[requestTimeIndex] + self->_requestTimeSum;
            self->_requestTimeSum = v67;
            self->_requestTimeIndex = (requestTimeIndex + 1) % 10;
            v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"Average request time = %.1fms", v67 / 10.0 * 1000.0, v70];
            [string appendString:v68];
          }

          if ([(ICDocCamViewController *)self displayStringEnabled])
          {
            overlayView10 = [(ICDocCamViewController *)self overlayView];
            [overlayView10 setDisplayString:string];
          }

          else
          {
            overlayView10 = [(ICDocCamViewController *)self overlayView];
            [overlayView10 setDisplayString:0];
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
          overlayView11 = [(ICDocCamViewController *)self overlayView];
          [overlayView11 setDocumentQuad:0];

          overlayView12 = [(ICDocCamViewController *)self overlayView];
          [overlayView12 setDebugRects:v27];

          [(ICDocCamViewController *)self didRecognizeRectangleForAccessibility:0];
        }
      }

      else
      {
        overlayView13 = [(ICDocCamViewController *)self overlayView];
        [overlayView13 clearRectangles];
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
  useDocumentSegmentation = [(ICDocCamViewController *)self useDocumentSegmentation];
  v3 = os_log_create("com.apple.documentcamera", "");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (useDocumentSegmentation)
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

- (void)focusWithMode:(int64_t)mode exposeWithMode:(int64_t)withMode atDevicePoint:(CGPoint)point monitorSubjectAreaChange:(BOOL)change
{
  y = point.y;
  x = point.x;
  sessionQueue = [(ICDocCamViewController *)self sessionQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__ICDocCamViewController_focusWithMode_exposeWithMode_atDevicePoint_monitorSubjectAreaChange___block_invoke;
  v13[3] = &unk_278F93E70;
  v13[4] = self;
  v13[5] = mode;
  *&v13[6] = x;
  *&v13[7] = y;
  v13[8] = withMode;
  changeCopy = change;
  dispatch_async(sessionQueue, v13);
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

+ (id)deviceWithMediaType:(id)type preferringPosition:(int64_t)position
{
  v4 = [MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:*MEMORY[0x277CE5878] mediaType:type position:position];

  return v4;
}

- (void)prepareForDismissal
{
  v3 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamViewController prepareForDismissal];
  }

  processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
  [processRequestsBlocker addBlockerOfType:@"SaveActionBlocker" clearRectangles:1 clearQueue:1];

  [(ICDocCamViewController *)self stopImageCaptureSession];
  markupDocumentInfo = [(ICDocCamViewController *)self markupDocumentInfo];

  if (markupDocumentInfo)
  {
    [(ICDocCamViewController *)self markupDoneAction:0];
  }

  documentInfoCollection = [(ICDocCamViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v8 = [docInfos count];

  if (v8)
  {
    delegate = [(ICDocCamViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(ICDocCamViewController *)self delegate];
      documentInfoCollection2 = [(ICDocCamViewController *)self documentInfoCollection];
      imageCache = [(ICDocCamViewController *)self imageCache];
      [delegate2 documentCameraController:self didFinishWithDocInfoCollection:documentInfoCollection2 imageCache:imageCache warnUser:0 closeViewController:0];
    }

    else
    {
      imageCache2 = [(ICDocCamViewController *)self imageCache];
      documentInfoCollection3 = [(ICDocCamViewController *)self documentInfoCollection];
      docInfos2 = [documentInfoCollection3 docInfos];
      v17 = [docInfos2 objectAtIndexedSubscript:0];
      croppedAndFilteredImageUUID = [v17 croppedAndFilteredImageUUID];
      v19 = [imageCache2 getImage:croppedAndFilteredImageUUID];

      documentInfoCollection4 = [(ICDocCamViewController *)self documentInfoCollection];
      docInfos3 = [documentInfoCollection4 docInfos];
      v22 = [docInfos3 objectAtIndexedSubscript:0];
      metaData = [v22 metaData];
      documentInfoCollection2 = [(ICDocCamViewController *)self createNSDataFrom:v19 metaData:metaData];

      [(ICDocCamViewController *)self didFinishWithImage:documentInfoCollection2];
      delegate2 = v19;
    }
  }
}

- (void)thumbnailViewDidTap:(id)tap
{
  tapCopy = tap;
  processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
  blocked = [processRequestsBlocker blocked];

  if ((blocked & 1) == 0)
  {
    item = [tapCopy item];
    documentInfoCollection = [(ICDocCamViewController *)self documentInfoCollection];
    docInfos = [documentInfoCollection docInfos];

    if ((item & 0x8000000000000000) == 0 && item < [docInfos count])
    {
      v10 = [docInfos objectAtIndexedSubscript:item];
      croppedAndFilteredImageUUID = [v10 croppedAndFilteredImageUUID];

      if (croppedAndFilteredImageUUID)
      {
        processRequestsBlocker2 = [(ICDocCamViewController *)self processRequestsBlocker];
        [processRequestsBlocker2 addBlockerOfType:@"ThumbnailTapBlocker" clearRectangles:1 clearQueue:1];

        cameraUnavailableScrim = [(ICDocCamViewController *)self cameraUnavailableScrim];
        isHidden = [cameraUnavailableScrim isHidden];

        if ((isHidden & 1) == 0)
        {
          [(ICDocCamViewController *)self dismissFilterAndFlashUI];
        }

        [(ICDocCamViewController *)self stopImageCaptureSession];
        [(ICDocCamViewController *)self clearRectangles];
        [(ICDocCamViewController *)self disableRetakeMode];
        v15 = [ICDocCamExtractedDocumentViewController alloc];
        documentInfoCollection2 = [(ICDocCamViewController *)self documentInfoCollection];
        imageCache = [(ICDocCamViewController *)self imageCache];
        v18 = [(ICDocCamExtractedDocumentViewController *)v15 initWithDelegate:self documentInfoCollection:documentInfoCollection2 imageCache:imageCache currentIndex:item mode:0];

        [(ICDocCamViewController *)self setUseCustomThumbnailZoomTransition:1];
        navigationController = [(ICDocCamViewController *)self navigationController];
        [navigationController setDelegate:self];

        navigationController2 = [(ICDocCamExtractedDocumentViewController *)v18 navigationController];
        [navigationController2 setDelegate:self];

        thumbnailViewController = [(ICDocCamViewController *)self thumbnailViewController];
        collectionView = [thumbnailViewController collectionView];
        v23 = [collectionView cellForItemAtIndexPath:tapCopy];

        documentInfoCollection3 = [(ICDocCamViewController *)self documentInfoCollection];
        docInfos2 = [documentInfoCollection3 docInfos];
        v26 = [docInfos2 objectAtIndexedSubscript:item];

        imageCache2 = [(ICDocCamViewController *)self imageCache];
        croppedAndFilteredImageUUID2 = [v26 croppedAndFilteredImageUUID];
        v29 = [imageCache2 getImage:croppedAndFilteredImageUUID2];

        [(ICDocCamViewController *)self setImageForThumbnailZoom:v29];
        [(ICDocCamViewController *)self setIndexPathForThumbnailZoom:tapCopy];
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
          thumbnailContainerView = [(ICDocCamViewController *)self thumbnailContainerView];
          [thumbnailContainerView setHidden:1];
        }

        navigationController3 = [(ICDocCamViewController *)self navigationController];
        [navigationController3 pushViewController:v18 animated:1];

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

- (void)addNewDocument:(id)document
{
  documentCopy = document;
  documentInfoCollection = [(ICDocCamViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  [docInfos addObject:documentCopy];

  documentInfoCollection2 = [(ICDocCamViewController *)self documentInfoCollection];
  [documentInfoCollection2 bumpModificationDate];

  [(ICDocCamViewController *)self warnAboutMaxScansIfNecessary];
}

- (CGRect)targetViewRect
{
  statusBarOrientation = [(ICDocCamViewController *)self statusBarOrientation];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v6 = statusBarOrientation - 1;
  view = [(ICDocCamViewController *)self view];
  v8 = view;
  if (userInterfaceIdiom)
  {
    [view bounds];
    v10 = v9;

    view2 = [(ICDocCamViewController *)self view];
    [view2 bounds];
    v19 = v10 + -200.0;
    v21 = v20 + -200.0;

    v22 = 100.0;
    v23 = 100.0;
  }

  else
  {
    [view bounds];
    v13 = v12;

    view3 = [(ICDocCamViewController *)self view];
    [view3 bounds];
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

    view4 = [(ICDocCamViewController *)self view];
    [view4 safeAreaInsets];
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
  delegate = [(ICDocCamViewController *)self delegate];
  documentInfoCollection = [(ICDocCamViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v6 = [delegate documentCameraController:self canAddImages:{objc_msgSend(docInfos, "count") + 1}];

  if ((v6 & 1) == 0)
  {
    [(ICDocCamViewController *)self enableShutter:0];
    shutterButton = [(ICDocCamViewController *)self shutterButton];
    [shutterButton setPseudoDisabled:1];

    if (![(ICDocCamViewController *)self didWarnAboutMaxScans])
    {
      [(ICDocCamViewController *)self setDidWarnAboutMaxScans:1];
      processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
      [processRequestsBlocker addBlockerOfType:@"MaxImageAlertBlocker" clearRectangles:1 clearQueue:1];

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

+ (void)warnAboutMaxScansReachedForViewController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  v6 = [DCLocalization localizedStringForKey:@"Maximum Reached" value:@"Maximum Reached" table:@"Localizable"];
  v7 = [DCLocalization localizedStringForKey:@"You’ve added the maximum number of scans to this document. You can delete scans or create another document." value:@"You’ve added the maximum number of scans to this document. You can delete scans or create another document." table:@"Localizable"];
  v8 = [MEMORY[0x277D75110] alertControllerWithTitle:v6 message:v7 preferredStyle:1];
  v9 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
  [v8 setImage:v9];

  v10 = MEMORY[0x277D750F8];
  v11 = [DCLocalization localizedStringForKey:@"OK" value:@"OK" table:@"Localizable"];
  v12 = [v10 actionWithTitle:v11 style:1 handler:handlerCopy];

  [v8 addAction:v12];
  [controllerCopy presentViewController:v8 animated:1 completion:0];
}

- (id)filteredImageForDocument:(id)document
{
  documentCopy = document;
  croppedButNotFilteredImageUUID = [documentCopy croppedButNotFilteredImageUUID];

  [(ICDocCamViewController *)self imageCache];
  if (croppedButNotFilteredImageUUID)
    v6 = {;
    croppedButNotFilteredImageUUID2 = [documentCopy croppedButNotFilteredImageUUID];
    [v6 getImage:croppedButNotFilteredImageUUID2];
  }

  else
    v8 = {;
    fullImageUUID = [documentCopy fullImageUUID];
    v6 = [v8 getImage:fullImageUUID];

    croppedButNotFilteredImageUUID2 = [documentCopy imageQuad];
    [ICDocCamImageFilters perspectiveCorrectedImageFromImage:v6 normalizedImageQuad:croppedButNotFilteredImageUUID2];
  }
  v10 = ;

  v11 = +[ICDocCamImageFilters filteredImage:orientation:imageFilterType:constantColor:](ICDocCamImageFilters, "filteredImage:orientation:imageFilterType:constantColor:", v10, [documentCopy currentOrientation], objc_msgSend(documentCopy, "currentFilter"), objc_msgSend(documentCopy, "constantColor"));

  return v11;
}

- (void)extractedDocumentController:(id)controller startMarkupOnDocument:(id)document inkStyle:(unint64_t)style startPresentBlock:(id)block dismissCompletionBlock:(id)completionBlock
{
  documentCopy = document;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  imageCache = [(ICDocCamViewController *)self imageCache];
  croppedAndFilteredImageUUID = [documentCopy croppedAndFilteredImageUUID];
  v31 = [imageCache getImage:croppedAndFilteredImageUUID];

  v15 = [(ICDocCamViewController *)self filteredImageForDocument:documentCopy];
  v16 = +[DCMarkupUtilities createMarkupViewController];
  [v16 setInkStyle:style];
  dCExtractedDocumentViewControllerBackgroundColor = [MEMORY[0x277D75348] DCExtractedDocumentViewControllerBackgroundColor];
  [v16 setBackgroundColor:dCExtractedDocumentViewControllerBackgroundColor];

  markupModelData = [documentCopy markupModelData];
  dc_JPEGData = [v15 dc_JPEGData];
  [v16 setData:dc_JPEGData withArchivedModelData:markupModelData placeholderImage:v31];

  v20 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v16];
  v21 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_markupDoneAction_];
  navigationItem = [v16 navigationItem];
  [navigationItem setLeftBarButtonItem:v21];

  v23 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_markupCancelAction_];
  navigationItem2 = [v16 navigationItem];
  [navigationItem2 setRightBarButtonItem:v23];

  [v20 setModalTransitionStyle:2];
  [v20 setModalPresentationStyle:6];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    navigationBar = [v20 navigationBar];
    v28 = [MEMORY[0x277D75348] colorWithWhite:0.1 alpha:1.0];
    [navigationBar setBarTintColor:v28];
  }

  [(ICDocCamViewController *)self setMarkupDocumentInfo:documentCopy];
  [(ICDocCamViewController *)self setMarkupDismissCompletionBlock:completionBlockCopy];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __126__ICDocCamViewController_extractedDocumentController_startMarkupOnDocument_inkStyle_startPresentBlock_dismissCompletionBlock___block_invoke;
  v32[3] = &unk_278F93EC0;
  v32[4] = self;
  v29 = v20;
  v33 = v29;
  blockCopy[2](blockCopy, v32);
}

void __126__ICDocCamViewController_extractedDocumentController_startMarkupOnDocument_inkStyle_startPresentBlock_dismissCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)markupDoneAction:(id)action
{
  actionCopy = action;
  v5 = objc_opt_class();
  navigationController = [(ICDocCamViewController *)self navigationController];
  topViewController = [navigationController topViewController];
  v8 = DCDynamicCast(v5, topViewController);

  v9 = objc_opt_class();
  presentedViewController = [(ICDocCamViewController *)self presentedViewController];
  v11 = DCDynamicCast(v9, presentedViewController);

  markupDocumentInfo = [(ICDocCamViewController *)self markupDocumentInfo];
  [(ICDocCamViewController *)self setMarkupDocumentInfo:0];
  topViewController2 = [v11 topViewController];
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
  if ((objc_opt_isKindOfClass() & (markupDocumentInfo != 0)) == 1)
  {
    v16 = topViewController2;
    v26 = v8;
    createArchivedModelData = [v16 createArchivedModelData];
    [markupDocumentInfo setMarkupModelData:createArchivedModelData];

    v18 = [v16 dataRepresentationEmbeddingSourceImageAndEditModel:0 error:0];
    if (v18)
    {
      v25 = actionCopy;
      v19 = [MEMORY[0x277D755B8] imageWithData:v18];
      imageCache = [(ICDocCamViewController *)self imageCache];
      metaData = [markupDocumentInfo metaData];
      croppedAndFilteredImageUUID = [markupDocumentInfo croppedAndFilteredImageUUID];
      [imageCache replaceImage:v19 metaData:metaData uuid:croppedAndFilteredImageUUID];

      [v26 didUpdateDocumentImage:markupDocumentInfo];
      actionCopy = v25;
    }

    v8 = v26;
  }

  markupDismissCompletionBlock = [(ICDocCamViewController *)self markupDismissCompletionBlock];
  [(ICDocCamViewController *)self setMarkupDismissCompletionBlock:0];
  presentedViewController2 = [(ICDocCamViewController *)self presentedViewController];
  [presentedViewController2 dismissViewControllerAnimated:1 completion:markupDismissCompletionBlock];
}

- (void)markupCancelAction:(id)action
{
  markupDismissCompletionBlock = [(ICDocCamViewController *)self markupDismissCompletionBlock];
  [(ICDocCamViewController *)self setMarkupDismissCompletionBlock:0];
  [(ICDocCamViewController *)self setMarkupDocumentInfo:0];
  presentedViewController = [(ICDocCamViewController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:markupDismissCompletionBlock];
}

- (id)extractedDocumentControllerMarkupModelDataForDocument:(id)document
{
  markupModelData = [document markupModelData];

  return markupModelData;
}

- (void)extractedDocumentControllerDiscardMarkupModelDataForDocument:(id)document
{
  documentCopy = document;
  [documentCopy setMarkupModelData:0];
  v4 = objc_opt_class();
  navigationController = [(ICDocCamViewController *)self navigationController];
  topViewController = [navigationController topViewController];
  v7 = DCDynamicCast(v4, topViewController);

  v8 = [(ICDocCamViewController *)self filteredImageForDocument:documentCopy];
  imageCache = [(ICDocCamViewController *)self imageCache];
  metaData = [documentCopy metaData];
  croppedAndFilteredImageUUID = [documentCopy croppedAndFilteredImageUUID];
  [imageCache replaceImage:v8 metaData:metaData uuid:croppedAndFilteredImageUUID];

  [v7 didUpdateDocumentImage:documentCopy];
}

- (void)extractedDocumentControllerDidTapRetake:(unint64_t)retake
{
  documentInfoCollection = [(ICDocCamViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  v7 = [docInfos count];

  if (v7 > retake)
  {
    thumbnailViewController = [(ICDocCamViewController *)self thumbnailViewController];
    [thumbnailViewController update];

    [(ICDocCamViewController *)self setRetakeIndex:retake];
    [(ICDocCamViewController *)self setDoneButtonVisible:0];
    thumbnailContainerView = [(ICDocCamViewController *)self thumbnailContainerView];
    [thumbnailContainerView setHidden:1];

    [(ICDocCamViewController *)self setUseCustomRetakeTransition:1];
    navigationController = [(ICDocCamViewController *)self navigationController];
    [navigationController setDelegate:self];

    navigationController2 = [(ICDocCamViewController *)self navigationController];
    topViewController = [navigationController2 topViewController];
    navigationController3 = [topViewController navigationController];
    [navigationController3 setDelegate:self];

    documentInfoCollection2 = [(ICDocCamViewController *)self documentInfoCollection];
    docInfos2 = [documentInfoCollection2 docInfos];
    v16 = [docInfos2 objectAtIndexedSubscript:retake];

    imageCache = [(ICDocCamViewController *)self imageCache];
    croppedAndFilteredImageUUID = [v16 croppedAndFilteredImageUUID];
    v19 = [imageCache getImage:croppedAndFilteredImageUUID];

    v20 = [MEMORY[0x277CCAA70] indexPathForItem:retake inSection:0];
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
    layer = [v21 layer];
    LODWORD(v23) = 1.0;
    [layer setOpacity:v23];

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

- (void)extractedDocumentController:(id)controller didTapRecrop:(id)recrop index:(int64_t)index
{
  controllerCopy = controller;
  recropCopy = recrop;
  imageCache = [(ICDocCamViewController *)self imageCache];
  fullImageUUID = [recropCopy fullImageUUID];
  v11 = [imageCache getImage:fullImageUUID];

  imageQuad = [recropCopy imageQuad];
  currentOrientation = [recropCopy currentOrientation];
  v14 = [ICDocCamImageQuadEditViewController alloc];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __73__ICDocCamViewController_extractedDocumentController_didTapRecrop_index___block_invoke;
  v30[3] = &unk_278F93EE8;
  v15 = recropCopy;
  v31 = v15;
  selfCopy = self;
  v16 = controllerCopy;
  v33 = v16;
  indexCopy = index;
  v17 = [(ICDocCamImageQuadEditViewController *)v14 initWithImage:v11 quad:imageQuad scanDataDelegate:0 orientation:currentOrientation completionHandler:v30];
  [(ICDocCamImageQuadEditViewController *)v17 setShowImageAsAspectFit:1];
  [(ICDocCamImageQuadEditViewController *)v17 setEdgesForExtendedLayout:15];
  [(ICDocCamImageQuadEditViewController *)v17 setExtendedLayoutIncludesOpaqueBars:1];
  [(ICDocCamViewController *)self setUseCustomRecropTransition:1];
  navigationController = [(ICDocCamViewController *)self navigationController];
  [navigationController setDelegate:self];

  navigationController2 = [(ICDocCamImageQuadEditViewController *)v17 navigationController];
  [navigationController2 setDelegate:self];

  v20 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:0];
  [(ICDocCamViewController *)self setIndexPathForRecrop:v20];

  imageCache2 = [(ICDocCamViewController *)self imageCache];
  croppedAndFilteredImageUUID = [v15 croppedAndFilteredImageUUID];
  v23 = [imageCache2 getImage:croppedAndFilteredImageUUID];
  [(ICDocCamViewController *)self setFilteredImageForRecrop:v23];

  v24 = [v16 croppedButNotFilteredImageForDocInfo:v15];
  [(ICDocCamViewController *)self setUnfilteredImageForRecrop:v24];

  v25 = objc_alloc(MEMORY[0x277D755B8]);
  unfilteredImageForRecrop = [(ICDocCamViewController *)self unfilteredImageForRecrop];
  v27 = [v25 initWithCGImage:objc_msgSend(unfilteredImageForRecrop scale:"CGImage") orientation:{objc_msgSend(v15, "currentOrientation"), 1.0}];
  [(ICDocCamViewController *)self setUnfilteredImageForRecrop:v27];

  -[ICDocCamViewController setOrientationForRecrop:](self, "setOrientationForRecrop:", [v15 currentOrientation]);
  navigationController3 = [(ICDocCamViewController *)self navigationController];
  [navigationController3 pushViewController:v17 animated:1];
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

- (void)extractedDocumentControllerDidTapDone:(unint64_t)done
{
  [(ICDocCamViewController *)self disableRetakeMode];
  animation = [MEMORY[0x277CDA000] animation];
  [animation setRemovedOnCompletion:1];
  [animation setDuration:0.25];
  v6 = *MEMORY[0x277CDA928];
  [animation setType:*MEMORY[0x277CDA928]];
  v7 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [animation setTimingFunction:v7];

  saveButton = [(ICDocCamViewController *)self saveButton];
  layer = [saveButton layer];
  [layer addAnimation:animation forKey:@"changeTextTransition"];

  saveButton2 = [(ICDocCamViewController *)self saveButton];
  documentInfoCollection = [(ICDocCamViewController *)self documentInfoCollection];
  docInfos = [documentInfoCollection docInfos];
  [saveButton2 setDocumentCount:{objc_msgSend(docInfos, "count")}];

  [(ICDocCamViewController *)self updateThumbnailContainerViewConstraintConstantForIPad];
  documentInfoCollection2 = [(ICDocCamViewController *)self documentInfoCollection];
  docInfos2 = [documentInfoCollection2 docInfos];
  v15 = [docInfos2 count];

  if (v15)
  {
    [(ICDocCamViewController *)self setDoneButtonVisible:1];
  }

  thumbnailContainerView = [(ICDocCamViewController *)self thumbnailContainerView];
  [thumbnailContainerView setHidden:0];

  thumbnailViewController = [(ICDocCamViewController *)self thumbnailViewController];
  [thumbnailViewController update];

  documentInfoCollection3 = [(ICDocCamViewController *)self documentInfoCollection];
  docInfos3 = [documentInfoCollection3 docInfos];
  v20 = [docInfos3 count];

  if (v20)
  {
    [(ICDocCamViewController *)self setUseCustomThumbnailZoomTransition:1];
    view = [(ICDocCamViewController *)self view];
    [view setNeedsLayout];

    view2 = [(ICDocCamViewController *)self view];
    [view2 layoutIfNeeded];

    v23 = [MEMORY[0x277CCAA70] indexPathForItem:done inSection:0];
    documentInfoCollection4 = [(ICDocCamViewController *)self documentInfoCollection];
    docInfos4 = [documentInfoCollection4 docInfos];
    v26 = [docInfos4 objectAtIndexedSubscript:done];

    imageCache = [(ICDocCamViewController *)self imageCache];
    croppedAndFilteredImageUUID = [v26 croppedAndFilteredImageUUID];
    v29 = [imageCache getImage:croppedAndFilteredImageUUID];

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
    layer2 = [v30 layer];
    LODWORD(v32) = 1.0;
    [layer2 setOpacity:v32];

    [(ICDocCamViewController *)self restartImageCaptureSessionIfNecessary];
    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);
  }

  else
  {
    [(ICDocCamViewController *)self setUseCustomThumbnailZoomTransition:0];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (!userInterfaceIdiom)
    {
      thumbnailContainerView2 = [(ICDocCamViewController *)self thumbnailContainerView];
      [thumbnailContainerView2 setHidden:0];
    }

    navigationController = [(ICDocCamViewController *)self navigationController];
    topViewController = [navigationController topViewController];
    view3 = [topViewController view];

    animation2 = [MEMORY[0x277CDA000] animation];
    [animation2 setDuration:0.25];
    [animation2 setType:*MEMORY[0x277CDA958]];
    [animation2 setSubtype:v6];
    v40 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
    [animation2 setTimingFunction:v40];

    layer3 = [view3 layer];
    [layer3 addAnimation:animation2 forKey:&stru_285C55A80];

    navigationController2 = [(ICDocCamViewController *)self navigationController];
    v43 = [navigationController2 popViewControllerAnimated:0];
  }
}

void __64__ICDocCamViewController_extractedDocumentControllerDidTapDone___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  v2 = [v1 popViewControllerAnimated:1];
}

- (void)extractedDocumentControllerDidDeleteDocument:(id)document
{
  thumbnailViewController = [(ICDocCamViewController *)self thumbnailViewController];
  [thumbnailViewController update];
}

- (void)setupAccessibilityInfo
{
  v86 = *MEMORY[0x277D85DE8];
  userPromptLabel = [(ICDocCamViewController *)self userPromptLabel];
  [userPromptLabel setIsAccessibilityElement:0];

  cameraUnavailableLabel = [(ICDocCamViewController *)self cameraUnavailableLabel];
  [cameraUnavailableLabel setIsAccessibilityElement:0];

  cancelButtonForIPhone = [(ICDocCamViewController *)self cancelButtonForIPhone];
  [cancelButtonForIPhone setShowsLargeContentViewer:1];

  cancelButtonForIPhone2 = [(ICDocCamViewController *)self cancelButtonForIPhone];
  v7 = objc_alloc_init(MEMORY[0x277D756C8]);
  [cancelButtonForIPhone2 addInteraction:v7];

  cancelButton = [(ICDocCamViewController *)self cancelButton];
  [cancelButton setShowsLargeContentViewer:1];

  cancelButton2 = [(ICDocCamViewController *)self cancelButton];
  v10 = objc_alloc_init(MEMORY[0x277D756C8]);
  [cancelButton2 addInteraction:v10];

  flashButton = [(ICDocCamViewController *)self flashButton];
  [flashButton setShowsLargeContentViewer:1];

  flashButton2 = [(ICDocCamViewController *)self flashButton];
  v13 = objc_alloc_init(MEMORY[0x277D756C8]);
  [flashButton2 addInteraction:v13];

  flashSettingViewFlashIcon = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
  [flashSettingViewFlashIcon setShowsLargeContentViewer:1];

  flashSettingViewFlashIcon2 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
  v16 = objc_alloc_init(MEMORY[0x277D756C8]);
  [flashSettingViewFlashIcon2 addInteraction:v16];

  flashButtonForIPhone = [(ICDocCamViewController *)self flashButtonForIPhone];
  [flashButtonForIPhone setShowsLargeContentViewer:1];

  flashButtonForIPhone2 = [(ICDocCamViewController *)self flashButtonForIPhone];
  v19 = objc_alloc_init(MEMORY[0x277D756C8]);
  [flashButtonForIPhone2 addInteraction:v19];

  flashSettingViewAutoButton = [(ICDocCamViewController *)self flashSettingViewAutoButton];
  [flashSettingViewAutoButton setShowsLargeContentViewer:1];

  flashSettingViewAutoButton2 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
  v22 = objc_alloc_init(MEMORY[0x277D756C8]);
  [flashSettingViewAutoButton2 addInteraction:v22];

  flashSettingViewOnButton = [(ICDocCamViewController *)self flashSettingViewOnButton];
  [flashSettingViewOnButton setShowsLargeContentViewer:1];

  flashSettingViewOnButton2 = [(ICDocCamViewController *)self flashSettingViewOnButton];
  v25 = objc_alloc_init(MEMORY[0x277D756C8]);
  [flashSettingViewOnButton2 addInteraction:v25];

  flashSettingViewOffButton = [(ICDocCamViewController *)self flashSettingViewOffButton];
  [flashSettingViewOffButton setShowsLargeContentViewer:1];

  flashSettingViewOffButton2 = [(ICDocCamViewController *)self flashSettingViewOffButton];
  v28 = objc_alloc_init(MEMORY[0x277D756C8]);
  [flashSettingViewOffButton2 addInteraction:v28];

  v29 = [DCLocalization localizedStringForKey:@"Show filter settings" value:@"Show filter settings" table:@"Localizable"];
  filterButton = [(ICDocCamViewController *)self filterButton];
  [filterButton setAccessibilityLabel:v29];

  v31 = [DCLocalization localizedStringForKey:@"Double-tap to choose a filter to apply to this scan." value:@"Double-tap to choose a filter to apply to this scan." table:@"Localizable"];
  filterButton2 = [(ICDocCamViewController *)self filterButton];
  [filterButton2 setAccessibilityHint:v31];

  filterButton3 = [(ICDocCamViewController *)self filterButton];
  [filterButton3 setShowsLargeContentViewer:1];

  filterButton4 = [(ICDocCamViewController *)self filterButton];
  v35 = objc_alloc_init(MEMORY[0x277D756C8]);
  [filterButton4 addInteraction:v35];

  filterButton5 = [(ICDocCamViewController *)self filterButton];
  accessibilityLabel = [filterButton5 accessibilityLabel];
  filterButtonForIPhone = [(ICDocCamViewController *)self filterButtonForIPhone];
  [filterButtonForIPhone setAccessibilityLabel:accessibilityLabel];

  filterButton6 = [(ICDocCamViewController *)self filterButton];
  accessibilityHint = [filterButton6 accessibilityHint];
  filterButtonForIPhone2 = [(ICDocCamViewController *)self filterButtonForIPhone];
  [filterButtonForIPhone2 setAccessibilityHint:accessibilityHint];

  filterButtonForIPhone3 = [(ICDocCamViewController *)self filterButtonForIPhone];
  [filterButtonForIPhone3 setShowsLargeContentViewer:1];

  filterButtonForIPhone4 = [(ICDocCamViewController *)self filterButtonForIPhone];
  v44 = objc_alloc_init(MEMORY[0x277D756C8]);
  [filterButtonForIPhone4 addInteraction:v44];

  v45 = [DCLocalization localizedStringForKey:@"Hide filter settings" value:@"Hide filter settings" table:@"Localizable"];
  filterViewButton = [(ICDocCamViewController *)self filterViewButton];
  [filterViewButton setAccessibilityLabel:v45];

  filterViewButton2 = [(ICDocCamViewController *)self filterViewButton];
  [filterViewButton2 setShowsLargeContentViewer:1];

  filterViewButton3 = [(ICDocCamViewController *)self filterViewButton];
  v49 = objc_alloc_init(MEMORY[0x277D756C8]);
  [filterViewButton3 addInteraction:v49];

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  filterButtons = [(ICDocCamViewController *)self filterButtons];
  v51 = [filterButtons countByEnumeratingWithState:&v81 objects:v85 count:16];
  if (v51)
  {
    v52 = *v82;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v82 != v52)
        {
          objc_enumerationMutation(filterButtons);
        }

        v54 = *(*(&v81 + 1) + 8 * i);
        [v54 setShowsLargeContentViewer:1];
        v55 = objc_alloc_init(MEMORY[0x277D756C8]);
        [v54 addInteraction:v55];
      }

      v51 = [filterButtons countByEnumeratingWithState:&v81 objects:v85 count:16];
    }

    while (v51);
  }

  v56 = [DCLocalization localizedStringForKey:@"Double-tap to resume" value:@"Double-tap to resume" table:@"Localizable"];
  resumeButton = [(ICDocCamViewController *)self resumeButton];
  [resumeButton setAccessibilityLabel:v56];

  autoButtonForIPhone = [(ICDocCamViewController *)self autoButtonForIPhone];
  [autoButtonForIPhone setShowsLargeContentViewer:1];

  autoButtonForIPhone2 = [(ICDocCamViewController *)self autoButtonForIPhone];
  v60 = objc_alloc_init(MEMORY[0x277D756C8]);
  [autoButtonForIPhone2 addInteraction:v60];

  autoButton = [(ICDocCamViewController *)self autoButton];
  [autoButton setShowsLargeContentViewer:1];

  autoButton2 = [(ICDocCamViewController *)self autoButton];
  v63 = objc_alloc_init(MEMORY[0x277D756C8]);
  [autoButton2 addInteraction:v63];

  [(ICDocCamViewController *)self updateAccessibilityForCurrentFlashMode];
  [(ICDocCamViewController *)self updateAccessibilityForCurrentFilter];
  [(ICDocCamViewController *)self updateAccessibilityForAutoShutterMode:[(ICDocCamViewController *)self autoMode]];
  filterButton7 = [(ICDocCamViewController *)self filterButton];
  [filterButton7 _accessibilitySetIsSpeakThisElement:1];

  filterButtonForIPhone5 = [(ICDocCamViewController *)self filterButtonForIPhone];
  [filterButtonForIPhone5 _accessibilitySetIsSpeakThisElement:1];

  flashButton3 = [(ICDocCamViewController *)self flashButton];
  [flashButton3 _accessibilitySetIsSpeakThisElement:1];

  flashButtonForIPhone3 = [(ICDocCamViewController *)self flashButtonForIPhone];
  [flashButtonForIPhone3 _accessibilitySetIsSpeakThisElement:1];

  autoButton3 = [(ICDocCamViewController *)self autoButton];
  [autoButton3 _accessibilitySetIsSpeakThisElement:1];

  autoButtonForIPhone3 = [(ICDocCamViewController *)self autoButtonForIPhone];
  [autoButtonForIPhone3 _accessibilitySetIsSpeakThisElement:1];

  manualButton = [(ICDocCamViewController *)self manualButton];
  [manualButton _accessibilitySetIsSpeakThisElement:1];

  flashSettingViewFlashIcon3 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
  accessibilityLabel2 = [flashSettingViewFlashIcon3 accessibilityLabel];
  flashSettingViewFlashIcon4 = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
  [flashSettingViewFlashIcon4 setLargeContentTitle:accessibilityLabel2];

  filterViewButton4 = [(ICDocCamViewController *)self filterViewButton];
  accessibilityLabel3 = [filterViewButton4 accessibilityLabel];
  filterViewButton5 = [(ICDocCamViewController *)self filterViewButton];
  [filterViewButton5 setLargeContentTitle:accessibilityLabel3];

  manualButton2 = [(ICDocCamViewController *)self manualButton];
  [manualButton2 setShowsLargeContentViewer:1];

  manualButton3 = [(ICDocCamViewController *)self manualButton];
  v79 = objc_alloc_init(MEMORY[0x277D756C8]);
  [manualButton3 addInteraction:v79];

  view = [(ICDocCamViewController *)self view];
  [view setAccessibilityIgnoresInvertColors:1];
}

- (void)updateAccessibilityForCurrentFilter
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  filterButtons = [(ICDocCamViewController *)self filterButtons];
  v4 = [filterButtons countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(filterButtons);
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

      v4 = [filterButtons countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v4);
  }

  filterButton = [(ICDocCamViewController *)self filterButton];
  [filterButton setAccessibilityValue:0];

  if ([(ICDocCamViewController *)self filterSettingUIShowing])
  {
    v13 = [DCLocalization localizedStringForKey:@"Hide filter settings" value:@"Hide filter settings" table:@"Localizable"];
    filterButton2 = [(ICDocCamViewController *)self filterButton];
    [filterButton2 setAccessibilityLabel:v13];

    filterButton3 = [(ICDocCamViewController *)self filterButton];
    [filterButton3 setAccessibilityValue:0];
  }

  else
  {
    v16 = [DCLocalization localizedStringForKey:@"Show filter settings" value:@"Show filter settings" table:@"Localizable"];
    filterButton4 = [(ICDocCamViewController *)self filterButton];
    [filterButton4 setAccessibilityLabel:v16];

    filterButton3 = [ICDocCamImageFilters localizedImageFilterNameForType:[(ICDocCamViewController *)self defaultFilter]];
    filterButton5 = [(ICDocCamViewController *)self filterButton];
    [filterButton5 setAccessibilityValue:filterButton3];
  }

  filterButton6 = [(ICDocCamViewController *)self filterButton];
  accessibilityValue = [filterButton6 accessibilityValue];
  filterButtonForIPhone = [(ICDocCamViewController *)self filterButtonForIPhone];
  [filterButtonForIPhone setAccessibilityValue:accessibilityValue];

  filterButton7 = [(ICDocCamViewController *)self filterButton];
  accessibilityLabel = [filterButton7 accessibilityLabel];
  filterButton8 = [(ICDocCamViewController *)self filterButton];
  [filterButton8 setLargeContentTitle:accessibilityLabel];

  filterButtonForIPhone2 = [(ICDocCamViewController *)self filterButtonForIPhone];
  accessibilityLabel2 = [filterButtonForIPhone2 accessibilityLabel];
  filterButtonForIPhone3 = [(ICDocCamViewController *)self filterButtonForIPhone];
  [filterButtonForIPhone3 setLargeContentTitle:accessibilityLabel2];
}

- (void)updateAccessibilityForCurrentFlashMode
{
  flashMode = [(ICDocCamViewController *)self flashMode];
  switch(flashMode)
  {
    case 2:
      flashSettingViewOffButton = [(ICDocCamViewController *)self flashSettingViewOffButton];
      accessibilityTraits = [flashSettingViewOffButton accessibilityTraits];
      v11 = *MEMORY[0x277D76598];
      [flashSettingViewOffButton setAccessibilityTraits:accessibilityTraits & ~*MEMORY[0x277D76598]];

      flashSettingViewOnButton = [(ICDocCamViewController *)self flashSettingViewOnButton];
      [flashSettingViewOnButton setAccessibilityTraits:{objc_msgSend(flashSettingViewOnButton, "accessibilityTraits") & ~v11}];

      flashSettingViewAutoButton = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      [flashSettingViewAutoButton setAccessibilityTraits:{objc_msgSend(flashSettingViewAutoButton, "accessibilityTraits") | v11}];

      v36 = [DCLocalization localizedStringForKey:@"auto" value:@"auto" table:@"Localizable"];
      flashButton = [(ICDocCamViewController *)self flashButton];
      [flashButton setAccessibilityValue:v36];
LABEL_7:

      break;
    case 1:
      flashSettingViewOffButton2 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      accessibilityTraits2 = [flashSettingViewOffButton2 accessibilityTraits];
      v8 = *MEMORY[0x277D76598];
      [flashSettingViewOffButton2 setAccessibilityTraits:accessibilityTraits2 & ~*MEMORY[0x277D76598]];

      flashSettingViewOnButton2 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      [flashSettingViewOnButton2 setAccessibilityTraits:{objc_msgSend(flashSettingViewOnButton2, "accessibilityTraits") | v8}];

      flashSettingViewAutoButton2 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      [flashSettingViewAutoButton2 setAccessibilityTraits:{objc_msgSend(flashSettingViewAutoButton2, "accessibilityTraits") & ~v8}];

      v36 = [DCLocalization localizedStringForKey:@"on" value:@"on" table:@"Localizable"];
      flashButton = [(ICDocCamViewController *)self flashButton];
      [flashButton setAccessibilityValue:v36];
      goto LABEL_7;
    case 0:
      v29 = [DCLocalization localizedStringForKey:@"off" value:@"off" table:@"Localizable"];
      flashButton2 = [(ICDocCamViewController *)self flashButton];
      [flashButton2 setAccessibilityValue:v29];

      flashSettingViewOffButton3 = [(ICDocCamViewController *)self flashSettingViewOffButton];
      accessibilityTraits3 = [flashSettingViewOffButton3 accessibilityTraits];
      v6 = *MEMORY[0x277D76598];
      [flashSettingViewOffButton3 setAccessibilityTraits:*MEMORY[0x277D76598] | accessibilityTraits3];

      flashSettingViewOnButton3 = [(ICDocCamViewController *)self flashSettingViewOnButton];
      [flashSettingViewOnButton3 setAccessibilityTraits:{objc_msgSend(flashSettingViewOnButton3, "accessibilityTraits") & ~v6}];

      flashSettingViewAutoButton3 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
      [flashSettingViewAutoButton3 setAccessibilityTraits:{objc_msgSend(flashSettingViewAutoButton3, "accessibilityTraits") & ~v6}];

      break;
  }

  if ([(ICDocCamViewController *)self flashSettingUIShowing])
  {
    v40 = [DCLocalization localizedStringForKey:@"Hide flash settings" value:@"Hide flash settings" table:@"Localizable"];
    flashButton3 = [(ICDocCamViewController *)self flashButton];
    [flashButton3 setAccessibilityLabel:v40];

    flashButton4 = [(ICDocCamViewController *)self flashButton];
    [flashButton4 setAccessibilityHint:0];
  }

  else
  {
    v42 = [DCLocalization localizedStringForKey:@"Show flash settings" value:@"Show flash settings" table:@"Localizable"];
    flashButton5 = [(ICDocCamViewController *)self flashButton];
    [flashButton5 setAccessibilityLabel:v42];

    flashButton4 = [DCLocalization localizedStringForKey:@"Double-tap to change the flash setting" value:@"Double-tap to change the flash setting" table:@"Localizable"];
    flashButton6 = [(ICDocCamViewController *)self flashButton];
    [flashButton6 setAccessibilityHint:flashButton4];
  }

  v43 = [DCLocalization localizedStringForKey:@"Double-tap to turn flash off" value:@"Double-tap to turn flash off" table:@"Localizable"];
  flashSettingViewOffButton4 = [(ICDocCamViewController *)self flashSettingViewOffButton];
  [flashSettingViewOffButton4 setAccessibilityHint:v43];

  v44 = [DCLocalization localizedStringForKey:@"Double-tap to turn flash on" value:@"Double-tap to turn flash on" table:@"Localizable"];
  flashSettingViewOnButton4 = [(ICDocCamViewController *)self flashSettingViewOnButton];
  [flashSettingViewOnButton4 setAccessibilityHint:v44];

  v45 = [DCLocalization localizedStringForKey:@"Double-tap to set flash to auto" value:@"Double-tap to set flash to auto" table:@"Localizable"];
  flashSettingViewAutoButton4 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
  [flashSettingViewAutoButton4 setAccessibilityHint:v45];

  v46 = [DCLocalization localizedStringForKey:@"Hide flash settings" value:@"Hide flash settings" table:@"Localizable"];
  flashSettingViewFlashIcon = [(ICDocCamViewController *)self flashSettingViewFlashIcon];
  [flashSettingViewFlashIcon setAccessibilityLabel:v46];

  flashButton7 = [(ICDocCamViewController *)self flashButton];
  accessibilityLabel = [flashButton7 accessibilityLabel];
  flashButtonForIPhone = [(ICDocCamViewController *)self flashButtonForIPhone];
  [flashButtonForIPhone setAccessibilityLabel:accessibilityLabel];

  flashButton8 = [(ICDocCamViewController *)self flashButton];
  accessibilityHint = [flashButton8 accessibilityHint];
  flashButtonForIPhone2 = [(ICDocCamViewController *)self flashButtonForIPhone];
  [flashButtonForIPhone2 setAccessibilityHint:accessibilityHint];

  flashButton9 = [(ICDocCamViewController *)self flashButton];
  accessibilityValue = [flashButton9 accessibilityValue];
  flashButtonForIPhone3 = [(ICDocCamViewController *)self flashButtonForIPhone];
  [flashButtonForIPhone3 setAccessibilityValue:accessibilityValue];

  flashSettingViewOffButton5 = [(ICDocCamViewController *)self flashSettingViewOffButton];
  [flashSettingViewOffButton5 _accessibilitySetIsSpeakThisElement:1];

  flashSettingViewOnButton5 = [(ICDocCamViewController *)self flashSettingViewOnButton];
  [flashSettingViewOnButton5 _accessibilitySetIsSpeakThisElement:1];

  flashSettingViewAutoButton5 = [(ICDocCamViewController *)self flashSettingViewAutoButton];
  [flashSettingViewAutoButton5 _accessibilitySetIsSpeakThisElement:1];

  flashButton10 = [(ICDocCamViewController *)self flashButton];
  accessibilityLabel2 = [flashButton10 accessibilityLabel];
  flashButton11 = [(ICDocCamViewController *)self flashButton];
  [flashButton11 setLargeContentTitle:accessibilityLabel2];

  flashButtonForIPhone4 = [(ICDocCamViewController *)self flashButtonForIPhone];
  accessibilityLabel3 = [flashButtonForIPhone4 accessibilityLabel];
  flashButtonForIPhone5 = [(ICDocCamViewController *)self flashButtonForIPhone];
  [flashButtonForIPhone5 setLargeContentTitle:accessibilityLabel3];
}

- (void)updateAccessibilityForAutoShutterMode:(BOOL)mode
{
  modeCopy = mode;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    autoButton = [(ICDocCamViewController *)self autoButton];
    accessibilityTraits = [autoButton accessibilityTraits];
    if (modeCopy)
    {
      v7 = *MEMORY[0x277D76598];
      [autoButton setAccessibilityTraits:*MEMORY[0x277D76598] | accessibilityTraits];

      manualButton = [(ICDocCamViewController *)self manualButton];
      [manualButton setAccessibilityTraits:{objc_msgSend(manualButton, "accessibilityTraits") & ~v7}];

      autoButton2 = [(ICDocCamViewController *)self autoButton];
      [autoButton2 setAccessibilityHint:0];

      manualButton4 = [DCLocalization localizedStringForKey:@"Double-tap to change shutter mode to manual." value:@"Double-tap to change shutter mode to manual." table:@"Localizable"];
      manualButton2 = [(ICDocCamViewController *)self manualButton];
      [manualButton2 setAccessibilityHint:manualButton4];
    }

    else
    {
      v11 = *MEMORY[0x277D76598];
      [autoButton setAccessibilityTraits:accessibilityTraits & ~*MEMORY[0x277D76598]];

      manualButton3 = [(ICDocCamViewController *)self manualButton];
      [manualButton3 setAccessibilityTraits:{objc_msgSend(manualButton3, "accessibilityTraits") | v11}];

      v21 = [DCLocalization localizedStringForKey:@"Double-tap to change shutter mode to automatic." value:@"Double-tap to change shutter mode to automatic." table:@"Localizable"];
      autoButton3 = [(ICDocCamViewController *)self autoButton];
      [autoButton3 setAccessibilityHint:v21];

      manualButton4 = [(ICDocCamViewController *)self manualButton];
      [manualButton4 setAccessibilityHint:0];
    }
  }

  else
  {
    v19 = [DCLocalization localizedStringForKey:@"Double-tap to toggle shutter mode." value:@"Double-tap to toggle shutter mode." table:@"Localizable"];
    autoButtonForIPhone = [(ICDocCamViewController *)self autoButtonForIPhone];
    [autoButtonForIPhone setAccessibilityHint:v19];

    manualButton4 = [(ICDocCamViewController *)self autoButtonForIPhone];
    accessibilityTraits2 = [manualButton4 accessibilityTraits];
    [manualButton4 setAccessibilityTraits:accessibilityTraits2 & ~*MEMORY[0x277D76580]];
  }

  v22 = [DCLocalization localizedStringForKey:@"Take picture" value:@"Take picture" table:@"Localizable"];
  shutterButton = [(ICDocCamViewController *)self shutterButton];
  [shutterButton setAccessibilityLabel:v22];
}

- (void)speakLabelTextForAccessibilityIfNecessary:(id)necessary afterDelay:(double)delay
{
  necessaryCopy = necessary;
  v6 = necessaryCopy;
  if (necessaryCopy)
  {
    v7 = necessaryCopy;
    do
    {
      isHidden = [v7 isHidden];
      if (isHidden)
      {
        break;
      }

      superview = [v7 superview];

      v7 = superview;
    }

    while (superview);
  }

  else
  {
    v7 = 0;
    isHidden = 0;
  }

  v10 = dispatch_time(0, (delay * 1000000000.0));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__ICDocCamViewController_speakLabelTextForAccessibilityIfNecessary_afterDelay___block_invoke;
  v12[3] = &unk_278F93B00;
  v14 = isHidden;
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

- (void)updateRecentlyObservedRectanglesWithRect:(id)rect
{
  v56 = *MEMORY[0x277D85DE8];
  rectCopy = rect;
  if (rectCopy)
  {
    recentRectangleObservations = [(ICDocCamViewController *)self recentRectangleObservations];
    objc_sync_enter(recentRectangleObservations);
    recentRectangleObservations2 = [(ICDocCamViewController *)self recentRectangleObservations];
    [recentRectangleObservations2 addObject:rectCopy];

    recentRectangleObservations3 = [(ICDocCamViewController *)self recentRectangleObservations];
    v8 = [recentRectangleObservations3 count];

    if (v8 < 6)
    {
LABEL_29:
      objc_sync_exit(recentRectangleObservations);

      goto LABEL_30;
    }

    recentRectangleObservations4 = [(ICDocCamViewController *)self recentRectangleObservations];
    [recentRectangleObservations4 removeObjectAtIndex:0];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    recentRectangleObservations5 = [(ICDocCamViewController *)self recentRectangleObservations];
    v11 = [recentRectangleObservations5 countByEnumeratingWithState:&v51 objects:v55 count:16];
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
            objc_enumerationMutation(recentRectangleObservations5);
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

        v11 = [recentRectangleObservations5 countByEnumeratingWithState:&v51 objects:v55 count:16];
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

    recentRectangleObservations6 = [(ICDocCamViewController *)self recentRectangleObservations];
    v33 = [recentRectangleObservations6 count];

    recentRectangleObservations7 = [(ICDocCamViewController *)self recentRectangleObservations];
    v35 = [recentRectangleObservations7 count];

    recentRectangleObservations8 = [(ICDocCamViewController *)self recentRectangleObservations];
    v37 = [recentRectangleObservations8 count];

    recentRectangleObservations9 = [(ICDocCamViewController *)self recentRectangleObservations];
    v39 = [recentRectangleObservations9 count];

    date = [MEMORY[0x277CBEAA8] date];
    lastAXPositionAnnouncementDate = [(ICDocCamViewController *)self lastAXPositionAnnouncementDate];
    [date timeIntervalSinceDate:lastAXPositionAnnouncementDate];
    if (v42 > 2.5)
    {
    }

    else
    {
      lastAXPositionAnnouncementDate2 = [(ICDocCamViewController *)self lastAXPositionAnnouncementDate];
      v44 = lastAXPositionAnnouncementDate2 == 0;

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
            [(ICDocCamViewController *)self setLastAXPositionAnnouncementDate:date];

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
    flashButton = [(ICDocCamViewController *)self flashButton];
    v24[0] = flashButton;
    filterButton = [(ICDocCamViewController *)self filterButton];
    v24[1] = filterButton;
    autoButton = [(ICDocCamViewController *)self autoButton];
    v24[2] = autoButton;
    manualButton = [(ICDocCamViewController *)self manualButton];
    v24[3] = manualButton;
    flashButtonForIPhone = [(ICDocCamViewController *)self flashButtonForIPhone];
    v24[4] = flashButtonForIPhone;
    filterButtonForIPhone = [(ICDocCamViewController *)self filterButtonForIPhone];
    v24[5] = filterButtonForIPhone;
    autoButtonForIPhone = [(ICDocCamViewController *)self autoButtonForIPhone];
    v24[6] = autoButtonForIPhone;
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
  userPromptLabel = [(ICDocCamViewController *)self userPromptLabel];
  [userPromptLabel setFont:v9];

  v10 = [MEMORY[0x277D74300] dc_preferredFontForTextStyle:v3 adjustedForDefaultSize:16.0];
  filterNameFeedbackLabel = [(ICDocCamViewController *)self filterNameFeedbackLabel];
  [filterNameFeedbackLabel setFont:v10];

  v11 = [MEMORY[0x277D74300] dc_preferredFontForTextStyle:v3 adjustedForDefaultSize:14.0];
  autoShutterOnLabel = [(ICDocCamViewController *)self autoShutterOnLabel];
  [autoShutterOnLabel setFont:v11];

  v12 = [MEMORY[0x277D74300] dc_preferredFontForTextStyle:v3 adjustedForDefaultSize:14.0];
  autoShutterOffLabel = [(ICDocCamViewController *)self autoShutterOffLabel];
  [autoShutterOffLabel setFont:v12];

  v13 = [MEMORY[0x277D74300] dc_preferredFontForTextStyle:v3 adjustedForDefaultSize:16.0];
  moveCameraCloserLabel = [(ICDocCamViewController *)self moveCameraCloserLabel];
  [moveCameraCloserLabel setFont:v13];
}

- (void)didRecognizeRectangleForAccessibility:(BOOL)accessibility
{
  accessibilityCopy = accessibility;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    hasCandidateRectanglesForAX = [(ICDocCamViewController *)self hasCandidateRectanglesForAX];
    if (accessibilityCopy)
    {
      if ((hasCandidateRectanglesForAX & 1) == 0)
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

      hasCandidateRectanglesForAX = [ICRemoteDocCamViewController viewDidLoad];
    }

    if (hasCandidateRectanglesForAX)
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
      viewDidLoad = [ICRemoteDocCamViewController viewDidLoad];
      _Block_object_dispose(&v10, 8);
      _Unwind_Resume(viewDidLoad);
    }

LABEL_16:
    UIAccessibilityPostNotification(*MEMORY[0x277D76438], *v6);
LABEL_17:
    [(ICDocCamViewController *)self setAxConsecutiveRecognizerStateCount:[(ICDocCamViewController *)self axConsecutiveRecognizerStateCount]+ 1];
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v4 = [stop valueForKey:{@"animationCompletionBlockKey", finished}];
  if (v4)
  {
    v4[2]();
  }
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  if ([(ICDocCamViewController *)self useCustomThumbnailZoomTransition:controller])
  {
    [(ICDocCamViewController *)self setUseCustomThumbnailZoomTransition:0];
    v8 = [ICDocCamThumbnailZoomTransitionAnimator alloc];
    imageForThumbnailZoom = [(ICDocCamViewController *)self imageForThumbnailZoom];
    indexPathForThumbnailZoom = [(ICDocCamViewController *)self indexPathForThumbnailZoom];
    thumbnailZoomCompletionBlock = [(ICDocCamViewController *)self thumbnailZoomCompletionBlock];
    v12 = [(ICDocCamThumbnailZoomTransitionAnimator *)v8 initWithImage:imageForThumbnailZoom indexPath:indexPathForThumbnailZoom duration:thumbnailZoomCompletionBlock completion:0.5];

    [(ICDocCamThumbnailZoomTransitionAnimator *)v12 setPresenting:operation == 1];
    [(ICDocCamViewController *)self setImageForThumbnailZoom:0];
  }

  else
  {
    useCustomRetakeTransition = [(ICDocCamViewController *)self useCustomRetakeTransition];
    if (operation == 2 && useCustomRetakeTransition)
    {
      [(ICDocCamViewController *)self setUseCustomRetakeTransition:0];
      v14 = [ICDocCamRetakeTransitionAnimator alloc];
      imageForRetake = [(ICDocCamViewController *)self imageForRetake];
      indexPathForRetake = [(ICDocCamViewController *)self indexPathForRetake];
      retakeCompletionBlock = [(ICDocCamViewController *)self retakeCompletionBlock];
      v12 = [(ICDocCamRetakeTransitionAnimator *)v14 initWithImage:imageForRetake indexPath:indexPathForRetake duration:retakeCompletionBlock completion:0.28];

      [(ICDocCamThumbnailZoomTransitionAnimator *)v12 setPresenting:0];
      [(ICDocCamViewController *)self setImageForRetake:0];
    }

    else if ([(ICDocCamViewController *)self useCustomRecropTransition])
    {
      v18 = [ICDocCamRecropTransitionAnimator alloc];
      filteredImageForRecrop = [(ICDocCamViewController *)self filteredImageForRecrop];
      unfilteredImageForRecrop = [(ICDocCamViewController *)self unfilteredImageForRecrop];
      orientationForRecrop = [(ICDocCamViewController *)self orientationForRecrop];
      indexPathForRecrop = [(ICDocCamViewController *)self indexPathForRecrop];
      v23 = [(ICDocCamRecropTransitionAnimator *)v18 initWithImage:filteredImageForRecrop unfilteredImage:unfilteredImageForRecrop orientation:orientationForRecrop indexPath:indexPathForRecrop duration:0 completion:0.65];

      [(ICDocCamViewController *)self setFilteredImageForRecrop:0];
      [(ICDocCamViewController *)self setUnfilteredImageForRecrop:0];
      [(ICDocCamRecropTransitionAnimator *)v23 setPresenting:operation == 1];
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

- (CGRect)zoomTargetForIndexPath:(id)path
{
  pathCopy = path;
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
    v13 = pathCopy;
    v14 = objc_opt_class();
    thumbnailContainerView = [(ICDocCamViewController *)self thumbnailContainerView];
    collectionView = [thumbnailContainerView collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
    v18 = DCDynamicCast(v14, collectionViewLayout);

    if ([v18 compactLayout])
    {
      v19 = MEMORY[0x277CCAA70];
      documentInfoCollection = [(ICDocCamViewController *)self documentInfoCollection];
      docInfos = [documentInfoCollection docInfos];
      v22 = [v19 indexPathForItem:objc_msgSend(docInfos inSection:{"count") - 1, 0}];

      v13 = v22;
    }

    thumbnailViewController = [(ICDocCamViewController *)self thumbnailViewController];
    collectionView2 = [thumbnailViewController collectionView];
    v25 = [collectionView2 cellForItemAtIndexPath:v13];

    thumbnailViewController2 = [(ICDocCamViewController *)self thumbnailViewController];
    collectionView3 = [thumbnailViewController2 collectionView];
    [v25 frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    view = [(ICDocCamViewController *)self view];
    [collectionView3 convertRect:view toView:{v29, v31, v33, v35}];
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

- (void)toggleRecording:(id)recording
{
  recordButton = [(ICDocCamViewController *)self recordButton];
  [recordButton setEnabled:0];

  movieController = [(ICDocCamViewController *)self movieController];
  isRecording = [movieController isRecording];

  if (!isRecording)
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
        movieController2 = [(ICDocCamViewController *)self movieController];
        [movieController2 startRecording];
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

  movieController2 = [(ICDocCamViewController *)self movieController];
  [movieController2 stopRecording];
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

- (void)enableUIElementsForMovieRecording:(BOOL)recording
{
  recordingCopy = recording;
  flashButton = [(ICDocCamViewController *)self flashButton];
  [flashButton setEnabled:recordingCopy];

  filterButton = [(ICDocCamViewController *)self filterButton];
  [filterButton setEnabled:recordingCopy];

  autoButton = [(ICDocCamViewController *)self autoButton];
  [autoButton setEnabled:recordingCopy];

  manualButton = [(ICDocCamViewController *)self manualButton];
  [manualButton setEnabled:recordingCopy];

  shutterButton = [(ICDocCamViewController *)self shutterButton];
  [shutterButton setEnabled:recordingCopy];

  cancelButton = [(ICDocCamViewController *)self cancelButton];
  [cancelButton setEnabled:recordingCopy];

  flashButtonForIPhone = [(ICDocCamViewController *)self flashButtonForIPhone];
  [flashButtonForIPhone setEnabled:recordingCopy];

  filterButtonForIPhone = [(ICDocCamViewController *)self filterButtonForIPhone];
  [filterButtonForIPhone setEnabled:recordingCopy];

  autoButtonForIPhone = [(ICDocCamViewController *)self autoButtonForIPhone];
  [autoButtonForIPhone setEnabled:recordingCopy];

  cancelButtonForIPhone = [(ICDocCamViewController *)self cancelButtonForIPhone];
  [cancelButtonForIPhone setEnabled:recordingCopy];
}

- (void)showErrorForMovieRecording:(id)recording
{
  recordingCopy = recording;
  Main = CFRunLoopGetMain();
  v6 = *MEMORY[0x277CBF048];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__ICDocCamViewController_showErrorForMovieRecording___block_invoke;
  v8[3] = &unk_278F93EC0;
  v7 = recordingCopy;
  v9 = v7;
  selfCopy = self;
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
  session = [(ICDocCamViewController *)self session];
  isRunning = [session isRunning];

  if (isRunning)
  {
    session2 = [(ICDocCamViewController *)self session];
    [session2 stopRunning];
  }
}

- (void)resumeCaptureSessionForMovieRecording
{
  session = [(ICDocCamViewController *)self session];
  isRunning = [session isRunning];

  if ((isRunning & 1) == 0)
  {
    session2 = [(ICDocCamViewController *)self session];
    [session2 startRunning];
  }
}

- (void)enableRecordButton:(BOOL)button
{
  buttonCopy = button;
  recordButton = [(ICDocCamViewController *)self recordButton];
  [recordButton setEnabled:buttonCopy];
}

- (void)changeRecordButtonTitle:(id)title
{
  titleCopy = title;
  recordButton = [(ICDocCamViewController *)self recordButton];
  [recordButton setTitle:titleCopy forState:0];
}

- (void)createCaptureEventInteractionIfNecessary
{
  captureEventInteraction = [(ICDocCamViewController *)self captureEventInteraction];

  if (!captureEventInteraction)
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

    view = [(ICDocCamViewController *)self view];
    captureEventInteraction2 = [(ICDocCamViewController *)self captureEventInteraction];
    [view addInteraction:captureEventInteraction2];

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

- (void)handleCaptureEventInteractionEvent:(id)event
{
  eventCopy = event;
  view = [(ICDocCamViewController *)self view];
  window = [view window];
  isKeyWindow = [window isKeyWindow];

  if (isKeyWindow)
  {
    phase = [eventCopy phase];
    if (phase)
    {
      if (phase == 1)
      {
        [(ICDocCamViewController *)self handlePhysicalButtonReleased];
      }

      else if (phase == 2)
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
  shutterButton = [(ICDocCamViewController *)self shutterButton];
  isEnabled = [shutterButton isEnabled];
  if (!([shutterButton isTouchInside] & 1 | ((isEnabled & 1) == 0)))
  {
    [(ICDocCamViewController *)self setCapturingFromPhysicalButton:1];
    [shutterButton setHighlighted:1];
  }
}

- (void)handlePhysicalButtonReleased
{
  if ([(ICDocCamViewController *)self capturingFromPhysicalButton])
  {
    shutterButton = [(ICDocCamViewController *)self shutterButton];
    [shutterButton setHighlighted:0];
    [(ICDocCamViewController *)self shutterButtonAction:0];
    [(ICDocCamViewController *)self setCapturingFromPhysicalButton:0];
  }
}

- (void)handlePhysicalButtonPressCancelled
{
  if ([(ICDocCamViewController *)self capturingFromPhysicalButton])
  {
    shutterButton = [(ICDocCamViewController *)self shutterButton];
    [shutterButton setHighlighted:0];
    [(ICDocCamViewController *)self setCapturingFromPhysicalButton:0];
  }
}

- (void)removeSaveActionBlockerForFiles
{
  processRequestsBlocker = [(ICDocCamViewController *)self processRequestsBlocker];
  [processRequestsBlocker removeBlockerOfType:@"SaveActionBlocker"];
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