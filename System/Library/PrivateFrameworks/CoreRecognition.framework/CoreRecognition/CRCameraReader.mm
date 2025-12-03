@interface CRCameraReader
+ (CGRect)aspectRatioPaddedRect:(CGRect)rect expectedWidth:(double)width height:(double)height orientation:(unsigned int)orientation;
+ (CGRect)uniformPadRect:(CGRect)rect widthPadding:(float)padding heightPadding:(float)heightPadding width:(double)width height:(double)height;
+ (id)extractCardImage:(id)image fromPixelBuffer:(__CVBuffer *)buffer withCardBuffer:(__CVBuffer *)cardBuffer cameraIntrinsicData:(id)data;
+ (id)extractCardImage:(id)image fromPixelBuffer:(__CVBuffer *)buffer withCardBuffer:(__CVBuffer *)cardBuffer withPoints:(id)points cameraIntrinsicData:(id)data;
+ (id)extractCardImage:(id)image fromPixelBuffer:(__CVBuffer *)buffer withCardBuffer:(__CVBuffer *)cardBuffer withPoints:(id)points cameraIntrinsicData:(id)data padding:(float)padding inputOrientation:(int)orientation;
+ (id)extractCardImage:(id)image fromPixelBuffer:(__CVBuffer *)buffer withCardBuffer:(__CVBuffer *)cardBuffer withPoints:(id)points cameraIntrinsicData:(id)data padding:(float)padding inputOrientation:(int)orientation unpaddedCardImage:(id *)self0;
+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage;
+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage outputObjectTypes:(id)types;
+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage roi:(CGRect)roi;
+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage roi:(CGRect)roi outputObjectTypes:(id)types;
+ (id)perspectiveCorrectedImage:(id)image p1:(CGPoint)p1 p2:(CGPoint)p2 p3:(CGPoint)p3 p4:(CGPoint)p4;
+ (id)platformImageFromCIImage:(id)image;
+ (id)scaledImage:(id)image width:(double)width height:(double)height;
+ (id)targetRectsForImage:(id)image;
+ (id)textFeatureWithVNTextObservation:(id)observation;
+ (unint64_t)supportedCameraCount;
+ (void)loadFonts;
- (CGRect)boxLayerPresentationFrame;
- (CRCameraReader)initWithNibName:(id)name bundle:(id)bundle options:(id)options;
- (CRCameraReaderDelegate)callbackDelegate;
- (NSArray)outputObjectTypes;
- (__CVBuffer)createFastAccessPixelBufferWithSize:(CGSize)size videoFormat:(int)format;
- (id)attributedStringWithFrame:(CGSize)frame withFont:(id)font withString:(id)string color:(CGColor *)color;
- (id)cameraIntrinsicDataForSampleBuffer:(opaqueCMSampleBuffer *)buffer width:(unint64_t)width height:(unint64_t)height;
- (id)createTextLayerForRecognizedObject:(id)object;
- (id)currentDeviceID;
- (id)extractFinalDigitStringFromNumbers:(id)numbers;
- (id)findCCExpDateInImageEmbossed:(id)embossed;
- (id)findCCNameInImageEmbossed:(id)embossed;
- (id)findCCNumberInImageEmbossed:(id)embossed;
- (id)findCCNumberInImageEmbossed:(id)embossed withFinalDigit:(id)digit;
- (id)findCCObjectEmbossed:(id)embossed inImage:(id)image forRect:(id)rect;
- (id)findCCObjectsEmbossed:(id)embossed inImage:(id)image numberRects:(id)rects nameRects:(id)nameRects dateRects:(id)dateRects;
- (id)findCCResultsInImageFlat:(id)flat usingTextFeatures:(id)features invert:(BOOL)invert;
- (id)findObjectsEmbossed:(id)embossed inImage:(id)image;
- (id)findObjectsFlat:(id)flat inImage:(id)image numberRects:(id)rects invert:(BOOL)invert;
- (id)generateStringFromDate:(id)date;
- (id)getCorrectedIDImageFromAuxiliaryPoints:(id)points fromPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation unpaddedCardImage:(id *)image;
- (int64_t)currentCameraIdentifier;
- (unint64_t)getFirstTimeFrameIndexForPinnedField:(id)field;
- (void)aetPlacementTextColor:(id)color;
- (void)animatePresentCodeAtFrameTime:(id *)time;
- (void)cancel;
- (void)captureImage;
- (void)captureImageFromSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)createCorrectedCardBuffer;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)findCodeInSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)findIDObjects:(id)objects inPixelBuffer:(__CVBuffer *)buffer cameraIntrinsicData:(id)data frameTime:(id *)time;
- (void)findOCRTextObjects:(id)objects inPixelBuffer:(__CVBuffer *)buffer attachments:(id)attachments frameTime:(id *)time;
- (void)findObjects:(id)objects inPixelBuffer:(__CVBuffer *)buffer cameraIntrinsicData:(id)data frameTime:(id *)time;
- (void)flashScreenAndPlayCaptureSound;
- (void)hideBoxLayer;
- (void)loadModels;
- (void)loadView;
- (void)mergeInfo:(id)info intoFindInfo:(id)findInfo;
- (void)orientationDidChange:(id)change;
- (void)pauseBoxLayerHideTimer;
- (void)primeBoxLayerHideTimerWithFrameTime:(id *)time;
- (void)releaseCorrectedCardBuffer;
- (void)removeLayerTree;
- (void)sendDidCancel;
- (void)sendDidDisplayMessageStyle:(int64_t)style;
- (void)sendDidEndAnimation;
- (void)sendDidEndWithError:(id)error;
- (void)sendDidEndWithErrorDomain:(id)domain code:(int64_t)code userInfo:(id)info;
- (void)sendDidEndWithInfo:(id)info;
- (void)sendDidFindTarget:(id)target frameTime:(id *)time;
- (void)sendDidRecognizeNewObjects:(id)objects;
- (void)sendProvideOverlayObjects:(id)objects;
- (void)setCapturedTextColor:(id)color;
- (void)setFirstTimeFrameIndexForPinnedField:(id)field;
- (void)setHidePlacementText:(BOOL)text;
- (void)setMaskColor:(id)color;
- (void)setMaskOutlineColor:(id)color;
- (void)setOutputCapturedImageWidth:(unint64_t)width;
- (void)setOutputObjectTypes:(id)types;
- (void)setupInitialLayerConfiguration;
- (void)showMessage:(id)message color:(id)color style:(int64_t)style duration:(double)duration;
- (void)showTextDetectorObjects:(id)objects;
- (void)start;
- (void)startSession;
- (void)stopSession;
- (void)switchToCamera:(int64_t)camera;
- (void)switchToCameraWithDeviceID:(id)d;
- (void)toggleCamera;
- (void)updateContactsCache:(id)cache;
- (void)updatePinnedInfoFrameIndex;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CRCameraReader

+ (unint64_t)supportedCameraCount
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CE5AD0];
  v3 = *MEMORY[0x277CE5870];
  v9[0] = *MEMORY[0x277CE5878];
  v9[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v5 = [v2 discoverySessionWithDeviceTypes:v4 mediaType:*MEMORY[0x277CE5EA8] position:0];

  devices = [v5 devices];
  v7 = [devices count];

  return v7;
}

+ (void)loadFonts
{
  if (+[CRCameraReader loadFonts]::onceToken != -1)
  {
    dispatch_once(&+[CRCameraReader loadFonts]::onceToken, &__block_literal_global);
  }
}

void __27__CRCameraReader_loadFonts__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRecognition"];
  v1 = [v0 resourceURL];
  v2 = [v1 URLByAppendingPathComponent:@"Fonts/Scancardium_2.0.ttf"];

  error = 0;
  CTFontManagerRegisterFontsForURL(v2, kCTFontManagerScopeProcess, &error);
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRecognition"];
  v4 = [v3 resourceURL];
  v5 = [v4 URLByAppendingPathComponent:@"Fonts/Spendcardium.ttf"];

  CTFontManagerRegisterFontsForURL(v5, kCTFontManagerScopeProcess, &error);
}

- (CRCameraReader)initWithNibName:(id)name bundle:(id)bundle options:(id)options
{
  nameCopy = name;
  bundleCopy = bundle;
  optionsCopy = options;
  v11 = [optionsCopy mutableCopy];
  [(CRCameraReader *)self setOptionsDictionary:v11];

  [objc_opt_class() loadFonts];
  v36.receiver = self;
  v36.super_class = CRCameraReader;
  v12 = [(CRCameraReader *)&v36 initWithNibName:nameCopy bundle:bundleCopy];
  if (v12)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    -[CRCameraReader setConfigPresentCentered:](v12, "setConfigPresentCentered:", [standardUserDefaults BOOLForKey:@"com.apple.CoreRecognition.RedeemerPresentCentered"]);

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v15 = [standardUserDefaults2 BOOLForKey:@"com.apple.CoreRecognition.RedeemerDemoMode"];
    v16 = 1.0;
    if (v15)
    {
      v16 = 0.25;
    }

    [(CRCameraReader *)v12 setConfigDemoSpeed:v16];

    standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    -[CRCameraReader setConfigUseFastScanning:](v12, "setConfigUseFastScanning:", [standardUserDefaults3 BOOLForKey:@"com.apple.CoreRecognition.UseFastScanning"]);

    standardUserDefaults4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    -[CRCameraReader setConfigUseJPEGForColor:](v12, "setConfigUseJPEGForColor:", [standardUserDefaults4 BOOLForKey:@"com.apple.CoreRecognition.useJPEGForColor"]);

    standardUserDefaults5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    -[CRCameraReader setShowDiagnosticHUD:](v12, "setShowDiagnosticHUD:", [standardUserDefaults5 BOOLForKey:@"com.apple.CoreRecognition.showDiagnosticHUD"]);

    [(CRCameraReader *)v12 setCaptureCount:1];
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    [(CRCameraReader *)v12 setCaptureBuffer:weakObjectsPointerArray];

    [(CRCameraReader *)v12 setSessionTimeout:INFINITY];
    [(CRCameraReader *)v12 setWhiteBalanceMode:2];
    [(CRCameraReader *)v12 setFocusMode:2];
    [(CRCameraReader *)v12 setExposureMode:2];
    [(CRCameraReader *)v12 setTorchMode:0];
    [(CRCameraReader *)v12 setCameraMode:*MEMORY[0x277CE5980]];
    [(CRCameraReader *)v12 setHidePlacementText:0];
    [(CRCameraReader *)v12 setEnableAltIDCardScan:0];
    [(CRCameraReader *)v12 setEnableManualIDCapture:0];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    -[CRCameraReader setCameraPosition:](v12, "setCameraPosition:", [currentDevice userInterfaceIdiom] == 1);

    v22 = dispatch_semaphore_create(1);
    [(CRCameraReader *)v12 setProcessingImage:v22];

    [(CRCameraReader *)v12 setLastBuffer:0];
    LODWORD(v23) = 1036831949;
    [(CRCameraReader *)v12 setBorderPaddingIDCard:v23];
    v24 = dispatch_queue_create("com.apple.CoreRecognition.processingQueue", 0);
    [(CRCameraReader *)v12 setProcessingQueue:v24];

    v25 = dispatch_queue_create("com.apple.CoreRecognition.callbackQueue", 0);
    [(CRCameraReader *)v12 setDelegateQueue:v25];

    v26 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
    maskColor = v12->_maskColor;
    v12->_maskColor = v26;

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    maskOutlineColor = v12->_maskOutlineColor;
    v12->_maskOutlineColor = whiteColor;

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    placementTextColor = v12->_placementTextColor;
    v12->_placementTextColor = whiteColor2;

    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    capturedTextColor = v12->_capturedTextColor;
    v12->_capturedTextColor = whiteColor3;

    alignmentLayer = [(CRCameraReader *)v12 alignmentLayer];
    [alignmentLayer propogateMaskColor:v12->_maskColor outlineColor:v12->_maskOutlineColor placementTextColor:v12->_placementTextColor capturedTextColor:v12->_capturedTextColor];

    v12->_outputCapturedImageWidth = 1536;
    v12->_outputCapturedImageHeight = 960;
    [(CRCameraReader *)v12 setEnableUnpaddedIDCapture:0];
  }

  return v12;
}

- (void)setMaskColor:(id)color
{
  colorCopy = color;
  v4 = [colorCopy copy];
  maskColor = self->_maskColor;
  self->_maskColor = v4;

  if ([(CRCameraReader *)self isViewLoaded])
  {
    alignmentLayer = [(CRCameraReader *)self alignmentLayer];
    [alignmentLayer propogateMaskColor:self->_maskColor outlineColor:self->_maskOutlineColor placementTextColor:self->_placementTextColor capturedTextColor:self->_capturedTextColor];
  }
}

- (void)setMaskOutlineColor:(id)color
{
  colorCopy = color;
  v4 = [colorCopy copy];
  maskOutlineColor = self->_maskOutlineColor;
  self->_maskOutlineColor = v4;

  if ([(CRCameraReader *)self isViewLoaded])
  {
    alignmentLayer = [(CRCameraReader *)self alignmentLayer];
    [alignmentLayer propogateMaskColor:self->_maskColor outlineColor:self->_maskOutlineColor placementTextColor:self->_placementTextColor capturedTextColor:self->_capturedTextColor];
  }
}

- (void)aetPlacementTextColor:(id)color
{
  colorCopy = color;
  v4 = [colorCopy copy];
  placementTextColor = self->_placementTextColor;
  self->_placementTextColor = v4;

  if ([(CRCameraReader *)self isViewLoaded])
  {
    alignmentLayer = [(CRCameraReader *)self alignmentLayer];
    [alignmentLayer propogateMaskColor:self->_maskColor outlineColor:self->_maskOutlineColor placementTextColor:self->_placementTextColor capturedTextColor:self->_capturedTextColor];
  }
}

- (void)setCapturedTextColor:(id)color
{
  colorCopy = color;
  v4 = [colorCopy copy];
  capturedTextColor = self->_capturedTextColor;
  self->_capturedTextColor = v4;

  if ([(CRCameraReader *)self isViewLoaded])
  {
    alignmentLayer = [(CRCameraReader *)self alignmentLayer];
    [alignmentLayer propogateMaskColor:self->_maskColor outlineColor:self->_maskOutlineColor placementTextColor:self->_placementTextColor capturedTextColor:self->_capturedTextColor];
  }
}

- (void)orientationDidChange:(id)change
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__CRCameraReader_orientationDidChange___block_invoke;
  v3[3] = &unk_278EAA5E8;
  v3[4] = self;
  cr_dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (__CVBuffer)createFastAccessPixelBufferWithSize:(CGSize)size videoFormat:(int)format
{
  FigCreatePixelBufferAttributesWithIOSurfaceSupport();
  FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
  CFRelease(0);
  return 0;
}

- (void)loadView
{
  v3 = +[CRInsights sharedInsights];
  [v3 attachNewContextToCurrentThreadWithCameraReader:self];

  v4 = objc_alloc(MEMORY[0x277D75D18]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v6 = [v4 initWithFrame:?];
  [(CRCameraReader *)self setView:v6];

  v7 = +[CRColor blackColor];
  view = [(CRCameraReader *)self view];
  [view setBackgroundColor:v7];

  v9 = +[CRInsights sharedInsights];
  if (v9)
  {
    v10 = +[CRInsights sharedInsights];
    v11 = [v10 allowOverrideWithKey:@"kCROverrideCaptureSessionManager" forResultFromBlock:&__block_literal_global_200];
  }

  else
  {
    v11 = objc_alloc_init(CRDefaultCaptureSessionManager);
    v10 = v11;
  }

  v12 = v11;
  [(CRCameraReader *)self setSessionManager:v11];
  if (v9)
  {
  }

  sessionManager = [(CRCameraReader *)self sessionManager];
  [sessionManager setCaptureSessionDelegate:self];

  sessionManager2 = [(CRCameraReader *)self sessionManager];
  [sessionManager2 setCaptureSessionMetadataDelegate:self];

  cameraPosition = [(CRCameraReader *)self cameraPosition];
  sessionManager3 = [(CRCameraReader *)self sessionManager];
  [sessionManager3 setCameraPosition:cameraPosition];

  whiteBalanceMode = [(CRCameraReader *)self whiteBalanceMode];
  sessionManager4 = [(CRCameraReader *)self sessionManager];
  [sessionManager4 setWhiteBalanceMode:whiteBalanceMode];

  focusMode = [(CRCameraReader *)self focusMode];
  sessionManager5 = [(CRCameraReader *)self sessionManager];
  [sessionManager5 setFocusMode:focusMode];

  exposureMode = [(CRCameraReader *)self exposureMode];
  sessionManager6 = [(CRCameraReader *)self sessionManager];
  [sessionManager6 setExposureMode:exposureMode];

  torchMode = [(CRCameraReader *)self torchMode];
  sessionManager7 = [(CRCameraReader *)self sessionManager];
  [sessionManager7 setTorchMode:torchMode];

  v25 = MEMORY[0x277CBEB98];
  outputObjectTypes = [(CRCameraReader *)self outputObjectTypes];
  v27 = [v25 setWithArray:outputObjectTypes];

  v28 = [v27 containsObject:@"CROutputTypeQRCode"];
  sessionManager8 = [(CRCameraReader *)self sessionManager];
  [sessionManager8 setEnableMetadataOutput:v28];

  if (([v27 containsObject:@"CROutputTypeQRCode"] & 1) != 0 || objc_msgSend(v27, "containsObject:", @"CROutputTypeHomeKitCode"))
  {
    sessionManager9 = [(CRCameraReader *)self sessionManager];
    [sessionManager9 setTargetFocusDistance:140];
  }

  else
  {
    sessionManager9 = [(CRCameraReader *)self sessionManager];
    [sessionManager9 setTargetFocusDistance:160];
  }

  cameraMode = [(CRCameraReader *)self cameraMode];
  sessionManager10 = [(CRCameraReader *)self sessionManager];
  [sessionManager10 setCameraMode:cameraMode];

  v33 = [v27 containsObject:@"CROutputTypeiTunesCode"];
  v34 = MEMORY[0x277CE59A8];
  if ((v33 & 1) == 0 && ([v27 containsObject:@"CROutputTypeHomeKitCode"] & 1) == 0)
  {
    sessionManager11 = [(CRCameraReader *)self sessionManager];
    [sessionManager11 setCameraMode:*v34];

    sessionManager12 = [(CRCameraReader *)self sessionManager];
    [sessionManager12 setCameraPosition:0];
  }

  sessionManager13 = [(CRCameraReader *)self sessionManager];
  enableMetadataOutput = [sessionManager13 enableMetadataOutput];

  if (enableMetadataOutput)
  {
    [(CRCameraReader *)self setCameraMode:*MEMORY[0x277CE5960]];
    cameraMode2 = [(CRCameraReader *)self cameraMode];
    sessionManager14 = [(CRCameraReader *)self sessionManager];
    [sessionManager14 setCameraMode:cameraMode2];
  }

  sessionManager15 = [(CRCameraReader *)self sessionManager];
  [sessionManager15 setupCameraSession];

  sessionManager16 = [(CRCameraReader *)self sessionManager];
  cameraMode3 = [sessionManager16 cameraMode];
  v44 = *v34;

  if (cameraMode3 == v44)
  {
    [(CRCameraReader *)self releaseCorrectedCardBuffer];
    [(CRCameraReader *)self createCorrectedCardBuffer];
  }

  view2 = [(CRCameraReader *)self view];
  layer = [view2 layer];
  sessionManager17 = [(CRCameraReader *)self sessionManager];
  previewLayer = [sessionManager17 previewLayer];
  [layer addSublayer:previewLayer];

  v49 = +[CRAlignmentLayer layer];
  [(CRCameraReader *)self setAlignmentLayer:v49];

  alignmentLayer = [(CRCameraReader *)self alignmentLayer];
  instructionLayer = [alignmentLayer instructionLayer];
  [instructionLayer setHidden:{-[CRCameraReader hidePlacementText](self, "hidePlacementText")}];

  view3 = [(CRCameraReader *)self view];
  layer2 = [view3 layer];
  alignmentLayer2 = [(CRCameraReader *)self alignmentLayer];
  [layer2 addSublayer:alignmentLayer2];

  alignmentLayer3 = [(CRCameraReader *)self alignmentLayer];
  [alignmentLayer3 setDelegate:self];

  if ([(CRCameraReader *)self showDiagnosticHUD])
  {
    v56 = +[DiagnosticHUDLayer layer];
    [(CRCameraReader *)self setDiagnosticHUDLayer:v56];

    view4 = [(CRCameraReader *)self view];
    layer3 = [view4 layer];
    diagnosticHUDLayer = [(CRCameraReader *)self diagnosticHUDLayer];
    [layer3 addSublayer:diagnosticHUDLayer];
  }

  v60 = *(MEMORY[0x277CD9DE8] + 48);
  v77 = *(MEMORY[0x277CD9DE8] + 32);
  v78 = v60;
  v79 = *(MEMORY[0x277CD9DE8] + 64);
  v80 = *(MEMORY[0x277CD9DE8] + 80);
  v61 = *(MEMORY[0x277CD9DE8] + 16);
  v75 = *MEMORY[0x277CD9DE8];
  v76 = v61;
  v62 = *(MEMORY[0x277CD9DE8] + 112);
  v73 = *(MEMORY[0x277CD9DE8] + 96);
  v74 = v62;
  view5 = [(CRCameraReader *)self view];
  layer4 = [view5 layer];
  v68[2] = v77;
  v68[3] = v78;
  v68[4] = v79;
  v68[0] = v75;
  v68[1] = v76;
  v69 = v80;
  v70 = 0xBF45D867C3ECE2A5;
  v71 = v73;
  v72 = v74;
  [layer4 setSublayerTransform:v68];

  v65 = objc_opt_new();
  [(CRCameraReader *)self setPreviousContactMatches:v65];

  processingQueue = [(CRCameraReader *)self processingQueue];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __26__CRCameraReader_loadView__block_invoke_2;
  v67[3] = &unk_278EAA5E8;
  v67[4] = self;
  cr_dispatch_async(processingQueue, v67);
}

CRDefaultCaptureSessionManager *__26__CRCameraReader_loadView__block_invoke()
{
  v0 = objc_alloc_init(CRDefaultCaptureSessionManager);

  return v0;
}

- (void)loadModels
{
  v3 = objc_alloc_init(CRMLEmbossedNumberModel);
  [(CRCameraReader *)self setEmbossedNumberModel:?];

  v4 = objc_alloc_init(CRMLEmbossedCardholderModel);
  [(CRCameraReader *)self setEmbossedCardholderModel:?];

  v5 = objc_alloc_init(CRMLEmbossedExpirationModel);
  [(CRCameraReader *)self setEmbossedExpirationModel:?];

  v6 = objc_alloc_init(CRMLFlatModel);
  [(CRCameraReader *)self setFlatPrintedModel:?];
}

- (void)viewDidLayoutSubviews
{
  sessionManager = [(CRCameraReader *)self sessionManager];
  previewLayer = [sessionManager previewLayer];
  superlayer = [previewLayer superlayer];
  [superlayer bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sessionManager2 = [(CRCameraReader *)self sessionManager];
  previewLayer2 = [sessionManager2 previewLayer];
  [previewLayer2 setFrame:{v6, v8, v10, v12}];

  alignmentLayer = [(CRCameraReader *)self alignmentLayer];
  superlayer2 = [alignmentLayer superlayer];
  [superlayer2 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  alignmentLayer2 = [(CRCameraReader *)self alignmentLayer];
  [alignmentLayer2 setFrame:{v17, v19, v21, v23}];

  diagnosticHUDLayer = [(CRCameraReader *)self diagnosticHUDLayer];
  superlayer3 = [diagnosticHUDLayer superlayer];
  [superlayer3 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  diagnosticHUDLayer2 = [(CRCameraReader *)self diagnosticHUDLayer];
  [diagnosticHUDLayer2 setFrame:{v27, v29, v31, v33}];

  sessionManager3 = [(CRCameraReader *)self sessionManager];
  view = [(CRCameraReader *)self view];
  window = [view window];
  windowScene = [window windowScene];
  [sessionManager3 setPreviewOrientation:{objc_msgSend(windowScene, "interfaceOrientation")}];

  alignmentLayer3 = [(CRCameraReader *)self alignmentLayer];
  [alignmentLayer3 setNeedsLayout];

  diagnosticHUDLayer3 = [(CRCameraReader *)self diagnosticHUDLayer];
  [diagnosticHUDLayer3 setNeedsLayout];
}

- (void)viewWillAppear:(BOOL)appear
{
  v21.receiver = self;
  v21.super_class = CRCameraReader;
  [(CRCameraReader *)&v21 viewWillAppear:appear];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [currentDevice beginGeneratingDeviceOrientationNotifications];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_orientationDidChange_ name:*MEMORY[0x277D76878] object:currentDevice];

  v6 = [[CRPollingTimer alloc] initWithTarget:self selector:sel_hideBoxLayer];
  [(CRCameraReader *)self setBoxLayerHideTimer:v6];

  if ([(CRCameraReader *)self isCaptureMode])
  {
    v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTapFrom_];
    [(CRCameraReader *)self setTapGestureRecognizer:v7];

    tapGestureRecognizer = [(CRCameraReader *)self tapGestureRecognizer];
    [tapGestureRecognizer setNumberOfTapsRequired:1];

    tapGestureRecognizer2 = [(CRCameraReader *)self tapGestureRecognizer];
    [tapGestureRecognizer2 setNumberOfTouchesRequired:1];

    view = [(CRCameraReader *)self view];
    tapGestureRecognizer3 = [(CRCameraReader *)self tapGestureRecognizer];
    [view addGestureRecognizer:tapGestureRecognizer3];
  }

  view2 = [(CRCameraReader *)self view];
  layer = [view2 layer];
  [layer setMasksToBounds:1];

  [(CRCameraReader *)self startSession];
  v14 = MEMORY[0x277CBEB98];
  outputObjectTypes = [(CRCameraReader *)self outputObjectTypes];
  v16 = [v14 setWithArray:outputObjectTypes];

  if ([v16 containsObject:@"CROutputTypeCreditCardName"])
  {
    if (![MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0])
    {
      v17 = objc_alloc_init(MEMORY[0x277CBDAB8]);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __33__CRCameraReader_viewWillAppear___block_invoke;
      v20[3] = &unk_278EAA630;
      v20[4] = self;
      [v17 requestAccessForEntityType:0 completionHandler:v20];
      goto LABEL_8;
    }

    if ([MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0] == 3)
    {
      v17 = dispatch_get_global_queue(0, 0);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __33__CRCameraReader_viewWillAppear___block_invoke_3;
      v19[3] = &unk_278EAA5E8;
      v19[4] = self;
      cr_dispatch_async(v17, v19);
LABEL_8:
    }
  }

  alignmentLayer = [(CRCameraReader *)self alignmentLayer];
  [alignmentLayer fadePlacementImage];
}

void __33__CRCameraReader_viewWillAppear___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __33__CRCameraReader_viewWillAppear___block_invoke_2;
    v4[3] = &unk_278EAA5E8;
    v4[4] = *(a1 + 32);
    cr_dispatch_async(v3, v4);
  }
}

void __33__CRCameraReader_viewWillAppear___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) contactsCache];

  if (!v2)
  {
    [*(a1 + 32) updateContactsCache:0];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:*(a1 + 32) selector:sel_updateContactsCache_ name:*MEMORY[0x277CBD140] object:0];
  }
}

void __33__CRCameraReader_viewWillAppear___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) contactsCache];

  if (!v2)
  {
    [*(a1 + 32) updateContactsCache:0];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:*(a1 + 32) selector:sel_updateContactsCache_ name:*MEMORY[0x277CBD140] object:0];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v10.receiver = self;
  v10.super_class = CRCameraReader;
  [(CRCameraReader *)&v10 viewDidDisappear:disappear];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76878] object:currentDevice];

  tapGestureRecognizer = [(CRCameraReader *)self tapGestureRecognizer];

  if (tapGestureRecognizer)
  {
    view = [(CRCameraReader *)self view];
    tapGestureRecognizer2 = [(CRCameraReader *)self tapGestureRecognizer];
    [view removeGestureRecognizer:tapGestureRecognizer2];

    [(CRCameraReader *)self setTapGestureRecognizer:0];
  }

  boxLayerHideTimer = [(CRCameraReader *)self boxLayerHideTimer];
  [boxLayerHideTimer invalidate];

  [(CRCameraReader *)self setBoxLayerHideTimer:0];
  [(CRCameraReader *)self stopSession];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = CRCameraReader;
  [(CRCameraReader *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__CRCameraReader_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_278EAA658;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v8];
}

void __69__CRCameraReader_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) view];
  v2 = [v10 window];

  v3 = *(a1 + 32);
  if (v2)
  {
    v11 = [v3 view];
    v4 = [v11 window];
    v5 = [v4 windowScene];
    v6 = [v5 interfaceOrientation];
  }

  else
  {
    v12 = [v3 parentViewController];
    v7 = [v12 view];
    v8 = [v7 window];

    if (!v8)
    {
      goto LABEL_7;
    }

    v11 = [*(a1 + 32) parentViewController];
    v4 = [v11 view];
    v5 = [v4 window];
    v9 = [v5 windowScene];
    v6 = [v9 interfaceOrientation];
  }

  if (v6)
  {
    v13 = [*(a1 + 32) sessionManager];
    [v13 setPreviewOrientation:v6];
  }

LABEL_7:
  v14 = [*(a1 + 32) alignmentLayer];
  [v14 setNeedsLayout];

  v15 = [*(a1 + 32) diagnosticHUDLayer];
  [v15 setNeedsLayout];
}

- (void)releaseCorrectedCardBuffer
{
  correctedCardBuffer = self->_correctedCardBuffer;
  if (correctedCardBuffer)
  {
    CVPixelBufferRelease(correctedCardBuffer);
    self->_correctedCardBuffer = 0;
  }
}

- (void)createCorrectedCardBuffer
{
  v3 = MEMORY[0x277CBEB98];
  outputObjectTypes = [(CRCameraReader *)self outputObjectTypes];
  v9 = [v3 setWithArray:outputObjectTypes];

  if (([v9 containsObject:@"CROutputTypeIDCardFront"] & 1) != 0 || objc_msgSend(v9, "containsObject:", @"CROutputTypeIDCardBack"))
  {
    outputCapturedImageWidth = [(CRCameraReader *)self outputCapturedImageWidth];
    outputCapturedImageHeight = [(CRCameraReader *)self outputCapturedImageHeight];
    sessionManager = [(CRCameraReader *)self sessionManager];
    v8 = -[CRCameraReader createFastAccessPixelBufferWithSize:videoFormat:](self, "createFastAccessPixelBufferWithSize:videoFormat:", [sessionManager targetVideoFormat], outputCapturedImageWidth, outputCapturedImageHeight);
  }

  else
  {
    sessionManager = [(CRCameraReader *)self sessionManager];
    v8 = -[CRCameraReader createFastAccessPixelBufferWithSize:videoFormat:](self, "createFastAccessPixelBufferWithSize:videoFormat:", [sessionManager targetVideoFormat], 768.0, 480.0);
  }

  self->_correctedCardBuffer = v8;
}

- (void)dealloc
{
  delegateQueue = self->_delegateQueue;
  self->_delegateQueue = 0;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBD140] object:0];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [currentDevice endGeneratingDeviceOrientationNotifications];

  [(CRCameraReader *)self removeLayerTree];
  [(CRCaptureSessionManager *)self->_sessionManager teardownCameraSession];
  sessionManager = self->_sessionManager;
  self->_sessionManager = 0;

  processingQueue = self->_processingQueue;
  self->_processingQueue = 0;

  [(CRCameraReader *)self releaseCorrectedCardBuffer];
  [(NSPointerArray *)self->_captureBuffer compact];
  while (1)
  {
    v8 = [(NSPointerArray *)self->_captureBuffer count];
    captureBuffer = self->_captureBuffer;
    if (!v8)
    {
      break;
    }

    v10 = [(NSPointerArray *)captureBuffer pointerAtIndex:0];
    [(NSPointerArray *)self->_captureBuffer removePointerAtIndex:0];
    CFRelease(v10);
  }

  self->_captureBuffer = 0;

  lastBuffer = self->_lastBuffer;
  if (lastBuffer)
  {
    CFRelease(lastBuffer);
    self->_lastBuffer = 0;
  }

  v12.receiver = self;
  v12.super_class = CRCameraReader;
  [(CRCameraReader *)&v12 dealloc];
}

- (void)setupInitialLayerConfiguration
{
  boxLayer = [(CRCameraReader *)self boxLayer];
  [boxLayer setHidden:1];

  alignmentLayer = [(CRCameraReader *)self alignmentLayer];
  [alignmentLayer resetLayer];

  hidePlacementText = [(CRCameraReader *)self hidePlacementText];
  alignmentLayer2 = [(CRCameraReader *)self alignmentLayer];
  instructionLayer = [alignmentLayer2 instructionLayer];
  [instructionLayer setHidden:hidePlacementText];

  boxLayer2 = [(CRCameraReader *)self boxLayer];

  if (boxLayer2)
  {
    boxLayer3 = [(CRCameraReader *)self boxLayer];
    [boxLayer3 removeFromSuperlayer];
  }

  v17 = +[CRBoxLayer layer];
  [(CRCameraReader *)self setBoxLayer:?];

  view = [(CRCameraReader *)self view];
  layer = [view layer];
  boxLayer4 = [(CRCameraReader *)self boxLayer];
  [layer addSublayer:boxLayer4];

  sessionManager = [(CRCameraReader *)self sessionManager];
  previewLayer = [sessionManager previewLayer];
  LODWORD(v9) = 1.0;
  [previewLayer setOpacity:v9];

  v10 = MEMORY[0x277CBEB98];
  outputObjectTypes = [(CRCameraReader *)self outputObjectTypes];
  v20 = [v10 setWithArray:outputObjectTypes];

  if (([v20 containsObject:@"CROutputTypeCreditCardNumber"] & 1) != 0 || (objc_msgSend(v20, "containsObject:", @"CROutputTypeCreditCardName") & 1) != 0 || (objc_msgSend(v20, "containsObject:", @"CRCameraReaderCreditCardExpirationDate") & 1) != 0 || (objc_msgSend(v20, "containsObject:", @"CROutputTypeIDCardFront") & 1) != 0 || objc_msgSend(v20, "containsObject:", @"CROutputTypeIDCardBack"))
  {
    alignmentLayer3 = [(CRCameraReader *)self alignmentLayer];
    [alignmentLayer3 setHidden:0];
  }

  else
  {
    alignmentLayer3 = [(CRCameraReader *)self alignmentLayer];
    [alignmentLayer3 setHidden:1];
  }
}

- (void)didReceiveMemoryWarning
{
  v6.receiver = self;
  v6.super_class = CRCameraReader;
  [(CRCameraReader *)&v6 didReceiveMemoryWarning];
  if ([(CRCameraReader *)self isViewLoaded])
  {
    view = [(CRCameraReader *)self view];
    window = [view window];

    if (!window)
    {
      [(CRCameraReader *)self setView:0];
      [(CRCameraReader *)self stopSession];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __41__CRCameraReader_didReceiveMemoryWarning__block_invoke;
      v5[3] = &unk_278EAA5E8;
      v5[4] = self;
      cr_dispatch_async(MEMORY[0x277D85CD0], v5);
    }
  }
}

uint64_t __41__CRCameraReader_didReceiveMemoryWarning__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionManager];
  [v2 teardownCameraSession];

  [*(a1 + 32) setSessionManager:0];
  v3 = *(a1 + 32);

  return [v3 releaseCorrectedCardBuffer];
}

- (void)toggleCamera
{
  sessionManager = [(CRCameraReader *)self sessionManager];

  if (sessionManager)
  {
    sessionManager2 = [(CRCameraReader *)self sessionManager];
    [sessionManager2 toggleCamera];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__CRCameraReader_toggleCamera__block_invoke;
    block[3] = &unk_278EAA5E8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)switchToCameraWithDeviceID:(id)d
{
  dCopy = d;
  sessionManager = [(CRCameraReader *)self sessionManager];
  [sessionManager switchToCameraWithDeviceID:dCopy];
}

- (int64_t)currentCameraIdentifier
{
  sessionManager = [(CRCameraReader *)self sessionManager];
  cameraPosition = [sessionManager cameraPosition];

  return cameraPosition;
}

- (id)currentDeviceID
{
  sessionManager = [(CRCameraReader *)self sessionManager];
  currentDeviceID = [sessionManager currentDeviceID];

  return currentDeviceID;
}

- (void)switchToCamera:(int64_t)camera
{
  sessionManager = [(CRCameraReader *)self sessionManager];

  if (sessionManager)
  {
    sessionManager2 = [(CRCameraReader *)self sessionManager];
    [sessionManager2 switchToCamera:camera];
  }
}

- (void)captureImage
{
  captureCount = [(CRCameraReader *)self captureCount];
  v4 = [(CRCameraReader *)self imagesToCapture]+ captureCount;

  [(CRCameraReader *)self setImagesToCapture:v4];
}

- (void)start
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __23__CRCameraReader_start__block_invoke;
  v2[3] = &unk_278EAA5E8;
  v2[4] = self;
  cr_dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __23__CRCameraReader_start__block_invoke(uint64_t a1)
{
  [*(a1 + 32) startSession];
  v2 = [*(a1 + 32) alignmentLayer];
  [v2 fadePlacementImage];
}

- (void)cancel
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __24__CRCameraReader_cancel__block_invoke;
  v2[3] = &unk_278EAA5E8;
  v2[4] = self;
  cr_dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __24__CRCameraReader_cancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopSession];
  v2 = *(a1 + 32);

  return [v2 sendDidCancel];
}

- (void)startSession
{
  [(CRCameraReader *)self setFoundCode:0];
  [(CRCameraReader *)self setIsQRCode:0];
  [(CRCameraReader *)self setPreviousCode:0];
  v13 = *MEMORY[0x277CC0898];
  v14 = *(MEMORY[0x277CC0898] + 16);
  [(CRCameraReader *)self setSessionStarted:&v13];
  v3 = MEMORY[0x277CC08A0];
  v13 = *MEMORY[0x277CC08A0];
  v14 = *(MEMORY[0x277CC08A0] + 16);
  [(CRCameraReader *)self setPointsFound:&v13];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [(CRCameraReader *)self setCodePresented:distantPast];

  [(CRCameraReader *)self setCodeInverted:0];
  [(CRCameraReader *)self setDidSendEndOrCancel:0];
  [(CRCameraReader *)self setDidSendFindBox:0];
  v13 = *v3;
  v14 = *(v3 + 2);
  [(CRCameraReader *)self setLastSendFindBox:&v13];
  [(CRCameraReader *)self setImagesToCapture:0];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(CRCameraReader *)self setCardNumberCounts:dictionary];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [(CRCameraReader *)self setCardholderCounts:dictionary2];

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  [(CRCameraReader *)self setExpirationDateCounts:dictionary3];

  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  [(CRCameraReader *)self setPinnedFoundInfo:dictionary4];

  v13 = *MEMORY[0x277CC08B0];
  v14 = *(MEMORY[0x277CC08B0] + 16);
  [(CRCameraReader *)self setLastFieldFoundTime:&v13];
  array = [MEMORY[0x277CBEB18] array];
  [(CRCameraReader *)self setNameCutRects:array];

  array2 = [MEMORY[0x277CBEB18] array];
  [(CRCameraReader *)self setDateCutRects:array2];

  array3 = [MEMORY[0x277CBEB18] array];
  [(CRCameraReader *)self setCardBlurValues:array3];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __30__CRCameraReader_startSession__block_invoke;
  v12[3] = &unk_278EAA5E8;
  v12[4] = self;
  cr_dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __30__CRCameraReader_startSession__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionManager];
  v3 = [v2 isRunning];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) setupInitialLayerConfiguration];
    v4 = [*(a1 + 32) sessionManager];
    [v4 startRunning];

    v5 = [*(a1 + 32) diagnosticHUDLayer];
    v6 = [*(a1 + 32) sessionManager];
    v7 = [v6 previewLayer];
    v8 = [*(a1 + 32) sessionManager];
    [v8 previewVisibleRect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [*(a1 + 32) sessionManager];
    [v17 cameraResolution];
    [v5 setPreviewLayer:v7 visibleRect:v10 cameraResolution:{v12, v14, v16, v18, v19}];

    v20 = [MEMORY[0x277D75128] sharedApplication];
    [*(a1 + 32) setPreviousIdleState:{objc_msgSend(v20, "isIdleTimerDisabled")}];

    v21 = [MEMORY[0x277D75128] sharedApplication];
    [v21 setIdleTimerDisabled:1];

    v22 = *(a1 + 32);

    [v22 setSessionIsStopping:0];
  }
}

- (void)stopSession
{
  [(CRCameraReader *)self setSessionIsStopping:1];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __29__CRCameraReader_stopSession__block_invoke;
  v3[3] = &unk_278EAA5E8;
  v3[4] = self;
  cr_dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __29__CRCameraReader_stopSession__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionManager];
  v3 = [v2 isRunning];

  if (v3)
  {
    v4 = [*(a1 + 32) sessionManager];
    [v4 stopRunning];

    v5 = [MEMORY[0x277D75128] sharedApplication];
    [v5 setIdleTimerDisabled:{objc_msgSend(*(a1 + 32), "previousIdleState")}];

    v6 = [*(a1 + 32) previousContactMatches];
    [v6 removeAllObjects];

    v7 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setCardNumberCounts:v7];

    v8 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setCardholderCounts:v8];

    v9 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setExpirationDateCounts:v9];
  }

  v10 = [*(a1 + 32) processingQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __29__CRCameraReader_stopSession__block_invoke_2;
  v11[3] = &unk_278EAA5E8;
  v11[4] = *(a1 + 32);
  cr_dispatch_async(v10, v11);
}

- (id)cameraIntrinsicDataForSampleBuffer:(opaqueCMSampleBuffer *)buffer width:(unint64_t)width height:(unint64_t)height
{
  v8 = CMGetAttachment(buffer, *MEMORY[0x277CC06B0], 0);
  v9 = CMGetAttachment(buffer, *MEMORY[0x277CF3F30], 0);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKey:*MEMORY[0x277CF5018]];
    v12 = v11;
    if (v8)
    {
      _ZF = 1;
    }

    else
    {
      _ZF = v11 == 0;
    }

    if (!_ZF)
    {
      [v11 floatValue];
      [v12 floatValue];
      LODWORD(v15) = 0;
      HIDWORD(v15) = v16;
      __asm { FMOV            V0.4S, #1.0 }

      *&_Q0 = (width + -1.0) * 0.5;
      *(&_Q0 + 1) = (height + -1.0) * 0.5;
      v22[1] = v15;
      v22[2] = _Q0;
      [0 getBytes:v22 length:48];
    }
  }

  else
  {
    v12 = 0;
  }

  return v8;
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  v7 = [CRInsights sharedInsights:output];
  [v7 attachNewContextToCurrentThreadWithCameraReader:self];

  memset(&v22, 0, sizeof(v22));
  CMSampleBufferGetPresentationTimeStamp(&v22, buffer);
  [(CRCameraReader *)self sessionStarted];
  if ((time.flags & 1) == 0)
  {
    time = v22;
    [(CRCameraReader *)self setSessionStarted:&time];
  }

  boxLayerHideTimer = [(CRCameraReader *)self boxLayerHideTimer];
  time = v22;
  [boxLayerHideTimer evalAtTime:&time];

  sessionManager = [(CRCameraReader *)self sessionManager];
  if ([sessionManager isAdjustingFocus])
  {
    v21 = v22;
    [(CRCameraReader *)self lastFieldFoundTime];
    lhs = v21;
    rhs = v20;
    CMTimeSubtract(&time, &lhs, &rhs);
    if (CMTimeGetSeconds(&time) <= 1.0)
    {
      goto LABEL_16;
    }
  }

  sessionIsStopping = [(CRCameraReader *)self sessionIsStopping];

  if (sessionIsStopping)
  {
    return;
  }

  if ([(CRCameraReader *)self isCaptureMode])
  {
    [(CRCameraReader *)self captureImageFromSampleBuffer:buffer];
    return;
  }

  v21 = v22;
  [(CRCameraReader *)self sessionStarted];
  lhs = v21;
  rhs = v20;
  CMTimeSubtract(&time, &lhs, &rhs);
  Seconds = CMTimeGetSeconds(&time);
  [(CRCameraReader *)self sessionTimeout];
  if (Seconds > v12)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __69__CRCameraReader_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke;
    v19[3] = &unk_278EAA5E8;
    v19[4] = self;
    cr_dispatch_async(MEMORY[0x277D85CD0], v19);
    return;
  }

  if ([(CRCameraReader *)self lastBuffer])
  {
    CFRelease(self->_lastBuffer);
    [(CRCameraReader *)self setLastBuffer:0];
  }

  [(CRCameraReader *)self setLastBuffer:CFRetain(buffer)];
  processingImage = [(CRCameraReader *)self processingImage];
  v14 = dispatch_semaphore_wait(processingImage, 0);

  if (!v14)
  {
    CFRetain(buffer);
    diagnosticHUDLayer = [(CRCameraReader *)self diagnosticHUDLayer];

    if (diagnosticHUDLayer)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __69__CRCameraReader_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke_2;
      v18[3] = &unk_278EAA5E8;
      v18[4] = self;
      cr_dispatch_async(MEMORY[0x277D85CD0], v18);
    }

    sessionManager = [(CRCameraReader *)self processingQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__CRCameraReader_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke_3;
    v16[3] = &unk_278EAA680;
    v16[4] = self;
    v16[5] = buffer;
    v17 = v22;
    cr_dispatch_async(sessionManager, v16);
LABEL_16:
  }
}

uint64_t __69__CRCameraReader_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopSession];
  v2 = *(a1 + 32);

  return [v2 sendDidEndWithErrorDomain:@"Core Recognition Error Domain" code:1 userInfo:0];
}

void __69__CRCameraReader_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) diagnosticHUDLayer];
  [v1 refreshFrameIndicator];
}

void __69__CRCameraReader_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke_3(uint64_t a1)
{
  v2 = +[CRInsights sharedInsights];
  [v2 notifySampleBufferProcessingStart:*(a1 + 40)];

  v3 = MEMORY[0x277CBEB98];
  v4 = [*(a1 + 32) outputObjectTypes];
  v5 = [v3 setWithArray:v4];

  if (([v5 containsObject:@"CROutputTypeiTunesCode"] & 1) == 0)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = [*(a1 + 32) outputObjectTypes];
    v8 = [v6 setWithArray:v7];
    v9 = [v8 containsObject:@"CROutputTypeHomeKitCode"];

    if (!v9)
    {
      if ([v5 containsObject:@"CROutputTypeCreditCardNumber"])
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(*(a1 + 40));
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        Width = CVPixelBufferGetWidth(ImageBuffer);
        v15 = [v12 cameraIntrinsicDataForSampleBuffer:v13 width:Width height:CVPixelBufferGetHeight(ImageBuffer)];
        v16 = *(a1 + 32);
        v17 = [v16 outputObjectTypes];
        CMSampleBufferGetPresentationTimeStamp(&v28, *(a1 + 40));
        [v16 findObjects:v17 inPixelBuffer:ImageBuffer cameraIntrinsicData:v15 frameTime:&v28];
      }

      else
      {
        if (([v5 containsObject:@"CROutputTypeIDCardFront"] & 1) == 0 && !objc_msgSend(v5, "containsObject:", @"CROutputTypeIDCardBack"))
        {
          if (![v5 containsObject:@"CROutputTypeCameraText"])
          {
            goto LABEL_11;
          }

          v25 = CMSampleBufferGetImageBuffer(*(a1 + 40));
          v10 = CMGetAttachment(*(a1 + 40), *MEMORY[0x277CF3F30], 0);
          v26 = *(a1 + 32);
          v27 = [v26 outputObjectTypes];
          v28 = *(a1 + 48);
          [v26 findOCRTextObjects:v27 inPixelBuffer:v25 attachments:v10 frameTime:&v28];

          goto LABEL_4;
        }

        v18 = CMSampleBufferGetImageBuffer(*(a1 + 40));
        v19 = *(a1 + 32);
        v20 = *(a1 + 40);
        v21 = CVPixelBufferGetWidth(v18);
        v15 = [v19 cameraIntrinsicDataForSampleBuffer:v20 width:v21 height:CVPixelBufferGetHeight(v18)];
        v22 = *(a1 + 32);
        v17 = [v22 outputObjectTypes];
        CMSampleBufferGetPresentationTimeStamp(&v28, *(a1 + 40));
        [v22 findIDObjects:v17 inPixelBuffer:v18 cameraIntrinsicData:v15 frameTime:&v28];
      }

      goto LABEL_11;
    }
  }

  [*(a1 + 32) findCodeInSampleBuffer:*(a1 + 40)];
  v10 = [*(a1 + 32) sessionManager];
  [v10 highISOAdjustExposure];
LABEL_4:

LABEL_11:
  v23 = [*(a1 + 32) processingImage];
  dispatch_semaphore_signal(v23);

  v24 = +[CRInsights sharedInsights];
  [v24 notifySampleBufferProcessingEnd:*(a1 + 40)];

  CFRelease(*(a1 + 40));
}

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  v51[1] = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v51[0] = *MEMORY[0x277CE5A80];
  v33 = objectsCopy;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
  if (objectsCopy && [objectsCopy count])
  {
    v37 = [objectsCopy objectAtIndex:0];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v32;
    v36 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (!v36)
    {
      goto LABEL_22;
    }

    v35 = *v46;
    while (1)
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v46 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v45 + 1) + 8 * i);
        type = [v37 type];
        LODWORD(v7) = [type isEqualToString:v7];

        if (v7)
        {
          stringValue = [v37 stringValue];
          if (([stringValue isEqualToString:&stru_2859636D0] & 1) == 0)
          {
            callbackDelegate = [(CRCameraReader *)self callbackDelegate];
            stringValue2 = [v37 stringValue];
            v12 = [callbackDelegate cameraReader:self shouldReturnQRCode:stringValue2];

            if (!v12)
            {
              continue;
            }

            stringValue = [MEMORY[0x277CBEB18] array];
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            corners = [v37 corners];
            v14 = [corners countByEnumeratingWithState:&v41 objects:v49 count:16];
            if (v14)
            {
              v15 = *v42;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v42 != v15)
                  {
                    objc_enumerationMutation(corners);
                  }

                  v17 = *(*(&v41 + 1) + 8 * j);
                  v18 = [v17 objectForKey:@"X"];
                  [v18 floatValue];
                  v20 = v19;
                  sessionManager = [(CRCameraReader *)self sessionManager];
                  [sessionManager cameraResolution];
                  v23 = v22;
                  v24 = [v17 objectForKey:@"Y"];
                  [v24 floatValue];
                  v26 = v25;
                  sessionManager2 = [(CRCameraReader *)self sessionManager];
                  [sessionManager2 cameraResolution];
                  v29 = v28;

                  v30 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v23 * v20, v29 * v26}];
                  [stringValue addObject:v30];
                }

                v14 = [corners countByEnumeratingWithState:&v41 objects:v49 count:16];
              }

              while (v14);
            }

            stringValue3 = [v37 stringValue];
            [(CRCameraReader *)self setFoundCode:stringValue3];

            [(CRCameraReader *)self setFoundPoints:stringValue];
            CMSampleBufferGetPresentationTimeStamp(&v40, [(CRCameraReader *)self lastBuffer]);
            v39 = v40;
            [(CRCameraReader *)self setPointsFound:&v39];
            [(CRCameraReader *)self setIsQRCode:1];
          }
        }
      }

      v36 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (!v36)
      {
LABEL_22:

        break;
      }
    }
  }
}

- (void)flashScreenAndPlayCaptureSound
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  view = [(CRCameraReader *)self view];
  window = [view window];
  [window frame];
  v6 = [v3 initWithFrame:?];

  v7 = +[CRColor whiteColor];
  [v6 setBackgroundColor:v7];

  view2 = [(CRCameraReader *)self view];
  window2 = [view2 window];
  [window2 addSubview:v6];

  v10 = MEMORY[0x277D75D18];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__CRCameraReader_flashScreenAndPlayCaptureSound__block_invoke;
  v14[3] = &unk_278EAA5E8;
  v15 = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__CRCameraReader_flashScreenAndPlayCaptureSound__block_invoke_2;
  v12[3] = &unk_278EAA6A8;
  v11 = v15;
  v13 = v11;
  [v10 animateWithDuration:v14 animations:v12 completion:1.0];
  AudioServicesPlaySystemSound(0x454u);
}

- (void)captureImageFromSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  CFRetain(buffer);
  captureBuffer = [(CRCameraReader *)self captureBuffer];
  [captureBuffer addPointer:buffer];

  captureBuffer2 = [(CRCameraReader *)self captureBuffer];
  v7 = [captureBuffer2 count];
  captureCount = [(CRCameraReader *)self captureCount];

  if (v7 > captureCount)
  {
    captureBuffer3 = [(CRCameraReader *)self captureBuffer];
    v10 = [captureBuffer3 pointerAtIndex:0];

    captureBuffer4 = [(CRCameraReader *)self captureBuffer];
    [captureBuffer4 removePointerAtIndex:0];

    CFRelease(v10);
  }

  if ([(CRCameraReader *)self imagesToCapture])
  {
    captureBuffer5 = [(CRCameraReader *)self captureBuffer];
    v13 = [captureBuffer5 copy];

    v14 = 0;
    v15 = MEMORY[0x277D85CD0];
    while ([v13 count] > v14)
    {
      v16 = [v13 pointerAtIndex:v14];
      v17 = v16;
      if (v16)
      {
        CFRetain(v16);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __47__CRCameraReader_captureImageFromSampleBuffer___block_invoke;
        v18[3] = &unk_278EAA6F8;
        v18[4] = self;
        v18[5] = v17;
        cr_dispatch_async(v15, v18);
      }

      ++v14;
    }
  }
}

void __47__CRCameraReader_captureImageFromSampleBuffer___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) imagesToCapture])
  {
    [*(a1 + 32) setImagesToCapture:{objc_msgSend(*(a1 + 32), "imagesToCapture") - 1}];
    ImageBuffer = CMSampleBufferGetImageBuffer(*(a1 + 40));
    CVPixelBufferLockBaseAddress(ImageBuffer, 0);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(ImageBuffer, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(ImageBuffer, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(ImageBuffer, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(ImageBuffer, 0);
    v7 = CMGetAttachment(*(a1 + 40), *MEMORY[0x277CF3F30], 0);
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = [v8 generateStringFromDate:v9];

    v11 = [v10 stringByAppendingPathExtension:@"tif"];
    v24 = BaseAddressOfPlane;
    v25 = HeightOfPlane;
    v26 = WidthOfPlane;
    v27 = BytesPerRowOfPlane;
    writeBuffer();
    v12 = [*(a1 + 32) configUseJPEGForColor];
    v13 = @"jpg";
    if (!v12)
    {
      v13 = @"tif";
    }

    v14 = v13;
    v15 = [v10 stringByAppendingString:@"Color"];
    v16 = [v15 stringByAppendingPathExtension:v14];
    writeBufferWithFullColor();

    v17 = [*(a1 + 32) callbackDelegate];
    if (v17)
    {
      v18 = [*(a1 + 32) callbackDelegate];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v11 forKey:@"PNGFileName"];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __47__CRCameraReader_captureImageFromSampleBuffer___block_invoke_2;
        v22[3] = &unk_278EAA6D0;
        v22[4] = *(a1 + 32);
        v23 = v20;
        v21 = v20;
        cr_dispatch_async(MEMORY[0x277D85CD0], v22);
      }
    }

    CVPixelBufferUnlockBaseAddress(ImageBuffer, 0);
  }

  CFRelease(*(a1 + 40));
}

void __47__CRCameraReader_captureImageFromSampleBuffer___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) flashScreenAndPlayCaptureSound];
  v2 = [*(a1 + 32) callbackDelegate];
  [v2 cameraReader:*(a1 + 32) didWriteToFile:*(a1 + 40)];
}

- (void)findCodeInSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v90 = *MEMORY[0x277D85DE8];
  memset(&v86, 0, sizeof(v86));
  CMSampleBufferGetPresentationTimeStamp(&v86, buffer);
  pixelBuffer = CMSampleBufferGetImageBuffer(buffer);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  if (WidthOfPlane)
  {
    if (HeightOfPlane)
    {
      v7 = BytesPerRowOfPlane;
      if (!CVPixelBufferLockBaseAddress(pixelBuffer, 0))
      {
        CFRetain(buffer);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
        foundCode = [(CRCameraReader *)self foundCode];
        v59 = foundCode != 0;

        v10 = objc_opt_class();
        time.value = BaseAddressOfPlane;
        *&time.timescale = HeightOfPlane;
        time.epoch = WidthOfPlane;
        v85 = v7;
        outputObjectTypes = [(CRCameraReader *)self outputObjectTypes];
        v60 = [v10 findCodeInImage:&time maxStage:v59 outputObjectTypes:outputObjectTypes];

        v12 = [v60 objectForKey:@"boxPoints"];
        v61 = [v60 objectForKey:@"code"];
        v13 = [v60 objectForKey:@"inverted"];
        bOOLValue = [v13 BOOLValue];

        v14 = [v60 objectForKey:@"accepted"];
        bOOLValue2 = [v14 BOOLValue];

        array = [MEMORY[0x277CBEB18] array];
        sessionManager = [(CRCameraReader *)self sessionManager];
        previewLayer = [sessionManager previewLayer];
        [previewLayer bounds];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        if (![(CRCameraReader *)self isQRCode]|| ([(CRCameraReader *)self foundCode], v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 == 0, v26, v27))
        {
          foundPoints = v12;
        }

        else
        {
          foundCode2 = [(CRCameraReader *)self foundCode];

          foundCode3 = [(CRCameraReader *)self foundCode];
          [(CRCameraReader *)self setPreviousCode:foundCode3];

          foundPoints = [(CRCameraReader *)self foundPoints];

          v83[0] = MEMORY[0x277D85DD0];
          v83[1] = 3221225472;
          v83[2] = __41__CRCameraReader_findCodeInSampleBuffer___block_invoke;
          v83[3] = &unk_278EAA5E8;
          v83[4] = self;
          cr_dispatch_async(MEMORY[0x277D85CD0], v83);
          bOOLValue2 = 1;
          v61 = foundCode2;
          LODWORD(v59) = 1;
        }

        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        obj = foundPoints;
        v31 = [obj countByEnumeratingWithState:&v79 objects:v89 count:16];
        if (v31)
        {
          v32 = *v80;
          LOBYTE(v33) = 1;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v80 != v32)
              {
                objc_enumerationMutation(obj);
              }

              v35 = *(*(&v79 + 1) + 8 * i);
              sessionManager2 = [(CRCameraReader *)self sessionManager];
              [v35 CGPointValue];
              v38 = v37;
              v40 = v39;
              sessionManager3 = [(CRCameraReader *)self sessionManager];
              previewLayer2 = [sessionManager3 previewLayer];
              [sessionManager2 convertCameraPoint:previewLayer2 toLayer:{v38, v40}];
              v44 = v43;
              v46 = v45;

              v47 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v44, v46}];
              [array addObject:v47];

              if (v33)
              {
                v92.origin.x = v19;
                v92.origin.y = v21;
                v92.size.width = v23;
                v92.size.height = v25;
                v91.x = v44;
                v91.y = v46;
                v33 = CGRectContainsPoint(v92, v91);
              }

              else
              {
                v33 = 0;
              }
            }

            v31 = [obj countByEnumeratingWithState:&v79 objects:v89 count:16];
          }

          while (v31);
        }

        else
        {
          v33 = 1;
        }

        v48 = bOOLValue2 & v33;
        if ((bOOLValue2 & v33) == 1 && v61)
        {
          previousCode = [(CRCameraReader *)self previousCode];
          if (previousCode && (-[CRCameraReader previousCode](self, "previousCode"), v50 = objc_claimAutoreleasedReturnValue(), v51 = [v50 isEqualToString:v61], v50, previousCode, (v51 & 1) != 0))
          {
            v48 = 1;
          }

          else
          {
            [(CRCameraReader *)self setPreviousCode:v61];
            v48 = 0;
          }
        }

        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        CFRelease(buffer);
        if (v61)
        {
          v52 = v48;
        }

        else
        {
          v52 = 0;
        }

        if (v52 == 1)
        {
          [(CRCameraReader *)self stopSession];
        }

        if (obj)
        {
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __41__CRCameraReader_findCodeInSampleBuffer___block_invoke_2;
          v70[3] = &unk_278EAA720;
          v70[4] = self;
          v53 = obj;
          v75 = v86;
          v71 = v53;
          v72 = array;
          v76 = v48;
          v77 = bOOLValue;
          v78 = v52;
          v73 = v61;
          bufferCopy = buffer;
          cr_dispatch_async(MEMORY[0x277D85CD0], v70);
        }

        else
        {
          v69 = v86;
          [(CRCameraReader *)self pointsFound];
          lhs = v69;
          rhs = v68;
          CMTimeSubtract(&time, &lhs, &rhs);
          if (CMTimeGetSeconds(&time) > 0.3)
          {
            sessionManager4 = [(CRCameraReader *)self sessionManager];
            [sessionManager4 resetFocus];
          }

          [(CRCameraReader *)self setFoundPoints:0];
        }

        if (v59)
        {
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __41__CRCameraReader_findCodeInSampleBuffer___block_invoke_3;
          v66[3] = &unk_278EAA748;
          v66[4] = self;
          v67 = v86;
          cr_dispatch_async(MEMORY[0x277D85CD0], v66);
        }

        diagnosticHUDLayer = [(CRCameraReader *)self diagnosticHUDLayer];
        v56 = diagnosticHUDLayer == 0;

        if (!v56)
        {
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __41__CRCameraReader_findCodeInSampleBuffer___block_invoke_4;
          v65[3] = &unk_278EAA5E8;
          v65[4] = self;
          cr_dispatch_async(MEMORY[0x277D85CD0], v65);
        }
      }
    }
  }
}

void __41__CRCameraReader_findCodeInSampleBuffer___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) boxLayer];
  [v1 setFrameRatio:1.0];
}

void __41__CRCameraReader_findCodeInSampleBuffer___block_invoke_2(uint64_t a1)
{
  v126 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) foundPoints];

  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = 0;
  do
  {
    v4 = [*(a1 + 32) foundPoints];
    v5 = [v4 objectAtIndex:v3];
    [v5 CGPointValue];
    v7 = v6;
    v9 = v8;

    v10 = [*(a1 + 40) objectAtIndex:v3];
    [v10 CGPointValue];
    v12 = v11;
    v14 = v13;

    v15 = sqrt((v12 - v7) * (v12 - v7) + (v14 - v9) * (v14 - v9));
  }

  while (v15 <= 20.0 && v3++ < 3);
  if (v15 <= 20.0)
  {
    v119 = *(a1 + 72);
    v17 = *(a1 + 32);
    if (v17)
    {
      [v17 pointsFound];
    }

    else
    {
      memset(&v118, 0, sizeof(v118));
    }

    lhs = v119;
    rhs = v118;
    CMTimeSubtract(time, &lhs, &rhs);
    if (CMTimeGetSeconds(time) > 3.0)
    {
      [*(a1 + 32) stopSession];
      [*(a1 + 32) sendDidEndWithErrorDomain:@"Core Recognition Error Domain" code:1 userInfo:0];
    }
  }

  else
  {
LABEL_11:
    [*(a1 + 32) setFoundPoints:*(a1 + 40)];
    *time = *(a1 + 72);
    *&time[16] = *(a1 + 88);
    [*(a1 + 32) setPointsFound:time];
  }

  v18 = [*(a1 + 32) diagnosticHUDLayer];
  [v18 setBoxPoints:*(a1 + 48)];

  v19 = [*(a1 + 32) boxLayer];
  [v19 positionForCodeBoxPoints:*(a1 + 48)];

  v20 = [*(a1 + 32) boxLayer];
  [v20 setHidden:0];

  v21 = *(a1 + 32);
  *time = *(a1 + 72);
  *&time[16] = *(a1 + 88);
  [v21 primeBoxLayerHideTimerWithFrameTime:time];
  if (*(a1 + 56) && (*(a1 + 96) & 1) != 0)
  {
    v22 = 0;
    v23 = &time[8];
    do
    {
      v24 = [*(a1 + 40) objectAtIndex:v22];
      [v24 CGPointValue];
      *(v23 - 1) = v25;
      *v23 = v26;

      ++v22;
      v23 += 2;
    }

    while (v22 != 4);
    v110 = *&time[16];
    v112 = *time;
    v108 = v124;
    if (*(a1 + 97))
    {
      v27 = -1;
    }

    else
    {
      v27 = 0;
    }

    v28 = [*(a1 + 32) sessionManager];
    v29 = [*(a1 + 32) sessionManager];
    v30 = [v29 previewLayer];
    __asm { FMOV            V2.2D, #0.5 }

    v111 = vmulq_f64(vaddq_f64(v110, v107), _Q2);
    v113 = vmulq_f64(vaddq_f64(v112, v108), _Q2);
    v109 = vdupq_n_s64(v27);
    [v28 convertCameraPoint:v30 toLayer:{vbslq_s8(v109, v111, v113)}];
    v36 = v35;
    v38 = v37;

    v39 = [*(a1 + 32) sessionManager];
    v40 = [*(a1 + 32) sessionManager];
    v41 = [v40 previewLayer];
    [v39 convertCameraPoint:v41 toLayer:{vbslq_s8(v109, v113, v111)}];
    v43 = v42;
    v45 = v44;

    if (v43 == v36)
    {
      v46 = dbl_24783F570[v45 > v38];
    }

    else
    {
      v59 = [*(a1 + 32) sessionManager];
      v60 = [v59 isPreviewVideoMirrored];
      v61 = atan((v45 - v38) / (v43 - v36));

      v62 = v43 < v36;
      if (v60)
      {
        v62 = v43 > v36;
      }

      if (v62)
      {
        v46 = v61 + 3.14159265;
      }

      else
      {
        v46 = v61;
      }
    }

    [*(a1 + 32) setFoundCode:*(a1 + 56)];
    [*(a1 + 32) setCodeInverted:fabs(v46) > 1.57079633];
    v63 = [*(a1 + 32) boxLayer];
    v64 = [*(a1 + 32) isQRCode];
    if (v64)
    {
      v65 = &stru_2859636D0;
    }

    else
    {
      v65 = [*(a1 + 32) foundCode];
    }

    v66 = [*(a1 + 32) configPresentCentered];
    if (v66)
    {
      v27 = [*(a1 + 32) sessionManager];
      v67 = [v27 isPreviewVideoMirrored];
    }

    else
    {
      v67 = 0;
    }

    if ([*(a1 + 32) configPresentCentered])
    {
      v68 = [*(a1 + 32) codeInverted];
    }

    else
    {
      v68 = 0;
    }

    [v63 setString:v65 mirrored:v67 inverted:v68];
    if (v66)
    {
    }

    if ((v64 & 1) == 0)
    {
    }

    v69 = objc_alloc_init(CRCameraReaderOutput);
    if (*(a1 + 98) != 1)
    {
      goto LABEL_67;
    }

    v70 = MEMORY[0x277CBEB98];
    v71 = [*(a1 + 32) outputObjectTypes];
    v72 = [v70 setWithArray:v71];
    if ([v72 containsObject:@"CROutputTypeQRCode"])
    {
      v73 = [*(a1 + 32) isQRCode];

      if (v73)
      {
        v74 = [(CRCameraReaderOutput *)v69 objectInternal];
        [v74 setType:@"CROutputTypeQRCode"];
        goto LABEL_66;
      }
    }

    else
    {
    }

    v75 = MEMORY[0x277CBEB98];
    v76 = [*(a1 + 32) outputObjectTypes];
    v77 = [v75 setWithArray:v76];
    v78 = [v77 containsObject:@"CROutputTypeiTunesCode"];

    if (v78)
    {
      [*(a1 + 32) findCodeInSampleBuffer:{objc_msgSend(*(a1 + 32), "lastBuffer")}];
      v74 = [(CRCameraReaderOutput *)v69 objectInternal];
      [v74 setType:@"CROutputTypeiTunesCode"];
    }

    else
    {
      v79 = MEMORY[0x277CBEB98];
      v80 = [*(a1 + 32) outputObjectTypes];
      v81 = [v79 setWithArray:v80];
      v82 = [v81 containsObject:@"CROutputTypeHomeKitCode"];

      if (v82)
      {
        [*(a1 + 32) findCodeInSampleBuffer:{objc_msgSend(*(a1 + 32), "lastBuffer")}];
        v74 = [(CRCameraReaderOutput *)v69 objectInternal];
        [v74 setType:@"CROutputTypeHomeKitCode"];
      }

      else
      {
        v83 = MEMORY[0x277CBEB98];
        v84 = [*(a1 + 32) outputObjectTypes];
        v85 = [v83 setWithArray:v84];
        v86 = [v85 containsObject:@"CROutputTypeCreditCardNumber"];

        if (v86)
        {
          ImageBuffer = CMSampleBufferGetImageBuffer([*(a1 + 32) lastBuffer]);
          v88 = *(a1 + 32);
          v89 = *(a1 + 64);
          Width = CVPixelBufferGetWidth(ImageBuffer);
          v74 = [v88 cameraIntrinsicDataForSampleBuffer:v89 width:Width height:CVPixelBufferGetHeight(ImageBuffer)];
          v91 = *(a1 + 32);
          v92 = [v91 outputObjectTypes];
          lhs = *(a1 + 72);
          [v91 findObjects:v92 inPixelBuffer:ImageBuffer cameraIntrinsicData:v74 frameTime:&lhs];

          v93 = [(CRCameraReaderOutput *)v69 objectInternal];
          [v93 setType:@"CROutputTypeCreditCardNumber"];
        }

        else
        {
          v94 = MEMORY[0x277CBEB98];
          v95 = [*(a1 + 32) outputObjectTypes];
          v96 = [v94 setWithArray:v95];
          v97 = [v96 containsObject:@"CROutputTypeCameraText"];

          if (!v97)
          {
LABEL_67:
            v101 = *(a1 + 40);
            v102 = [(CRCameraReaderOutput *)v69 objectInternal];
            [v102 setVertices:v101];

            v103 = [*(a1 + 32) foundCode];
            v104 = [(CRCameraReaderOutput *)v69 objectInternal];
            [v104 setStringValue:v103];

            v105 = *(a1 + 32);
            v106 = [MEMORY[0x277CBEA60] arrayWithObject:v69];
            [v105 sendDidEndWithInfo:v106];

            return;
          }

          v98 = CMSampleBufferGetImageBuffer([*(a1 + 32) lastBuffer]);
          v99 = [*(a1 + 32) lastBuffer];
          v74 = CMGetAttachment(v99, *MEMORY[0x277CF3F30], 0);
          v100 = *(a1 + 32);
          v93 = [v100 outputObjectTypes];
          lhs = *(a1 + 72);
          [v100 findOCRTextObjects:v93 inPixelBuffer:v98 attachments:v74 frameTime:&lhs];
        }
      }
    }

LABEL_66:

    goto LABEL_67;
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v47 = *(a1 + 48);
  v48 = [v47 countByEnumeratingWithState:&v114 objects:v125 count:16];
  if (v48)
  {
    v49 = 0;
    v50 = *v115;
    v51 = 0.0;
    v52 = 0.0;
    do
    {
      v53 = 0;
      v54 = v49 + 1;
      v49 += v48;
      do
      {
        if (*v115 != v50)
        {
          objc_enumerationMutation(v47);
        }

        [*(*(&v114 + 1) + 8 * v53) CGPointValue];
        v55 = 1.0 / v54;
        v52 = v52 * (1.0 - v55) + v56 * v55;
        v51 = v51 * (1.0 - v55) + v57 * v55;
        ++v53;
        ++v54;
      }

      while (v48 != v53);
      v48 = [v47 countByEnumeratingWithState:&v114 objects:v125 count:16];
    }

    while (v48);
  }

  else
  {
    v51 = 0.0;
    v52 = 0.0;
  }

  v58 = [*(a1 + 32) sessionManager];
  [v58 refocusOnPoint:{v52, v51}];
}

uint64_t __41__CRCameraReader_findCodeInSampleBuffer___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) pauseBoxLayerHideTimer];
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  return [v2 animatePresentCodeAtFrameTime:&v4];
}

void __41__CRCameraReader_findCodeInSampleBuffer___block_invoke_4(uint64_t a1)
{
  v21 = [*(a1 + 32) sessionManager];
  v2 = [v21 isFocusPointOfInterestSupported];

  v3 = 0.0;
  v4 = 0.0;
  if (v2)
  {
    v22 = [*(a1 + 32) sessionManager];
    [v22 focusPointOfInterest];
    v6 = v5;
    v8 = v7;

    v23 = [*(a1 + 32) sessionManager];
    [v23 cameraResolution];
    v10 = v9;
    v11 = [*(a1 + 32) sessionManager];
    [v11 cameraResolution];
    v13 = v12;

    v24 = [*(a1 + 32) sessionManager];
    v14 = [*(a1 + 32) sessionManager];
    v15 = [v14 previewLayer];
    [v24 convertCameraPoint:v15 toLayer:{v6 * v10, v8 * v13}];
    v3 = v16;
    v4 = v17;
  }

  v25 = [*(a1 + 32) diagnosticHUDLayer];
  v18 = [*(a1 + 32) sessionManager];
  v19 = [v18 isAdjustingFocus];
  v20 = [*(a1 + 32) sessionManager];
  [v25 setAdjustingFocus:v19 pointOfInterestSupported:objc_msgSend(v20 focusPoint:{"isFocusPointOfInterestSupported"), v3, v4}];
}

+ (id)extractCardImage:(id)image fromPixelBuffer:(__CVBuffer *)buffer withCardBuffer:(__CVBuffer *)cardBuffer cameraIntrinsicData:(id)data
{
  v6 = [self extractCardImage:image fromPixelBuffer:buffer withCardBuffer:cardBuffer withPoints:0 cameraIntrinsicData:data];

  return v6;
}

+ (id)extractCardImage:(id)image fromPixelBuffer:(__CVBuffer *)buffer withCardBuffer:(__CVBuffer *)cardBuffer withPoints:(id)points cameraIntrinsicData:(id)data
{
  v7 = [self extractCardImage:image fromPixelBuffer:buffer withCardBuffer:cardBuffer withPoints:points cameraIntrinsicData:data padding:1 inputOrientation:0.0];

  return v7;
}

+ (id)extractCardImage:(id)image fromPixelBuffer:(__CVBuffer *)buffer withCardBuffer:(__CVBuffer *)cardBuffer withPoints:(id)points cameraIntrinsicData:(id)data padding:(float)padding inputOrientation:(int)orientation
{
  v9 = [self extractCardImage:image fromPixelBuffer:buffer withCardBuffer:cardBuffer withPoints:points cameraIntrinsicData:data padding:*&orientation inputOrientation:0 unpaddedCardImage:?];

  return v9;
}

+ (id)extractCardImage:(id)image fromPixelBuffer:(__CVBuffer *)buffer withCardBuffer:(__CVBuffer *)cardBuffer withPoints:(id)points cameraIntrinsicData:(id)data padding:(float)padding inputOrientation:(int)orientation unpaddedCardImage:(id *)self0
{
  v18 = *&orientation;
  v165 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  pointsCopy = points;
  dataCopy = data;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v23 = [standardUserDefaults BOOLForKey:@"com.apple.CoreRecognition.enable_vn_2_rect_detector"];

  v24 = CMCopyDictionaryOfAttachments(*MEMORY[0x277CBECE8], buffer, 1u);
  v25 = [objc_alloc(MEMORY[0x277CBF758]) initWithCVPixelBuffer:buffer options:v24];
  v148 = [v25 imageByApplyingOrientation:v18];

  if (v24)
  {
    CFRelease(v24);
  }

  if (pointsCopy)
  {
    v26 = [pointsCopy objectAtIndex:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v28 = [pointsCopy objectAtIndex:0];
    if (isKindOfClass)
    {
      v29 = NSPointFromString(v28);
      y = v29.y;
      v160 = v29;

      v30 = [pointsCopy objectAtIndex:1];
      v31 = NSPointFromString(v30);
      v32 = v31.y;
      v161.x = v31.x;

      v33 = [pointsCopy objectAtIndex:2];
      v34 = NSPointFromString(v33);
      v35 = v34.y;
      v162.x = v34.x;

      v36 = [pointsCopy objectAtIndex:3];
      v39 = NSPointFromString(v36);
      v38 = v39.y;
      x = v39.x;
    }

    else
    {
      [(NSString *)v28 CGPointValue];
      y = v46;
      v160.x = v47;
      v160.y = v46;

      v48 = [pointsCopy objectAtIndex:1];
      [v48 CGPointValue];
      v32 = v49;
      v161.x = v50;
      v161.y = v49;

      v51 = [pointsCopy objectAtIndex:2];
      [v51 CGPointValue];
      v35 = v52;
      v162.x = v53;
      v162.y = v52;

      v36 = [pointsCopy objectAtIndex:3];
      [(NSString *)v36 CGPointValue];
    }

    v54 = v38;
    v163.x = x;

    [v148 extent];
    v160.y = v55 - y;
    [v148 extent];
    v161.y = v56 - v32;
    [v148 extent];
    v162.y = v57 - v35;
    [v148 extent];
    v163.y = v58 - v54;
    v157 = v161;
    v158 = v160;
    v155 = v162;
    v156 = v163;
    v11 = rectFromPoints(&v160);
    v12 = v59;
    v13 = v60;
    v14 = v61;
    [v148 extent];
    v173.origin.x = v11;
    v173.origin.y = v12;
    v173.size.width = v13;
    v173.size.height = v14;
    v62 = CGRectContainsRect(v167, v173);
    v63 = MEMORY[0x277CBEA60];
    v64 = NSStringFromPoint(v158);
    v65 = NSStringFromPoint(v157);
    v66 = NSStringFromPoint(v155);
    v67 = NSStringFromPoint(v156);
    v147 = [v63 arrayWithObjects:{v64, v65, v66, v67, 0}];

    if (v62)
    {
      goto LABEL_34;
    }

LABEL_39:
    v106 = 0;
    goto LABEL_63;
  }

  v136 = objc_opt_new();
  v40 = objc_alloc_init(MEMORY[0x277CE2CB0]);
  LODWORD(v41) = 15.0;
  [v40 setQuadratureTolerance:v41];
  LODWORD(v42) = 1045220557;
  [v40 setMinimumSize:v42];
  [v40 setMinimumConfidence:0.0];
  [v40 setMaximumObservations:1];
  if (dataCopy)
  {
    [v136 setObject:dataCopy forKey:*MEMORY[0x277CE3038]];
    LODWORD(v44) = 1058724538;
    [v40 setMinimumAspectRatio:v44];
    LODWORD(v45) = 1059570110;
  }

  else
  {
    LODWORD(v43) = 1058407449;
    [v40 setMinimumAspectRatio:v43];
    LODWORD(v45) = 1059887199;
  }

  [v40 setMaximumAspectRatio:v45];
  v134 = [objc_alloc(MEMORY[0x277CE2D50]) initWithCIImage:v148 options:v136];
  if ((v23 & 1) == 0)
  {
    [v40 setRequiredVersion:1];
  }

  v68 = [MEMORY[0x277CBEA60] arrayWithObject:v40];
  v154 = 0;
  [v134 performRequests:v68 error:&v154];
  v132 = v154;

  results = [v40 results];
  if ([results count])
  {
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    obj = results;
    v69 = [obj countByEnumeratingWithState:&v150 objects:v164 count:16];
    if (v69)
    {
      v147 = 0;
      v139 = 0;
      v70 = *v151;
      do
      {
        for (i = 0; i != v69; ++i)
        {
          if (*v151 != v70)
          {
            objc_enumerationMutation(obj);
          }

          v72 = *(*(&v150 + 1) + 8 * i);
          [v148 extent];
          v74 = v73;
          [v148 extent];
          v76 = v75;
          [v72 topLeft];
          v158.x = v74 * v77;
          v158.y = v76 * v78;
          [v72 topRight];
          v157.x = v74 * v79;
          v157.y = v76 * v80;
          [v72 bottomLeft];
          v156.x = v74 * v81;
          v156.y = v76 * v82;
          [v72 bottomRight];
          v155.x = v74 * v83;
          v155.y = v76 * v84;
          v160 = v158;
          v161 = v157;
          v162 = v155;
          v163 = v156;
          v11 = rectFromPoints(&v160);
          v12 = v85;
          v13 = v86;
          v14 = v87;
          v88 = MEMORY[0x277CBEA60];
          v89 = NSStringFromPoint(v158);
          v90 = NSStringFromPoint(v157);
          v91 = NSStringFromPoint(v155);
          v92 = NSStringFromPoint(v156);
          v93 = [v88 arrayWithObjects:{v89, v90, v91, v92, 0}];

          v147 = v93;
          y = v158.y;
          v17 = v158.x;
          v16 = v157.y;
          v15 = v157.x;
          v143 = v155.y;
          v144 = v155.x;
          v141 = v156.y;
          v142 = v156.x;
          if (padding > 0.0)
          {
            calculatePointsWithPaddingInCorrectedSpace(&v158.x, &v157.x, &v155.x, &v156.x, v11, v12, v13, v14, padding, [imageCopy width], objc_msgSend(imageCopy, "height"));
            v159[0] = v158;
            v159[1] = v157;
            v159[2] = v155;
            v159[3] = v156;
            v11 = rectFromPoints(v159);
            v12 = v94;
            v13 = v95;
            v14 = v96;
          }

          [v148 extent];
          if (CGRectContainsPoint(v168, v158))
          {
            [v148 extent];
            if (CGRectContainsPoint(v169, v157))
            {
              [v148 extent];
              if (CGRectContainsPoint(v170, v156))
              {
                [v148 extent];
                if (CGRectContainsPoint(v171, v155))
                {
                  [v148 extent];
                  v174.origin.x = v11;
                  v174.origin.y = v12;
                  v174.size.width = v13;
                  v174.size.height = v14;
                  v139 |= CGRectContainsRect(v172, v174);
                }
              }
            }
          }
        }

        v69 = [obj countByEnumeratingWithState:&v150 objects:v164 count:16];
      }

      while (v69);
    }

    else
    {
      v147 = 0;
      LOBYTE(v139) = 0;
    }
  }

  else
  {
    v147 = 0;
    LOBYTE(v139) = 0;
  }

  if ((v139 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_34:
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v98 = [v148 imageByCroppingToRect:{v11, v12, v13, v14}];
  v99 = [CRCameraReader perspectiveCorrectedImage:v98 p1:v158 p2:v157 p3:v155 p4:v156];
  if (cardImage)
  {
    *cardImage = [CRCameraReader perspectiveCorrectedImage:v98 p1:v17 p2:y p3:v15 p4:v16, v144, v143, v142, v141];
  }

  [v99 extent];
  v101 = v100;
  [v148 extent];
  if (v101 <= v102)
  {
    [v99 extent];
    v104 = v103;
    [v148 extent];
    if (v104 <= v105)
    {
      [v99 extent];
      v108 = v107;
      [v99 extent];
      if (v108 < v109)
      {
        v110 = [v99 imageByApplyingOrientation:6];

        v99 = v110;
      }

      if (!cardImage)
      {
        goto LABEL_49;
      }

      v111 = *cardImage;
      v112 = v111;
      *&v113 = padding;
      if (padding == 0.0)
      {
        v114 = v99;
        v115 = v99;
      }

      else
      {
        [v111 extent];
        v117 = v116;
        [v112 extent];
        if (v117 >= v118)
        {
LABEL_48:

LABEL_49:
          v119 = +[CRCameraReader scaledImage:width:height:](CRCameraReader, "scaledImage:width:height:", v99, [imageCopy width], objc_msgSend(imageCopy, "height"));
          v121 = v119;
          if (cardImage)
          {
            *&v120 = padding;
            if (padding == 0.0)
            {
              v122 = v119;
              v123 = v121;
            }

            else
            {
              v123 = +[CRCameraReader scaledImage:width:height:](CRCameraReader, "scaledImage:width:height:", *cardImage, [imageCopy width], objc_msgSend(imageCopy, "height"));
            }

            *cardImage = v123;
          }

          v124 = [MEMORY[0x277CBF740] contextWithOptions:0];
          [v124 render:v121 toCVPixelBuffer:cardBuffer bounds:DeviceRGB colorSpace:{0.0, 0.0, objc_msgSend(imageCopy, "width"), objc_msgSend(imageCopy, "height")}];
          CGColorSpaceRelease(DeviceRGB);
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(cardBuffer, 0);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(cardBuffer, 0);
          if (WidthOfPlane && HeightOfPlane && !CVPixelBufferLockBaseAddress(cardBuffer, 0))
          {
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(cardBuffer, 0);
            if (imageCopy)
            {
              [imageCopy vImage];
              v128 = v160.x;
              [imageCopy vImage];
              v129 = *(&v159[0] + 1);
              [imageCopy vImage];
              v130 = v149 * v129;
            }

            else
            {
              v128 = 0.0;
              v130 = 0;
            }

            memcpy(*&v128, BaseAddressOfPlane, v130);
            CVPixelBufferUnlockBaseAddress(cardBuffer, 0);
          }

          v106 = v147;

          goto LABEL_62;
        }

        v115 = [v112 imageByApplyingOrientation:6];
      }

      *cardImage = v115;
      goto LABEL_48;
    }
  }

  CFRelease(DeviceRGB);
  v106 = 0;
LABEL_62:

LABEL_63:

  return v106;
}

- (void)sendProvideOverlayObjects:(id)objects
{
  objectsCopy = objects;
  delegateQueue = [(CRCameraReader *)self delegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__CRCameraReader_sendProvideOverlayObjects___block_invoke;
  v7[3] = &unk_278EAA6D0;
  v7[4] = self;
  v6 = objectsCopy;
  v8 = v6;
  cr_dispatch_async(delegateQueue, v7);
}

uint64_t __44__CRCameraReader_sendProvideOverlayObjects___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) callbackDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v12 + 1) + 8 * v7);
          v9 = [*(a1 + 32) callbackDelegate];
          v10 = [v9 cameraReader:*(a1 + 32) provideOverlayTextForRecognizedObject:v8];
          [v8 setOverlayString:v10];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }

  return [*(a1 + 32) showTextDetectorObjects:{*(a1 + 40), v12}];
}

- (void)findOCRTextObjects:(id)objects inPixelBuffer:(__CVBuffer *)buffer attachments:(id)attachments frameTime:(id *)time
{
  v25[1] = *MEMORY[0x277D85DE8];
  CVPixelBufferRetain(buffer);
  ocrImageReader = [(CRCameraReader *)self ocrImageReader];
  v24 = *MEMORY[0x277D70038];
  v25[0] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v10 = [ocrImageReader resultsForPixelBuffer:buffer options:v9 error:0];

  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        v17 = [CRCameraReaderOutputCameraText alloc];
        v18 = [(CRCameraReaderOutput *)v17 initWithImageReaderOutput:v16, v19];
        [array addObject:v18];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  [(CRCameraReader *)self sendProvideOverlayObjects:array];
  CVPixelBufferRelease(buffer);
}

- (void)updatePinnedInfoFrameIndex
{
  pinnedFoundInfo = [(CRCameraReader *)self pinnedFoundInfo];
  v7 = [pinnedFoundInfo objectForKey:@"currentFrameIndex"];

  if (v7)
  {
    v4 = [v7 unsignedIntegerValue] + 1;
  }

  else
  {
    v4 = 0;
  }

  pinnedFoundInfo2 = [(CRCameraReader *)self pinnedFoundInfo];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  [pinnedFoundInfo2 setObject:v6 forKey:@"currentFrameIndex"];
}

- (void)setFirstTimeFrameIndexForPinnedField:(id)field
{
  v9 = [field stringByAppendingString:@"FirstPinningFrameIndex"];
  pinnedFoundInfo = [(CRCameraReader *)self pinnedFoundInfo];
  v5 = [pinnedFoundInfo objectForKey:v9];

  if (!v5)
  {
    pinnedFoundInfo2 = [(CRCameraReader *)self pinnedFoundInfo];
    v7 = [pinnedFoundInfo2 objectForKey:@"currentFrameIndex"];

    if (v7)
    {
      pinnedFoundInfo3 = [(CRCameraReader *)self pinnedFoundInfo];
      [pinnedFoundInfo3 setObject:v7 forKey:v9];
    }
  }
}

- (unint64_t)getFirstTimeFrameIndexForPinnedField:(id)field
{
  v4 = [field stringByAppendingString:@"FirstPinningFrameIndex"];
  pinnedFoundInfo = [(CRCameraReader *)self pinnedFoundInfo];
  v6 = [pinnedFoundInfo objectForKey:v4];

  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = -1;
  }

  return unsignedIntegerValue;
}

- (id)getCorrectedIDImageFromAuxiliaryPoints:(id)points fromPixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation unpaddedCardImage:(id *)image
{
  v7 = *&orientation;
  v92 = *MEMORY[0x277D85DE8];
  pointsCopy = points;
  v11 = pointsCopy;
  if (!pointsCopy || [pointsCopy count] != 4)
  {
    v59 = 0;
    goto LABEL_34;
  }

  v12 = CMCopyDictionaryOfAttachments(*MEMORY[0x277CBECE8], buffer, 1u);
  v13 = [objc_alloc(MEMORY[0x277CBF758]) initWithCVPixelBuffer:buffer options:v12];
  v14 = [v13 imageByApplyingOrientation:v7];

  if (v12)
  {
    CFRelease(v12);
  }

  v15 = [v11 objectAtIndexedSubscript:0];
  [v15 CGPointValue];
  v84 = v16;
  v85 = v17;

  v18 = [v11 objectAtIndexedSubscript:1];
  [v18 CGPointValue];
  v86 = v19;
  v87 = v20;

  v21 = [v11 objectAtIndexedSubscript:2];
  [v21 CGPointValue];
  v88 = v22;
  v89 = v23;

  v24 = [v11 objectAtIndexedSubscript:3];
  [v24 CGPointValue];
  v90 = v25;
  v91 = v26;

  v27 = rectFromPoints(&v84);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  [(CRCameraReader *)self borderPaddingIDCard];
  if (v34 > 0.0)
  {
    [(CRCameraReader *)self borderPaddingIDCard];
    calculatePointsWithPaddingInCorrectedSpace(&v84, &v86, &v88, &v90, v27, v29, v31, v33, v35, [(CRCameraReader *)self outputCapturedImageWidth], [(CRCameraReader *)self outputCapturedImageHeight]);
    v27 = rectFromPoints(&v84);
    v29 = v36;
    v31 = v37;
    v33 = v38;
  }

  [v14 extent];
  v95.origin.x = v27;
  v95.origin.y = v29;
  v95.size.width = v31;
  v95.size.height = v33;
  if (CGRectContainsRect(v94, v95))
  {
    v83 = [v14 imageByCroppingToRect:{v27, v29, v31, v33}];
    v39 = [CRCameraReader perspectiveCorrectedImage:v84 p1:v85 p2:v86 p3:v87 p4:v88, v89, v90, v91];
    if (image)
    {
      [(CRCameraReader *)self borderPaddingIDCard];
      if (v40 == 0.0)
      {
        v60 = v39;
        *image = v39;
      }

      else
      {
        v41 = [v11 objectAtIndexedSubscript:0];
        [v41 CGPointValue];
        v43 = v42;
        v45 = v44;
        v46 = [v11 objectAtIndexedSubscript:1];
        [v46 CGPointValue];
        v48 = v47;
        v50 = v49;
        v51 = [v11 objectAtIndexedSubscript:2];
        [v51 CGPointValue];
        v53 = v52;
        v55 = v54;
        v56 = [v11 objectAtIndexedSubscript:3];
        [v56 CGPointValue];
        *image = [CRCameraReader perspectiveCorrectedImage:v83 p1:v43 p2:v45 p3:v48 p4:v50, v53, v55, v57, v58];
      }
    }

    [v39 extent];
    v62 = v61;
    [v14 extent];
    if (v62 > v63 || ([v39 extent], v65 = v64, objc_msgSend(v14, "extent"), v65 > v66))
    {
      v59 = 0;
LABEL_32:

      goto LABEL_33;
    }

    [v39 extent];
    v68 = v67;
    [v39 extent];
    if (v68 < v69)
    {
      v70 = [v39 imageByApplyingOrientation:6];

      v39 = v70;
    }

    if (!image)
    {
LABEL_26:
      v78 = [CRCameraReader scaledImage:v39 width:[(CRCameraReader *)self outputCapturedImageWidth] height:[(CRCameraReader *)self outputCapturedImageHeight]];

      if (image)
      {
        [(CRCameraReader *)self borderPaddingIDCard];
        if (v79 == 0.0)
        {
          v80 = v78;
          v81 = v78;
        }

        else
        {
          v81 = [CRCameraReader scaledImage:*image width:[(CRCameraReader *)self outputCapturedImageWidth] height:[(CRCameraReader *)self outputCapturedImageHeight]];
        }

        *image = v81;
      }

      v39 = v78;
      v59 = v39;
      goto LABEL_32;
    }

    v71 = *image;
    [(CRCameraReader *)self borderPaddingIDCard];
    if (v72 == 0.0)
    {
      v73 = v39;
      v74 = v39;
    }

    else
    {
      [v71 extent];
      v76 = v75;
      [v71 extent];
      if (v76 >= v77)
      {
LABEL_25:

        goto LABEL_26;
      }

      v74 = [v71 imageByApplyingOrientation:6];
    }

    *image = v74;
    goto LABEL_25;
  }

  v59 = 0;
LABEL_33:

LABEL_34:

  return v59;
}

- (void)findIDObjects:(id)objects inPixelBuffer:(__CVBuffer *)buffer cameraIntrinsicData:(id)data frameTime:(id *)time
{
  v262 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v249 = [MEMORY[0x277CBEB98] setWithArray:objects];
  v251 = @"CRCameraReaderIDCardCapturePathAutomatic";
  CVPixelBufferGetWidth(buffer);
  CVPixelBufferGetHeight(buffer);
  rect_16 = [MEMORY[0x277CBEB18] array];
  array = [MEMORY[0x277CBEB18] array];
  v248 = [objc_alloc(MEMORY[0x277D70088]) initWithWidth:-[CRCameraReader outputCapturedImageWidth](self height:"outputCapturedImageWidth") colorSpace:{-[CRCameraReader outputCapturedImageHeight](self, "outputCapturedImageHeight"), 0}];
  sessionManager = [(CRCameraReader *)self sessionManager];
  previewLayer = [sessionManager previewLayer];
  connection = [previewLayer connection];
  videoOrientation = [connection videoOrientation];

  switch(videoOrientation)
  {
    case 2:
      v245 = 0;
      v14 = 0;
      v15 = 3;
      break;
    case 3:
      v14 = 0;
      v250 = 8;
      v245 = 1;
      goto LABEL_9;
    case 4:
      v245 = 0;
      v250 = 6;
      v14 = 1;
      goto LABEL_9;
    default:
      v245 = 0;
      v14 = 0;
      v15 = 1;
      break;
  }

  v250 = v15;
LABEL_9:
  v16 = +[CRInsights sharedInsights];
  v244 = v14;
  if (v16)
  {
    v17 = +[CRInsights sharedInsights];
    v18 = [v17 allowOverrideWithKey:@"boxPoints" forValue:0];
  }

  else
  {
    v18 = 0;
  }

  callbackDelegate = [(CRCameraReader *)self callbackDelegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    callbackDelegate2 = [(CRCameraReader *)self callbackDelegate];
    v22 = [callbackDelegate2 cameraReader:self auxiliaryIDCornerDetection:buffer];

    enableUnpaddedIDCapture = [(CRCameraReader *)self enableUnpaddedIDCapture];
    v24 = enableUnpaddedIDCapture;
    if (enableUnpaddedIDCapture)
    {
      v25 = &v260;
    }

    else
    {
      v25 = 0;
    }

    if (enableUnpaddedIDCapture)
    {
      v260 = 0;
    }

    v26 = [(CRCameraReader *)self getCorrectedIDImageFromAuxiliaryPoints:v22 fromPixelBuffer:buffer orientation:v250 unpaddedCardImage:v25];
    v27 = v26;
    if (v24)
    {
      v28 = v260;
      if (!v27)
      {
        v246 = v28;
LABEL_41:

        goto LABEL_42;
      }

      if (v28)
      {
        v246 = v28;
        rect = [CRCameraReader platformImageFromCIImage:?];
      }

      else
      {
        v246 = 0;
        rect = 0;
      }
    }

    else
    {
      v246 = 0;
      rect = 0;
      if (!v26)
      {
        goto LABEL_41;
      }
    }

    rect_8 = v27;
    v37 = [CRCameraReader platformImageFromCIImage:v27];
    for (i = 0; i != 4; ++i)
    {
      v39 = [v22 objectAtIndexedSubscript:i];
      [v39 CGPointValue];

      normalizedPointForSize();
      v40 = NSStringFromPoint(v263);
      [array addObject:v40];
    }

    sessionManager2 = [(CRCameraReader *)self sessionManager];
    alignmentLayer = [(CRCameraReader *)self alignmentLayer];
    [alignmentLayer alignmentRect];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    alignmentLayer2 = [(CRCameraReader *)self alignmentLayer];
    [sessionManager2 convertCameraRect:alignmentLayer2 fromLayer:{v44, v46, v48, v50}];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;

    v281.origin.x = v53;
    v281.origin.y = v55;
    v281.size.width = v57;
    v281.size.height = v59;
    CGRectIntegral(v281);
    normalizedRectForSize();
    x = v264.x;
    y = v264.y;
    v63 = v62;
    v65 = v64;
    v66 = NSStringFromPoint(v264);
    [rect_16 addObject:v66];

    v67 = x + v63;
    v265.x = v67;
    v265.y = y;
    v68 = NSStringFromPoint(v265);
    [rect_16 addObject:v68];

    v69 = y + v65;
    v266.x = v67;
    v266.y = v69;
    v70 = NSStringFromPoint(v266);
    [rect_16 addObject:v70];

    v267.x = x;
    v267.y = v69;
    v71 = NSStringFromPoint(v267);
    [rect_16 addObject:v71];

    v72 = objc_alloc_init(CRCameraReaderOutputIDCard);
    objectInternal = [(CRCameraReaderOutput *)v72 objectInternal];
    [objectInternal setImageValue:v37];

    objectInternal2 = [(CRCameraReaderOutput *)v72 objectInternal];
    [objectInternal2 setUnpaddedImageValue:rect];

    objectInternal3 = [(CRCameraReaderOutput *)v72 objectInternal];
    [objectInternal3 setVertices:array];

    objectInternal4 = [(CRCameraReaderOutput *)v72 objectInternal];
    [objectInternal4 setTargetVertices:rect_16];

    objectInternal5 = [(CRCameraReaderOutput *)v72 objectInternal];
    [objectInternal5 setCapturePath:v251];

    if ([v249 containsObject:@"CROutputTypeIDCardFront"])
    {
      objectInternal6 = [(CRCameraReaderOutput *)v72 objectInternal];
      [objectInternal6 setType:@"CROutputTypeIDCardFront"];
    }

    else
    {
      objectInternal6 = [(CRCameraReaderOutput *)v72 objectInternal];
      [objectInternal6 setType:@"CROutputTypeIDCardBack"];
    }

    callbackDelegate3 = [(CRCameraReader *)self callbackDelegate];
    if (objc_opt_respondsToSelector())
    {
      callbackDelegate4 = [(CRCameraReader *)self callbackDelegate];
      v81 = [callbackDelegate4 cameraReader:self shouldReturnIDImage:v72];

      if (!v81)
      {

        v27 = rect_8;
        goto LABEL_41;
      }
    }

    else
    {
    }

    AudioServicesPlaySystemSound(0xFFFu);
    [(CRCameraReader *)self stopSession];
    v232 = [MEMORY[0x277CBEA60] arrayWithObject:v72];
    [(CRCameraReader *)self sendDidEndWithInfo:v232];

    [(CRCameraReader *)self sendDidEndAnimation];
    cardBlurValues = [(CRCameraReader *)self cardBlurValues];
    [cardBlurValues removeAllObjects];
    goto LABEL_71;
  }

  v29 = objc_opt_class();
  correctedCardBuffer = [(CRCameraReader *)self correctedCardBuffer];
  [(CRCameraReader *)self borderPaddingIDCard];
  v32 = v31;
  enableUnpaddedIDCapture2 = [(CRCameraReader *)self enableUnpaddedIDCapture];
  v35 = &v259;
  if (enableUnpaddedIDCapture2)
  {
    v259 = 0;
  }

  else
  {
    v35 = 0;
  }

  LODWORD(v34) = v32;
  v36 = [v29 extractCardImage:v248 fromPixelBuffer:buffer withCardBuffer:correctedCardBuffer withPoints:v18 cameraIntrinsicData:dataCopy padding:v250 inputOrientation:v34 unpaddedCardImage:v35];
  if (enableUnpaddedIDCapture2)
  {
    v246 = v259;
  }

  else
  {
    v246 = 0;
  }

  v22 = v18;
  v18 = v36;
LABEL_42:

  if (v18)
  {
    sessionManager3 = [(CRCameraReader *)self sessionManager];
    alignmentLayer3 = [(CRCameraReader *)self alignmentLayer];
    [alignmentLayer3 alignmentRect];
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    alignmentLayer4 = [(CRCameraReader *)self alignmentLayer];
    [sessionManager3 convertCameraRect:alignmentLayer4 fromLayer:{v85, v87, v89, v91}];
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v100 = v99;

    v282.origin.x = v94;
    v282.origin.y = v96;
    v282.size.width = v98;
    v282.size.height = v100;
    v283 = CGRectIntegral(v282);
    v101 = v283.origin.x;
    v102 = v283.origin.y;
    width = v283.size.width;
    height = v283.size.height;
    normalizedRectForSize();
    v105 = v268.x;
    v106 = v268.y;
    v108 = v107;
    v110 = v109;
    v111 = NSStringFromPoint(v268);
    [rect_16 addObject:v111];

    v112 = v105 + v108;
    v269.x = v112;
    v269.y = v106;
    v113 = NSStringFromPoint(v269);
    [rect_16 addObject:v113];

    v114 = v106 + v110;
    v270.x = v112;
    v270.y = v114;
    v115 = NSStringFromPoint(v270);
    [rect_16 addObject:v115];

    v271.x = v105;
    v271.y = v114;
    v116 = NSStringFromPoint(v271);
    [rect_16 addObject:v116];

    v284.origin.x = v101;
    v284.origin.y = v102;
    v284.size.width = width;
    v284.size.height = height;
    v285 = CGRectInset(v284, width * 0.1, height * 0.1);
    recta = v285.origin.y;
    v242 = v285.size.height;
    v243 = v285.size.width;
    v117 = v285.origin.x;
    v285.origin.x = v101;
    v285.origin.y = v102;
    v285.size.width = width;
    v285.size.height = height;
    v286 = CGRectInset(v285, width * -0.1, height * -0.1);
    rect_8a = v286.origin.y;
    v118 = v286.size.height;
    if (v245)
    {
      v119 = v286.size.width;
      v120 = v286.origin.x;
      v122 = v242;
      v121 = v243;
      v123 = v117;
    }

    else
    {
      v119 = v286.size.height;
      v118 = v286.size.width;
      v123 = recta;
      v120 = v286.origin.y;
      recta = v117;
      rect_8a = v286.origin.x;
      v121 = v242;
      v122 = v243;
    }

    if (v244)
    {
      v124 = CVPixelBufferGetHeight(buffer);
      v125 = CVPixelBufferGetHeight(buffer);
      v126 = v124 - (v121 + v123);
      v127 = v119 + v120;
      v123 = recta;
      v120 = rect_8a;
      v128 = v118;
      recta = v126;
      rect_8a = v125 - v127;
      v129 = v122;
    }

    else
    {
      v128 = v119;
      v119 = v118;
      v129 = v121;
      v121 = v122;
    }

    v130 = 0;
    v131 = 0;
    p_b = &v261.b;
    do
    {
      v133 = [v18 objectAtIndexedSubscript:v130];
      v134 = NSPointFromString(v133);
      *(p_b - 1) = v134;

      normalizedPointForSize();
      v135 = NSStringFromPoint(v272);
      [array addObject:v135];

      v287.origin.x = rect_8a;
      v287.origin.y = v120;
      v287.size.width = v119;
      v287.size.height = v128;
      if (!CGRectContainsPoint(v287, v134))
      {
        break;
      }

      v288.origin.x = recta;
      v288.origin.y = v123;
      v288.size.width = v121;
      v288.size.height = v129;
      if (CGRectContainsPoint(v288, v134))
      {
        break;
      }

      v131 = v130 > 2;
      p_b += 2;
      ++v130;
    }

    while (v130 != 4);
    if (v131)
    {
      rectFromPoints(&v261);
      if ((v136 * v137) >= (v243 * v242))
      {
        goto LABEL_62;
      }
    }
  }

  if ([(CRCameraReader *)self enableAltIDCardScan])
  {
    v138 = @"CRCameraReaderIDCardCapturePathFallback";

    v251 = v138;
    sessionManager4 = [(CRCameraReader *)self sessionManager];
    alignmentLayer5 = [(CRCameraReader *)self alignmentLayer];
    [alignmentLayer5 alignmentRect];
    v142 = v141;
    v144 = v143;
    v146 = v145;
    v148 = v147;
    alignmentLayer6 = [(CRCameraReader *)self alignmentLayer];
    [sessionManager4 convertCameraRect:alignmentLayer6 fromLayer:{v142, v144, v146, v148}];
    v151 = v150;
    v153 = v152;
    v155 = v154;
    v157 = v156;

    v289.origin.x = v151;
    v289.origin.y = v153;
    v289.size.width = v155;
    v289.size.height = v157;
    v290 = CGRectIntegral(v289);
    v158 = v290.origin.x;
    v159 = v290.origin.y;
    v160 = v290.size.width;
    v161 = v290.size.height;
    v162 = CVPixelBufferGetHeight(buffer);
    CVPixelBufferGetWidth([(CRCameraReader *)self correctedCardBuffer]);
    CVPixelBufferGetHeight([(CRCameraReader *)self correctedCardBuffer]);
    [(CRCameraReader *)self borderPaddingIDCard];
    rect_8b = v163;
    [(CRCameraReader *)self borderPaddingIDCard];
    rectb = v164;
    v165 = CVPixelBufferGetWidth(buffer);
    v166 = CVPixelBufferGetHeight(buffer);
    normalizedRectForSize();
    v167 = v273.x;
    v168 = v273.y;
    v170 = v169;
    v172 = v171;
    v173 = NSStringFromPoint(v273);
    [rect_16 addObject:v173];

    v174 = v167 + v170;
    v274.x = v174;
    v274.y = v168;
    v175 = NSStringFromPoint(v274);
    [rect_16 addObject:v175];

    v176 = v168 + v172;
    v275.x = v174;
    v275.y = v176;
    v177 = NSStringFromPoint(v275);
    [rect_16 addObject:v177];

    v276.x = v167;
    v276.y = v176;
    v178 = NSStringFromPoint(v276);
    [rect_16 addObject:v178];

    *&v179 = v161 * rect_8b;
    *&v180 = v160 * rectb;
    [CRCameraReader uniformPadRect:v158 widthPadding:v162 - (v161 + v159) heightPadding:v160 width:v161 height:v180, v179, v165, v166];
    [CRCameraReader aspectRatioPaddedRect:"aspectRatioPaddedRect:expectedWidth:height:orientation:" expectedWidth:v250 height:? orientation:?];
    v182 = v181;
    v184 = v183;
    v186 = v185;
    v188 = v187;
    normalizedRectForSize();
    v189 = v277.x;
    v190 = v277.y;
    v192 = v191;
    v194 = v193;
    v195 = NSStringFromPoint(v277);
    [array addObject:v195];

    v196 = v189 + v192;
    v278.x = v196;
    v278.y = v190;
    v197 = NSStringFromPoint(v278);
    [array addObject:v197];

    v198 = v190 + v194;
    v279.x = v196;
    v279.y = v198;
    v199 = NSStringFromPoint(v279);
    [array addObject:v199];

    v280.x = v189;
    v280.y = v198;
    v200 = NSStringFromPoint(v280);
    [array addObject:v200];

    v201 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:buffer];
    v202 = [v201 imageByCroppingToRect:{v182, v184, v186, v188}];

    CGAffineTransformMakeTranslation(&v261, -v182, -v184);
    v203 = [v202 imageByApplyingTransform:&v261];

    v204 = [v203 imageByApplyingOrientation:v250];

    v205 = [v204 imageByApplyingOrientation:6];

    v206 = CVPixelBufferGetWidth([(CRCameraReader *)self correctedCardBuffer]);
    [v205 extent];
    v208 = v207;
    v209 = CVPixelBufferGetHeight([(CRCameraReader *)self correctedCardBuffer]);
    [v205 extent];
    v211 = fmin(v206 / v208, v209 / v210);
    CGAffineTransformMakeScale(&v261, v211, v211);
    v22 = [v205 imageByApplyingTransform:&v261];

    v212 = [MEMORY[0x277CBF740] contextWithOptions:0];
    rect_8 = v212;
    if ([(CRCameraReader *)self enableManualIDCapture])
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      correctedCardBuffer2 = [(CRCameraReader *)self correctedCardBuffer];
      v215 = CVPixelBufferGetWidth([(CRCameraReader *)self correctedCardBuffer]);
      [(CRCameraReaderOutputIDCard *)v212 render:v22 toCVPixelBuffer:correctedCardBuffer2 bounds:DeviceRGB colorSpace:0.0, 0.0, v215, CVPixelBufferGetHeight([(CRCameraReader *)self correctedCardBuffer])];
      CGColorSpaceRelease(DeviceRGB);
      v37 = objc_alloc_init(CRCameraReaderOutputIDCard);
      rect = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:{-[CRCameraReader correctedCardBuffer](self, "correctedCardBuffer")}];
      v72 = [CRCameraReader platformImageFromCIImage:?];
      objectInternal7 = [(CRCameraReaderOutput *)v37 objectInternal];
      [objectInternal7 setImageValue:v72];

      objectInternal8 = [(CRCameraReaderOutput *)v37 objectInternal];
      [objectInternal8 setVertices:array];

      objectInternal9 = [(CRCameraReaderOutput *)v37 objectInternal];
      [objectInternal9 setTargetVertices:rect_16];

      objectInternal10 = [(CRCameraReaderOutput *)v37 objectInternal];
      [objectInternal10 setCapturePath:v251];

      if ([v249 containsObject:@"CROutputTypeIDCardFront"])
      {
        objectInternal11 = [(CRCameraReaderOutput *)v37 objectInternal];
        [objectInternal11 setType:@"CROutputTypeIDCardFront"];
      }

      else
      {
        objectInternal11 = [(CRCameraReaderOutput *)v37 objectInternal];
        [objectInternal11 setType:@"CROutputTypeIDCardBack"];
      }

      [(CRCameraReader *)self stopSession];
      v233 = [MEMORY[0x277CBEA60] arrayWithObject:v37];
      [(CRCameraReader *)self sendDidEndWithInfo:v233];

      [(CRCameraReader *)self sendDidEndAnimation];
      cardBlurValues = [(CRCameraReader *)self cardBlurValues];
      [cardBlurValues removeAllObjects];
      goto LABEL_71;
    }

    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277CBF6E0], *MEMORY[0x277CBF6D8], MEMORY[0x277CBEC28], *MEMORY[0x277CBF6F8], MEMORY[0x277CBEC38], *MEMORY[0x277CBF708], 0}];
    rect = [MEMORY[0x277CBF748] detectorOfType:*MEMORY[0x277CBF720] context:v212 options:v37];
    v72 = [rect featuresInImage:v22 options:v37];
    v221 = [v22 imageByApplyingOrientation:5];
    cardBlurValues = [rect featuresInImage:v221 options:v37];

    if (-[CRCameraReaderOutputIDCard count](v72, "count") > 2 || [cardBlurValues count] >= 3)
    {
      v223 = CGColorSpaceCreateDeviceRGB();
      correctedCardBuffer3 = [(CRCameraReader *)self correctedCardBuffer];
      v225 = CVPixelBufferGetWidth([(CRCameraReader *)self correctedCardBuffer]);
      [(CRCameraReaderOutputIDCard *)rect_8 render:v22 toCVPixelBuffer:correctedCardBuffer3 bounds:v223 colorSpace:0.0, 0.0, v225, CVPixelBufferGetHeight([(CRCameraReader *)self correctedCardBuffer])];
      CGColorSpaceRelease(v223);

LABEL_62:
      v22 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:{-[CRCameraReader correctedCardBuffer](self, "correctedCardBuffer")}];
      cardBlurValues2 = [(CRCameraReader *)self cardBlurValues];
      v227 = isLeastBlurryFrame(v22, cardBlurValues2, 10);

      if (!v227)
      {
LABEL_74:

        goto LABEL_75;
      }

      rect_8 = objc_alloc_init(CRCameraReaderOutputIDCard);
      if (v246)
      {
        v228 = [CRCameraReader platformImageFromCIImage:v246];
        objectInternal12 = [(CRCameraReaderOutput *)rect_8 objectInternal];
        [objectInternal12 setUnpaddedImageValue:v228];
      }

      v37 = [CRCameraReader platformImageFromCIImage:v22];
      objectInternal13 = [(CRCameraReaderOutput *)rect_8 objectInternal];
      [objectInternal13 setImageValue:v37];

      if ([v249 containsObject:@"CROutputTypeIDCardFront"])
      {
        objectInternal14 = [(CRCameraReaderOutput *)rect_8 objectInternal];
        [objectInternal14 setType:@"CROutputTypeIDCardFront"];
      }

      else
      {
        objectInternal14 = [(CRCameraReaderOutput *)rect_8 objectInternal];
        [objectInternal14 setType:@"CROutputTypeIDCardBack"];
      }

      objectInternal15 = [(CRCameraReaderOutput *)rect_8 objectInternal];
      [objectInternal15 setVertices:array];

      objectInternal16 = [(CRCameraReaderOutput *)rect_8 objectInternal];
      [objectInternal16 setTargetVertices:rect_16];

      objectInternal17 = [(CRCameraReaderOutput *)rect_8 objectInternal];
      [objectInternal17 setCapturePath:v251];

      callbackDelegate5 = [(CRCameraReader *)self callbackDelegate];
      if (objc_opt_respondsToSelector())
      {
        callbackDelegate6 = [(CRCameraReader *)self callbackDelegate];
        v240 = [callbackDelegate6 cameraReader:self shouldReturnIDImage:rect_8];

        if (!v240)
        {
          goto LABEL_73;
        }
      }

      else
      {
      }

      AudioServicesPlaySystemSound(0xFFFu);
      [(CRCameraReader *)self stopSession];
      v241 = [MEMORY[0x277CBEA60] arrayWithObject:rect_8];
      [(CRCameraReader *)self sendDidEndWithInfo:v241];

      [(CRCameraReader *)self sendDidEndAnimation];
      cardBlurValues3 = [(CRCameraReader *)self cardBlurValues];
      [cardBlurValues3 removeAllObjects];
LABEL_72:

LABEL_73:
      goto LABEL_74;
    }

LABEL_71:

    cardBlurValues3 = rect;
    goto LABEL_72;
  }

LABEL_75:
}

- (void)findObjects:(id)objects inPixelBuffer:(__CVBuffer *)buffer cameraIntrinsicData:(id)data frameTime:(id *)time
{
  v425 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v332 = objectsCopy;
  dataCopy = data;
  pixelBuffer = buffer;
  CVPixelBufferRetain(buffer);
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v12 = [standardUserDefaults BOOLForKey:@"com.apple.CoreRecognition.disable_fixedbox"];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  LODWORD(v363) = [standardUserDefaults2 BOOLForKey:@"com.apple.CoreRecognition.disable_freeformbox"];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v335 = [MEMORY[0x277CBEB98] setWithArray:objectsCopy];
  [(CRCameraReader *)self updatePinnedInfoFrameIndex];
  v334 = [MEMORY[0x277CBEB18] arrayWithObject:@"CROutputTypeCreditCardNumber"];
  pinnedFoundInfo = [(CRCameraReader *)self pinnedFoundInfo];
  v15 = [pinnedFoundInfo objectForKey:?];

  nameCutRects = [(CRCameraReader *)self nameCutRects];
  v357 = v12;
  if ([nameCutRects count])
  {
    nameCutRects2 = [(CRCameraReader *)self nameCutRects];
    v18 = [nameCutRects2 count] == 8;
  }

  else
  {
    v18 = 1;
  }

  dateCutRects = [(CRCameraReader *)self dateCutRects];
  if ([dateCutRects count])
  {
    dateCutRects2 = [(CRCameraReader *)self dateCutRects];
    v21 = [dateCutRects2 count] == 8;
  }

  else
  {
    v21 = 1;
  }

  pinnedFoundInfo2 = [(CRCameraReader *)self pinnedFoundInfo];
  v23 = [pinnedFoundInfo2 objectForKey:?];

  cardNumberCounts = [(CRCameraReader *)self cardNumberCounts];
  v25 = [cardNumberCounts count];

  if (v25)
  {
    pinnedFoundInfo3 = [(CRCameraReader *)self pinnedFoundInfo];
    v27 = [pinnedFoundInfo3 objectForKey:@"code"];

    if (v27)
    {
      if (!v15 && [v335 containsObject:@"CROutputTypeCreditCardName"])
      {
        if (!v23 && v18 != v21 && ((v21 ^ 1 | v18) & 1) != 0)
        {
LABEL_16:
          if ([v335 containsObject:@"CRCameraReaderCreditCardExpirationDate"] && (v15 || v18 == v21 || ((v18 ^ 1 | v21) & 1) == 0))
          {
            [v334 addObject:@"CRCameraReaderCreditCardExpirationDate"];
          }

          goto LABEL_22;
        }

        [v334 addObject:@"CROutputTypeCreditCardName"];
      }

      if (!v23)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    [v334 addObjectsFromArray:objectsCopy];
  }

LABEL_22:
  v28 = [objc_alloc(MEMORY[0x277D70088]) initWithWidth:768 height:480 colorSpace:0];
  v29 = +[CRInsights sharedInsights];
  if (v29)
  {
    v30 = +[CRInsights sharedInsights];
    v31 = [v30 allowOverrideWithKey:@"boxPoints" forValue:0];
  }

  else
  {
    v31 = 0;
  }

  v32 = [objc_opt_class() extractCardImage:v28 fromPixelBuffer:pixelBuffer withCardBuffer:-[CRCameraReader correctedCardBuffer](self withPoints:"correctedCardBuffer") cameraIntrinsicData:{v31, dataCopy}];

  v33 = +[CRInsights sharedInsights];
  v339 = v32;
  if (v33)
  {
    v34 = +[CRInsights sharedInsights];
    v35 = [v34 allowOverrideWithKey:@"CRInsightsCardImageFreeformLandscape" forValue:v28];

    v36 = v35;
  }

  else
  {
    v34 = v28;
    v36 = v34;
  }

  v336 = v36;
  v37 = +[CRInsights sharedInsights];
  if (v37)
  {
    v38 = +[CRInsights sharedInsights];
    v39 = [v38 allowOverrideWithKey:@"kCROverrideShouldRunOffline" forResultFromBlock:&__block_literal_global_310];
  }

  else
  {
    v39 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v38 = v39;
  }

  if ([v39 BOOLValue])
  {
    [v36 ciImage];
  }

  else
  {
    [MEMORY[0x277CBF758] imageWithCVPixelBuffer:{-[CRCameraReader correctedCardBuffer](self, "correctedCardBuffer")}];
  }
  v331 = ;

  if (v37)
  {
  }

  selfCopy = self;

  v40 = +[CRInsights sharedInsights];
  if (v40)
  {
    v41 = +[CRInsights sharedInsights];
    v415[0] = MEMORY[0x277D85DD0];
    v415[1] = 3221225472;
    v415[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_2;
    v415[3] = &unk_278EAA790;
    v417 = v363;
    v351 = &v416;
    v416 = v339;
    v42 = [(__CFString *)v41 allowOverrideWithKey:@"kOverrideShouldRunFreeformPath" forResultFromBlock:v415];
  }

  else
  {
    v42 = [MEMORY[0x277CCABB0] numberWithBool:(v339 != 0) & ~v363];
    v41 = v42;
  }

  v43 = v42;
  bOOLValue = [(__CFString *)v42 BOOLValue];
  if (v40)
  {
  }

  if (bOOLValue)
  {
    v45 = +[CRInsights sharedInsights];
    obj = @"CRInsightsContextImagePath";
    [v45 setContextValue:@"CRInsightsContextImagePathFreeform" forKey:?];

    v46 = +[CRInsights sharedInsights];
    [v46 setContextValue:@"CRInsightsContextImageOrientationLandscape" forKey:@"CRInsightsContextImageOrientation"];

    time = *time;
    [(CRCameraReader *)self setPointsFound:&time];
    [dictionary setValue:v339 forKey:@"boxPoints"];
    v47 = +[CRInsights sharedInsights];
    [v47 provideInsightValue:v339 forKey:@"boxPoints"];

    v48 = +[CRInsights sharedInsights];
    [v48 provideInsightValue:v36 forKey:@"CRInsightsCardImageFreeformLandscape"];

    time = *time;
    [(CRCameraReader *)self sendDidFindTarget:v339 frameTime:&time];
    v49 = +[CRInsights sharedInsights];
    if (v49)
    {
      v50 = +[CRInsights sharedInsights];
      v51 = [v50 allowOverrideWithKey:@"kCROverrideShouldRunEmbossedPath" forResultFromBlock:&__block_literal_global_312];
    }

    else
    {
      v51 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v50 = v51;
    }

    bOOLValue2 = [v51 BOOLValue];
    if (v49)
    {
    }

    if (bOOLValue2)
    {
      v53 = [(CRCameraReader *)self findObjectsEmbossed:v334 inImage:v336];
      v54 = +[CRInsights sharedInsights];
      [v54 provideInsightValue:v53 forKey:@"CRInsightsEmbossedResultsFreeformLandscape"];

      [(CRCameraReader *)self mergeInfo:v53 intoFindInfo:dictionary];
    }

    v354 = +[CRInsights sharedInsights];
    if (v354)
    {
      v55 = +[CRInsights sharedInsights];
      v413[0] = MEMORY[0x277D85DD0];
      v413[1] = 3221225472;
      v413[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_4;
      v413[3] = &unk_278EAA7B8;
      v413[4] = self;
      v414 = v331;
      v360 = [v55 allowOverrideWithKey:@"kCROverrideRegionsFreeformLandscape" forResultFromBlock:v413];

      v346 = &v414;
    }

    else
    {
      v55 = [objc_opt_class() targetRectsForImage:v331];
      v360 = v55;
    }

    v56 = +[CRInsights sharedInsights];
    [v56 provideInsightValue:v360 forKey:@"CRInsightsTextDetectorRegionsFreeformLandscape"];

    if ([v360 count])
    {
      v57 = [(CRCameraReader *)self findObjectsFlat:v332 inImage:v336 numberRects:v360 invert:0];
      v58 = +[CRInsights sharedInsights];
      [v58 provideInsightValue:v57 forKey:@"CRInsightsTextDetectorResultsFreeformLandscape"];

      [(CRCameraReader *)self mergeInfo:v57 intoFindInfo:dictionary];
    }

    v59 = +[CRInsights sharedInsights];
    if (v59)
    {
      v60 = +[CRInsights sharedInsights];
      v411[0] = MEMORY[0x277D85DD0];
      v411[1] = 3221225472;
      v411[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_5;
      v411[3] = &unk_278EAA7E0;
      v343 = &v412;
      v412 = dictionary;
      v61 = [v60 allowOverrideWithKey:@"kCROverrideShouldRunPortraitFlatPrintedPath" forResultFromBlock:v411];
    }

    else
    {
      v62 = MEMORY[0x277CCABB0];
      v60 = [dictionary objectForKey:@"code"];
      v61 = [v62 numberWithBool:v60 == 0];
    }

    bOOLValue3 = [v61 BOOLValue];

    if (bOOLValue3)
    {
      v64 = +[CRInsights sharedInsights];
      [v64 setContextValue:@"CRInsightsContextImageOrientationPortrait" forKey:@"CRInsightsContextImageOrientation"];

      v65 = +[CRInsights sharedInsights];
      if (v65)
      {
        imageByRotating90CW2 = +[CRInsights sharedInsights];
        imageByRotating90CW = [v336 imageByRotating90CW];
        v68 = [imageByRotating90CW2 allowOverrideWithKey:@"CRInsightsCardImageFreeformPortrait" forValue:imageByRotating90CW];
      }

      else
      {
        imageByRotating90CW2 = [v336 imageByRotating90CW];
        v68 = imageByRotating90CW2;
      }

      v69 = +[CRInsights sharedInsights];
      [v69 provideInsightValue:v68 forKey:@"CRInsightsCardImageFreeformPortrait"];

      v70 = +[CRInsights sharedInsights];
      selfCopy2 = self;
      if (v70)
      {
        ciImage = +[CRInsights sharedInsights];
        v409[0] = MEMORY[0x277D85DD0];
        v409[1] = 3221225472;
        v409[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_6;
        v409[3] = &unk_278EAA7B8;
        v409[4] = selfCopy;
        v410 = v68;
        v72 = [ciImage allowOverrideWithKey:@"kCROverrideRegionsFreeformPortrait" forResultFromBlock:v409];
        v341 = &v410;
      }

      else
      {
        v73 = objc_opt_class();
        ciImage = [v68 ciImage];
        v72 = [v73 targetRectsForImage:ciImage];
      }

      v74 = v72;

      v75 = +[CRInsights sharedInsights];
      [v75 provideInsightValue:v74 forKey:@"CRInsightsTextDetectorRegionsFreeformPortrait"];

      if ([v74 count])
      {
        v76 = [(CRCameraReader *)selfCopy findObjectsFlat:v332 inImage:v68 numberRects:v74 invert:0];
        [(CRCameraReader *)selfCopy mergeInfo:v76 intoFindInfo:dictionary];
        v77 = +[CRInsights sharedInsights];
        [v77 provideInsightValue:v76 forKey:@"CRInsightsTextDetectorResultsFreeformPortrait"];

        v78 = [dictionary objectForKey:@"code"];
        LODWORD(v77) = v78 == 0;

        if (v77)
        {
          v79 = +[CRInsights sharedInsights];
          [v79 setContextValue:@"CRInsightsContextImageOrientationPortraitInverted" forKey:@"CRInsightsContextImageOrientation"];

          selfCopy2 = selfCopy;
          v80 = [(CRCameraReader *)selfCopy findObjectsFlat:v332 inImage:v68 numberRects:v74 invert:1];
          [(CRCameraReader *)selfCopy mergeInfo:v80 intoFindInfo:dictionary];
        }
      }

      if (v70)
      {
      }
    }

    if (v59)
    {
    }

    v81 = +[CRInsights sharedInsights];
    [v81 setContextValue:0 forKey:@"CRInsightsContextImageOrientation"];

    v41 = +[CRInsights sharedInsights];
    [(__CFString *)v41 setContextValue:0 forKey:@"CRInsightsContextImagePath"];

    if (v354)
    {
    }
  }

  if (v40)
  {
  }

  v82 = +[CRInsights sharedInsights];
  if (v82)
  {
    v83 = +[CRInsights sharedInsights];
    v41 = @"kOverrideShouldRunFixedCutPath";
    v406[0] = MEMORY[0x277D85DD0];
    v406[1] = 3221225472;
    v406[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_7;
    v406[3] = &unk_278EAA790;
    v408 = v357;
    v407 = dictionary;
    v84 = [v83 allowOverrideWithKey:@"kOverrideShouldRunFixedCutPath" forResultFromBlock:v406];
    v85 = 0;
    v360 = &v407;
  }

  else
  {
    v86 = MEMORY[0x277CCABB0];
    if (v357)
    {
      v87 = 0;
    }

    else
    {
      v41 = [dictionary objectForKey:@"code"];
      v87 = v41 == 0;
    }

    v84 = [v86 numberWithBool:v87];
    v85 = v357 ^ 1;
    v83 = v84;
  }

  bOOLValue4 = [v84 BOOLValue];
  if (v82)
  {
  }

  if (v85)
  {
  }

  if (bOOLValue4)
  {
    v89 = +[CRInsights sharedInsights];
    [v89 setContextValue:@"CRInsightsContextImagePathFixedCut" forKey:@"CRInsightsContextImagePath"];

    v90 = +[CRInsights sharedInsights];
    [v90 setContextValue:@"CRInsightsContextImageOrientationLandscape" forKey:@"CRInsightsContextImageOrientation"];

    sessionManager = [(CRCameraReader *)selfCopy sessionManager];
    alignmentLayer = [(CRCameraReader *)selfCopy alignmentLayer];
    [alignmentLayer alignmentRect];
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v100 = v99;
    alignmentLayer2 = [(CRCameraReader *)selfCopy alignmentLayer];
    [sessionManager convertCameraRect:alignmentLayer2 fromLayer:{v94, v96, v98, v100}];
    v103 = v102;
    v105 = v104;
    v107 = v106;
    v109 = v108;

    v426.origin.x = v103;
    v426.origin.y = v105;
    v426.size.width = v107;
    v426.size.height = v109;
    v427 = CGRectIntegral(v426);
    x = v427.origin.x;
    y = v427.origin.y;
    width = v427.size.width;
    height = v427.size.height;
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
    if (WidthOfPlane && HeightOfPlane && !CVPixelBufferLockBaseAddress(pixelBuffer, 0))
    {
      v352 = [objc_alloc(MEMORY[0x277D70088]) initWithCVPixelBuffer:pixelBuffer toColorSpace:0];
      v358 = [v352 imageByCroppingRectangle:{x, y, width, height}];
      if (height > width)
      {
        imageByRotating90CW3 = [v358 imageByRotating90CW];

        v358 = imageByRotating90CW3;
      }

      v117 = +[CRInsights sharedInsights];
      [v117 provideInsightValue:v358 forKey:@"CRInsightsCardImageFixedCutLandscape"];

      v355 = +[CRInsights sharedInsights];
      if (v355)
      {
        ciImage2 = +[CRInsights sharedInsights];
        v404[0] = MEMORY[0x277D85DD0];
        v404[1] = 3221225472;
        v404[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_8;
        v404[3] = &unk_278EAA7B8;
        v404[4] = selfCopy;
        v405 = v358;
        v119 = [ciImage2 allowOverrideWithKey:@"kCROverrideRegionsFixedCutLandscape" forResultFromBlock:v404];
        obj = &v405;
      }

      else
      {
        v120 = objc_opt_class();
        ciImage2 = [v358 ciImage];
        v119 = [v120 targetRectsForImage:ciImage2];
      }

      v121 = v119;

      v122 = +[CRInsights sharedInsights];
      [v122 provideInsightValue:v121 forKey:@"CRInsightsTextDetectorRegionsFixedCutLandscape"];

      if ([v121 count])
      {
        v123 = [(CRCameraReader *)selfCopy findObjectsFlat:v332 inImage:v358 numberRects:v121 invert:0];
        v124 = +[CRInsights sharedInsights];
        [v124 provideInsightValue:v123 forKey:@"CRInsightsTextDetectorResultsFixedCutLandscape"];

        [(CRCameraReader *)selfCopy mergeInfo:v123 intoFindInfo:dictionary];
      }

      v125 = +[CRInsights sharedInsights];
      if (v125)
      {
        v126 = +[CRInsights sharedInsights];
        v402[0] = MEMORY[0x277D85DD0];
        v402[1] = 3221225472;
        v402[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_9;
        v402[3] = &unk_278EAA7E0;
        selfCopy2 = &v403;
        v403 = dictionary;
        v127 = [v126 allowOverrideWithKey:@"kCROverrideShouldRunEmbossedPath" forResultFromBlock:v402];
      }

      else
      {
        v128 = MEMORY[0x277CCABB0];
        v126 = [dictionary objectForKey:@"code"];
        v127 = [v128 numberWithBool:v126 == 0];
      }

      bOOLValue5 = [v127 BOOLValue];

      if (bOOLValue5)
      {
        v130 = [(CRCameraReader *)selfCopy findObjectsEmbossed:v334 inImage:v358];
        v131 = +[CRInsights sharedInsights];
        [v131 provideInsightValue:v130 forKey:@"CRInsightsEmbossedResultsFixedCutLandscape"];

        [(CRCameraReader *)selfCopy mergeInfo:v130 intoFindInfo:dictionary];
      }

      if (v125)
      {
      }

      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);

      if (v355)
      {
      }
    }

    v132 = +[CRInsights sharedInsights];
    [v132 setContextValue:0 forKey:@"CRInsightsContextImageOrientation"];

    v133 = +[CRInsights sharedInsights];
    [v133 setContextValue:0 forKey:@"CRInsightsContextImagePath"];
  }

  if (v82)
  {
  }

  v134 = +[CRInsights sharedInsights];
  if (v134)
  {
    v135 = +[CRInsights sharedInsights];
    v398[0] = MEMORY[0x277D85DD0];
    v398[1] = 3221225472;
    v398[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_10;
    v398[3] = &unk_278EAA808;
    v360 = &v399;
    v399 = dictionary;
    v401 = v363;
    v363 = &v400;
    v400 = v339;
    v136 = [v135 allowOverrideWithKey:@"kCROverrideShouldRunFreeformInvertedPath" forResultFromBlock:v398];
  }

  else
  {
    v137 = MEMORY[0x277CCABB0];
    v135 = [dictionary objectForKey:@"accepted"];
    if ([v135 BOOLValue])
    {
      v138 = 0;
    }

    else
    {
      v138 = (v339 != 0) & ~v363;
    }

    v136 = [v137 numberWithBool:v138];
  }

  bOOLValue6 = [v136 BOOLValue];

  if (bOOLValue6)
  {
    v140 = +[CRInsights sharedInsights];
    [v140 setContextValue:@"CRInsightsContextImagePathFreeform" forKey:@"CRInsightsContextImagePath"];

    v141 = +[CRInsights sharedInsights];
    [v141 setContextValue:@"CRInsightsContextImageOrientationLandscapeInverted" forKey:@"CRInsightsContextImageOrientation"];

    imageByRotating180 = [v336 imageByRotating180];
    v143 = +[CRInsights sharedInsights];
    if (v143)
    {
      v144 = +[CRInsights sharedInsights];
      v145 = [v144 allowOverrideWithKey:@"kCROverrideShouldRunEmbossedPath" forResultFromBlock:&__block_literal_global_315];
    }

    else
    {
      v145 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v144 = v145;
    }

    bOOLValue7 = [v145 BOOLValue];
    if (v143)
    {
    }

    if (bOOLValue7)
    {
      v147 = +[CRInsights sharedInsights];
      [v147 provideInsightValue:imageByRotating180 forKey:@"CRInsightsCardImageFreeformLandscapeInverted"];

      v148 = [(CRCameraReader *)selfCopy findObjectsEmbossed:v334 inImage:imageByRotating180];
      v149 = +[CRInsights sharedInsights];
      [v149 provideInsightValue:v148 forKey:@"CRInsightsEmbossedResultsFreeformLandscapeInverted"];

      v150 = [v148 objectForKey:@"code"];
      LOBYTE(v149) = v150 == 0;

      if ((v149 & 1) == 0)
      {
        [(CRCameraReader *)selfCopy mergeInfo:v148 intoFindInfo:dictionary];
        [dictionary setValue:MEMORY[0x277CBEC38] forKey:@"inverted"];
      }
    }

    v151 = [dictionary objectForKey:@"code"];
    v152 = v151 == 0;

    if (v152)
    {
      v153 = +[CRInsights sharedInsights];
      p_isa = &selfCopy->super.super.super.isa;
      if (v153)
      {
        ciImage3 = +[CRInsights sharedInsights];
        v396[0] = MEMORY[0x277D85DD0];
        v396[1] = 3221225472;
        v396[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_12;
        v396[3] = &unk_278EAA7B8;
        v396[4] = selfCopy;
        v397 = imageByRotating180;
        v156 = [ciImage3 allowOverrideWithKey:@"kCROverrideRegionsFreeformLandscapeInverted" forResultFromBlock:v396];
        p_isa = &v397;
      }

      else
      {
        v157 = objc_opt_class();
        ciImage3 = [imageByRotating180 ciImage];
        v156 = [v157 targetRectsForImage:ciImage3];
      }

      v158 = v156;

      v159 = +[CRInsights sharedInsights];
      [v159 provideInsightValue:v158 forKey:@"CRInsightsTextDetectorRegionsFreeformLandscapeInverted"];

      if ([v158 count])
      {
        v160 = [(CRCameraReader *)selfCopy findObjectsFlat:v332 inImage:imageByRotating180 numberRects:v158 invert:0];
        v161 = +[CRInsights sharedInsights];
        [v161 provideInsightValue:v160 forKey:@"CRInsightsTextDetectorResultsFreeformLandscapeInverted"];

        v162 = [v160 objectForKey:@"code"];
        LOBYTE(v161) = v162 == 0;

        if ((v161 & 1) == 0)
        {
          [(CRCameraReader *)selfCopy mergeInfo:v160 intoFindInfo:dictionary];
          [dictionary setValue:MEMORY[0x277CBEC38] forKey:@"inverted"];
        }
      }

      if (v153)
      {
      }
    }

    v163 = +[CRInsights sharedInsights];
    [v163 setContextValue:0 forKey:@"CRInsightsContextImageOrientation"];

    v164 = +[CRInsights sharedInsights];
    [v164 setContextValue:0 forKey:@"CRInsightsContextImagePath"];
  }

  if (v134)
  {
  }

  v338 = [dictionary objectForKey:@"boxPoints"];
  v347 = [dictionary objectForKey:@"code"];
  v329 = [dictionary objectForKey:@"codeOrigin"];
  v330 = [dictionary objectForKey:@"codeFragmentOrigins"];
  v342 = [dictionary objectForKey:@"expirationDate"];
  v165 = [dictionary objectForKey:@"accepted"];
  bOOLValue8 = [v165 BOOLValue];

  [dictionary objectForKey:@"nameResults"];
  v394 = 0u;
  v395 = 0u;
  v392 = 0u;
  obja = v393 = 0u;
  v356 = [obja countByEnumeratingWithState:&v392 objects:v424 count:16];
  if (!v356)
  {
    v344 = 0;
    goto LABEL_196;
  }

  v344 = 0;
  v353 = *v393;
  do
  {
    v359 = 0;
    do
    {
      if (*v393 != v353)
      {
        objc_enumerationMutation(obja);
      }

      v361 = *(*(&v392 + 1) + 8 * v359);
      v166 = [v361 objectForKey:@"isValidNameString"];
      bOOLValue9 = [v166 BOOLValue];

      if (bOOLValue9)
      {
        v364 = [v361 objectForKey:@"nameResult"];
        v168 = [v361 objectForKey:@"minMatchDistance"];
        intValue = [v168 intValue];

        v170 = [v361 objectForKey:@"nameAccepted"];
        if ([v170 BOOLValue])
        {

          goto LABEL_150;
        }

        v171 = [v361 objectForKey:@"closestNameDistance"];
        if (v171)
        {
          v172 = [v361 objectForKey:@"closestNameDistance"];
          v173 = [v172 integerValue] > intValue;

          if (!v173)
          {
LABEL_150:
            [v361 objectForKey:@"cardholderName"];
            v364 = v170 = v364;
            goto LABEL_151;
          }
        }

        else
        {
LABEL_151:
        }

        cardholderCounts = [(CRCameraReader *)selfCopy cardholderCounts];
        v175 = [cardholderCounts objectForKey:v364];
        v176 = v175 == 0;

        if (!v176)
        {
          cardholderCounts2 = [(CRCameraReader *)selfCopy cardholderCounts];
          v178 = [cardholderCounts2 objectForKey:v364];
          intValue2 = [v178 intValue];

          v390 = 0u;
          v391 = 0u;
          v388 = 0u;
          v389 = 0u;
          cardholderCounts3 = [(CRCameraReader *)selfCopy cardholderCounts];
          v181 = [cardholderCounts3 countByEnumeratingWithState:&v388 objects:v423 count:16];
          v182 = (intValue2 + 1);
          if (v181)
          {
            v183 = *v389;
            while (2)
            {
              for (i = 0; i != v181; ++i)
              {
                if (*v389 != v183)
                {
                  objc_enumerationMutation(cardholderCounts3);
                }

                v185 = *(*(&v388 + 1) + 8 * i);
                cardholderCounts4 = [(CRCameraReader *)selfCopy cardholderCounts];
                v187 = [cardholderCounts4 objectForKey:v185];
                intValue3 = [v187 intValue];

                v189 = intValue3 == 2 || v182 == 2;
                if (v189 && [v364 editDistanceFromString:v185] == 1)
                {
                  if (intValue3 == 2)
                  {
                    v193 = v185;

                    v182 = 3;
                    v364 = v193;
                  }

                  else
                  {
                    v182 = 3;
                  }

                  goto LABEL_178;
                }
              }

              v181 = [cardholderCounts3 countByEnumeratingWithState:&v388 objects:v423 count:16];
              if (v181)
              {
                continue;
              }

              break;
            }
          }

LABEL_178:

          cardholderCounts5 = [(CRCameraReader *)selfCopy cardholderCounts];
          v201 = [MEMORY[0x277CCABB0] numberWithInt:v182];
          [cardholderCounts5 setObject:v201 forKey:v364];
          goto LABEL_179;
        }

        v190 = [v361 objectForKey:@"nameAccepted"];
        bOOLValue10 = [v190 BOOLValue];

        if (bOOLValue10)
        {
          v192 = 4;
          goto LABEL_175;
        }

        v194 = [v361 objectForKey:@"closestNameDistance"];
        if (v194 && ([v361 objectForKey:@"closestNameDistance"], v195 = objc_claimAutoreleasedReturnValue(), v196 = objc_msgSend(v195, "integerValue") > intValue, v195, v194, v197 = selfCopy, !v196))
        {
          v192 = 3;
        }

        else
        {
          v198 = [v361 objectForKey:@"isNonNameString"];
          bOOLValue11 = [v198 BOOLValue];

          if (bOOLValue11)
          {
            v192 = 4294967294;
          }

          else
          {
            v192 = 1;
          }

LABEL_175:
          v197 = selfCopy;
        }

        cardholderCounts5 = [(CRCameraReader *)v197 cardholderCounts];
        v201 = [MEMORY[0x277CCABB0] numberWithInt:v192];
        [cardholderCounts5 setObject:v201 forKey:v364];
LABEL_179:

        cardholderCounts6 = [(CRCameraReader *)selfCopy cardholderCounts];
        v203 = [cardholderCounts6 objectForKey:v364];
        intValue4 = [v203 intValue];

        cardholderCounts7 = [(CRCameraReader *)selfCopy cardholderCounts];
        v206 = [MEMORY[0x277CCABB0] numberWithInt:intValue4];
        [cardholderCounts7 setObject:v206 forKey:v364];

        pinnedFoundInfo4 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
        v208 = [pinnedFoundInfo4 objectForKey:@"cardholderName"];

        if (v208)
        {
          cardholderCounts8 = [(CRCameraReader *)selfCopy cardholderCounts];
          v210 = [cardholderCounts8 objectForKey:v208];
          intValue5 = [v210 intValue];
        }

        else
        {
          intValue5 = 0;
        }

        if (v347 && intValue4 >= 3 && intValue4 > intValue5)
        {
          pinnedFoundInfo5 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
          v213 = [pinnedFoundInfo5 objectForKey:@"cardholderName"];
          v214 = [v213 isEqualToString:v364];

          if ((v214 & 1) == 0)
          {
            time = *time;
            [(CRCameraReader *)selfCopy setLastFieldFoundTime:&time];
            v344 = 1;
          }

          pinnedFoundInfo6 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
          [pinnedFoundInfo6 setObject:v364 forKey:@"cardholderName"];

          [(CRCameraReader *)selfCopy setFirstTimeFrameIndexForPinnedField:@"cardholderName"];
          pinnedFoundInfo7 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
          v217 = [pinnedFoundInfo7 objectForKey:@"nameOrigin"];
          v218 = v217 == 0;

          if (v218)
          {
            pinnedFoundInfo8 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
            v220 = [v361 objectForKey:@"nameOrigin"];
            [pinnedFoundInfo8 setObject:v220 forKey:@"nameOrigin"];
          }
        }
      }

      ++v359;
    }

    while (v359 != v356);
    v221 = [obja countByEnumeratingWithState:&v392 objects:v424 count:16];
    v356 = v221;
  }

  while (v221);
LABEL_196:

  if (v347)
  {
    cardNumberCounts2 = [(CRCameraReader *)selfCopy cardNumberCounts];
    v223 = [cardNumberCounts2 objectForKey:v347];
    intValue6 = [v223 intValue];

    v225 = [v347 stringByReplacingOccurrencesOfString:@" " withString:&stru_2859636D0];
    v365 = [v225 length];

    cardNumberCounts3 = [(CRCameraReader *)selfCopy cardNumberCounts];
    v362 = intValue6 + 1;
    v227 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [cardNumberCounts3 setObject:v227 forKey:v347];

    if ((v365 & 0xFFFFFFFFFFFFFFFDLL) == 0x11)
    {
      v386 = 0u;
      v387 = 0u;
      v384 = 0u;
      v385 = 0u;
      cardNumberCounts4 = [(CRCameraReader *)selfCopy cardNumberCounts];
      allKeys = [cardNumberCounts4 allKeys];

      v230 = [allKeys countByEnumeratingWithState:&v384 objects:v422 count:16];
      if (v230)
      {
        v231 = *v385;
        do
        {
          for (j = 0; j != v230; ++j)
          {
            if (*v385 != v231)
            {
              objc_enumerationMutation(allKeys);
            }

            v233 = *(*(&v384 + 1) + 8 * j);
            v234 = [v233 stringByReplacingOccurrencesOfString:@" " withString:&stru_2859636D0];
            v235 = [v234 length];

            if (v235 <= 12)
            {
              cardNumberCounts5 = [(CRCameraReader *)selfCopy cardNumberCounts];
              v237 = [MEMORY[0x277CCABB0] numberWithInt:0];
              [cardNumberCounts5 setObject:v237 forKey:v233];
            }
          }

          v230 = [allKeys countByEnumeratingWithState:&v384 objects:v422 count:16];
        }

        while (v230);
      }
    }
  }

  else
  {
    v362 = 0;
    v365 = 0;
  }

  v238 = selfCopy;
  if (v342)
  {
    expirationDateCounts = [(CRCameraReader *)selfCopy expirationDateCounts];
    v240 = [expirationDateCounts objectForKey:v342];
    intValue7 = [v240 intValue];

    v382 = 0u;
    v383 = 0u;
    v380 = 0u;
    v381 = 0u;
    expirationDateCounts2 = [(CRCameraReader *)selfCopy expirationDateCounts];
    v243 = [expirationDateCounts2 countByEnumeratingWithState:&v380 objects:v421 count:16];
    v244 = (intValue7 + 1);
    if (v243)
    {
      v245 = *v381;
      while (2)
      {
        for (k = 0; k != v243; ++k)
        {
          if (*v381 != v245)
          {
            objc_enumerationMutation(expirationDateCounts2);
          }

          v247 = *(*(&v380 + 1) + 8 * k);
          expirationDateCounts3 = [(CRCameraReader *)selfCopy expirationDateCounts];
          v249 = [expirationDateCounts3 objectForKey:v247];
          intValue8 = [v249 intValue];

          v251 = intValue8 == 2 || v244 == 2;
          if (v251 && [v342 editDistanceFromString:v247] == 1)
          {
            if (intValue8 == 2)
            {
              v253 = v247;

              v244 = 3;
              v342 = v253;
            }

            else
            {
              v244 = 3;
            }

            goto LABEL_227;
          }
        }

        v243 = [expirationDateCounts2 countByEnumeratingWithState:&v380 objects:v421 count:16];
        if (v243)
        {
          continue;
        }

        break;
      }
    }

LABEL_227:

    expirationDateCounts4 = [(CRCameraReader *)selfCopy expirationDateCounts];
    v255 = [MEMORY[0x277CCABB0] numberWithInt:v244];
    [expirationDateCounts4 setObject:v255 forKey:v342];

    v252 = v244 < 2;
    v238 = selfCopy;
  }

  else
  {
    v342 = 0;
    v252 = 1;
  }

  v256 = v362 > 1 && v365 > 0xF;
  if (!v256 && v362 < 5)
  {

    v347 = 0;
    goto LABEL_245;
  }

  pinnedFoundInfo9 = [(CRCameraReader *)v238 pinnedFoundInfo];
  v258 = [pinnedFoundInfo9 objectForKey:@"code"];

  if (v258)
  {
    cardNumberCounts6 = [(CRCameraReader *)selfCopy cardNumberCounts];
    v260 = [cardNumberCounts6 objectForKey:v258];
    intValue9 = [v260 intValue];

    v262 = [v258 isEqualToString:v347];
    if (v362 <= intValue9)
    {
      v263 = 1;
    }

    else
    {
      v263 = v262;
    }

    if ((v263 & 1) == 0)
    {
      time = *time;
      [(CRCameraReader *)selfCopy setLastFieldFoundTime:&time];
      pinnedFoundInfo10 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
      [pinnedFoundInfo10 setObject:v347 forKey:@"code"];
      goto LABEL_243;
    }
  }

  else
  {
    time = *time;
    [(CRCameraReader *)selfCopy setLastFieldFoundTime:&time];
    pinnedFoundInfo11 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
    [pinnedFoundInfo11 setObject:v347 forKey:@"code"];

    [(CRCameraReader *)selfCopy setFirstTimeFrameIndexForPinnedField:@"code"];
    pinnedFoundInfo12 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
    [pinnedFoundInfo12 setObject:v329 forKey:@"codeOrigin"];

    if (v330)
    {
      pinnedFoundInfo13 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
      [pinnedFoundInfo13 setObject:v330 forKey:@"codeFragmentOrigins"];
    }

    v268 = [dictionary objectForKey:@"isPortrait"];
    bOOLValue12 = [v268 BOOLValue];

    pinnedFoundInfo10 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
    v270 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue12];
    [pinnedFoundInfo10 setObject:v270 forKey:@"isPortrait"];

LABEL_243:
    v344 = 1;
  }

  if (v347 == 0 || v252)
  {
LABEL_245:

    v271 = selfCopy;
    goto LABEL_246;
  }

  pinnedFoundInfo14 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
  v296 = [pinnedFoundInfo14 objectForKey:@"expirationDate"];
  v297 = [v296 isEqualToString:v342];

  if ((v297 & 1) == 0)
  {
    time = *time;
    [(CRCameraReader *)selfCopy setLastFieldFoundTime:&time];
    v344 = 1;
  }

  pinnedFoundInfo15 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
  [pinnedFoundInfo15 setObject:v342 forKey:@"expirationDate"];

  [(CRCameraReader *)selfCopy setFirstTimeFrameIndexForPinnedField:@"expirationDate"];
  pinnedFoundInfo16 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
  v300 = [pinnedFoundInfo16 objectForKey:@"dateOrigin"];
  v301 = v300 == 0;

  if (v301)
  {
    pinnedFoundInfo17 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
    v303 = [dictionary objectForKey:@"dateOrigin"];
    [pinnedFoundInfo17 setObject:v303 forKey:@"dateOrigin"];
  }

  v304 = [dictionary objectForKey:@"expirationYear"];
  v305 = v304 == 0;

  if (!v305)
  {
    pinnedFoundInfo18 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
    v307 = [dictionary objectForKey:@"expirationYear"];
    [pinnedFoundInfo18 setObject:v307 forKey:@"expirationYear"];
  }

  v308 = [dictionary objectForKey:@"expirationMonth"];
  v309 = v308 == 0;

  if (!v309)
  {
    pinnedFoundInfo19 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
    v311 = [dictionary objectForKey:@"expirationMonth"];
    [pinnedFoundInfo19 setObject:v311 forKey:@"expirationMonth"];
  }

  v312 = [dictionary objectForKey:@"expirationDay"];
  v313 = v312 == 0;

  if (!v313)
  {
    pinnedFoundInfo20 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
    v315 = [dictionary objectForKey:@"expirationDay"];
    [pinnedFoundInfo20 setObject:v315 forKey:@"expirationDay"];
  }

  v271 = selfCopy;
  if (!v342)
  {
LABEL_246:
    pinnedFoundInfo21 = [(CRCameraReader *)v271 pinnedFoundInfo];
    v342 = [pinnedFoundInfo21 objectForKey:@"expirationDate"];

    v271 = selfCopy;
  }

  pinnedFoundInfo22 = [(CRCameraReader *)v271 pinnedFoundInfo];
  v274 = [pinnedFoundInfo22 objectForKey:@"cardholderName"];

  if (v274)
  {
    pinnedFoundInfo23 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
    v276 = [pinnedFoundInfo23 objectForKey:@"nameOrigin"];
    v277 = NSPointFromString(v276);
    valid = isValidNameLocationForCode(v347, v277.x, v277.y);

    if ((valid & 1) == 0)
    {

      pinnedFoundInfo24 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
      [pinnedFoundInfo24 removeObjectForKey:@"cardholderName"];

      pinnedFoundInfo25 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
      [pinnedFoundInfo25 removeObjectForKey:@"nameOrigin"];

      v274 = 0;
    }
  }

  v281 = [v335 containsObject:@"CRCameraReaderCreditCardExpirationDate"];
  v282 = [v335 containsObject:@"CROutputTypeCreditCardName"];
  v283 = selfCopy;
  if (v342)
  {
    v284 = 0;
  }

  else
  {
    v284 = v281;
  }

  if (v274)
  {
    v285 = 0;
  }

  else
  {
    v285 = v282;
  }

  if (((v284 & 1) != 0 || v285) && (v379 = *time, [(CRCameraReader *)selfCopy lastFieldFoundTime], lhs = v379, rhs = v378, CMTimeSubtract(&time, &lhs, &rhs), CMTimeGetSeconds(&time) <= 1.0))
  {
    v293 = 0;
    v294 = v347;
    v292 = v347 == 0;
  }

  else
  {
    pinnedFoundInfo26 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
    v287 = [pinnedFoundInfo26 objectForKey:@"code"];
    v288 = v287 == 0;

    if (v288)
    {
      v283 = selfCopy;
      v291 = v347;
    }

    else
    {
      pinnedFoundInfo27 = [(CRCameraReader *)selfCopy pinnedFoundInfo];
      v290 = [pinnedFoundInfo27 objectForKey:@"code"];

      bOOLValue8 = 1;
      v291 = v290;
      v283 = selfCopy;
    }

    v292 = v291 == 0;
    v293 = 1;
    v348 = v291;
    if (v291 && bOOLValue8)
    {
      AudioServicesPlaySystemSound(0xFFFu);
      [(CRCameraReader *)v283 stopSession];
      v292 = 0;
    }

    v294 = v348;
  }

  if (v338)
  {
    v316 = MEMORY[0x277D85CD0];
    v317 = MEMORY[0x277D85CD0];
    v374[0] = MEMORY[0x277D85DD0];
    v374[1] = 3221225472;
    v374[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_13;
    v374[3] = &unk_278EAA830;
    v374[4] = v283;
    v318 = v338;
    v376 = *&time->var0;
    var3 = time->var3;
    v375 = v318;
    v377 = var3;
    cr_dispatch_async(v316, v374);

    v283 = selfCopy;
  }

  if (v344)
  {
    pinnedFoundInfo28 = [(CRCameraReader *)v283 pinnedFoundInfo];
    [(CRCameraReader *)v283 sendDidRecognizeNewObjects:pinnedFoundInfo28];

    v283 = selfCopy;
  }

  if (v292)
  {
    v379 = *time;
    [(CRCameraReader *)v283 pointsFound];
    lhs = v379;
    rhs = v378;
    CMTimeSubtract(&time, &lhs, &rhs);
    if (CMTimeGetSeconds(&time) > 0.3)
    {
      sessionManager2 = [(CRCameraReader *)v283 sessionManager];
      [sessionManager2 resetFocus];

      v283 = selfCopy;
    }

    [(CRCameraReader *)v283 setFoundPoints:0];
  }

  else
  {
    v322 = MEMORY[0x277D85CD0];
    v323 = MEMORY[0x277D85CD0];
    v368[0] = MEMORY[0x277D85DD0];
    v368[1] = 3221225472;
    v368[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_14;
    v368[3] = &unk_278EAA880;
    v368[4] = v283;
    v369 = v294;
    v370 = v274;
    v371 = v342;
    v373 = v293;
    v372 = v338;
    cr_dispatch_async(v322, v368);

    v283 = selfCopy;
  }

  diagnosticHUDLayer = [(CRCameraReader *)v283 diagnosticHUDLayer];
  v325 = diagnosticHUDLayer == 0;

  if (!v325)
  {
    v326 = MEMORY[0x277D85CD0];
    v327 = MEMORY[0x277D85CD0];
    v367[0] = MEMORY[0x277D85DD0];
    v367[1] = 3221225472;
    v367[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_17;
    v367[3] = &unk_278EAA5E8;
    v367[4] = selfCopy;
    cr_dispatch_async(v326, v367);
  }

  CVPixelBufferRelease(pixelBuffer);
}

uint64_t __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_4(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);

  return [v2 targetRectsForImage:v3];
}

id __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) objectForKey:@"code"];
  v3 = [v1 numberWithBool:v2 == 0];

  return v3;
}

id __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_6(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(a1 + 40) ciImage];
  v4 = [v2 targetRectsForImage:v3];

  return v4;
}

id __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v1 = [*(a1 + 32) objectForKey:@"code"];
    v4 = v1 == 0;
  }

  v5 = [v2 numberWithBool:v4];
  if ((v3 & 1) == 0)
  {
  }

  return v5;
}

id __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_8(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(a1 + 40) ciImage];
  v4 = [v2 targetRectsForImage:v3];

  return v4;
}

id __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_9(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) objectForKey:@"code"];
  v3 = [v1 numberWithBool:v2 == 0];

  return v3;
}

id __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_10(uint64_t a1)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [*(a1 + 32) objectForKey:@"accepted"];
  v4 = ([v3 BOOLValue] & 1) == 0 && (*(a1 + 48) & 1) == 0 && *(a1 + 40) != 0;
  v5 = [v2 numberWithBool:v4];

  return v5;
}

id __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_12(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(a1 + 40) ciImage];
  v4 = [v2 targetRectsForImage:v3];

  return v4;
}

void __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_13(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) foundPoints];

  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = 0;
  do
  {
    v4 = [*(a1 + 32) foundPoints];
    v5 = [v4 objectAtIndex:v3];
    v6 = NSPointFromString(v5);

    v7 = [*(a1 + 40) objectAtIndex:v3];
    v8 = NSPointFromString(v7);

    v9 = sqrt((v8.x - v6.x) * (v8.x - v6.x) + (v8.y - v6.y) * (v8.y - v6.y));
  }

  while (v9 <= 20.0 && v3++ < 3);
  if (v9 <= 20.0)
  {
    v55 = *(a1 + 48);
    v11 = *(a1 + 32);
    if (v11)
    {
      [v11 pointsFound];
    }

    else
    {
      memset(&v54, 0, sizeof(v54));
    }

    lhs = v55;
    rhs = v54;
    CMTimeSubtract(&time, &lhs, &rhs);
    if (CMTimeGetSeconds(&time) > 3.0)
    {
      [*(a1 + 32) stopSession];
      [*(a1 + 32) sendDidEndWithErrorDomain:@"Core Recognition Error Domain" code:1 userInfo:0];
    }
  }

  else
  {
LABEL_11:
    [*(a1 + 32) setFoundPoints:*(a1 + 40)];
    time = *(a1 + 48);
    [*(a1 + 32) setPointsFound:&time];
  }

  *&rect.origin.y = [MEMORY[0x277CBEB18] array];
  v12 = [*(a1 + 32) sessionManager];
  v13 = [v12 previewLayer];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v62.origin.x = v15;
  v62.origin.y = v17;
  v62.size.width = v19;
  v62.size.height = v21;
  Width = CGRectGetWidth(v62);
  v63.origin.x = v15;
  v63.origin.y = v17;
  v63.size.width = v19;
  v63.size.height = v21;
  v23 = CGRectGetHeight(v63) / -10.0;
  v64.origin.x = v15;
  v64.origin.y = v17;
  v64.size.width = v19;
  v64.size.height = v21;
  v65 = CGRectInset(v64, Width / -10.0, v23);
  rect.origin.x = v65.origin.x;
  y = v65.origin.y;
  v25 = v65.size.width;
  height = v65.size.height;
  v52 = 0u;
  v53 = 0u;
  rect.size = 0u;
  v51 = 0u;
  v27 = *(a1 + 40);
  v28 = [v27 countByEnumeratingWithState:&rect.size objects:v59 count:16];
  if (v28)
  {
    v29 = 0;
    v30 = *v51;
    v31 = 0.0;
    v32 = 0.0;
    do
    {
      v33 = 0;
      v34 = v29 + 1;
      v49 = v29 + v28;
      do
      {
        if (*v51 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v35 = *(*&rect.size.height + 8 * v33);
        v36 = [*(a1 + 32) sessionManager];
        v37 = NSPointFromString(v35);
        v38 = [*(a1 + 32) sessionManager];
        v39 = [v38 previewLayer];
        [v36 convertCameraPoint:v39 toLayer:1 flipped:{v37.x, v37.y}];
        v41 = v40;
        v43 = v42;

        v44 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v41, v43}];
        [*&rect.origin.y addObject:v44];

        v66.origin.x = rect.origin.x;
        v66.origin.y = y;
        v66.size.width = v25;
        v66.size.height = height;
        v61.x = v41;
        v61.y = v43;
        CGRectContainsPoint(v66, v61);
        v45 = 1.0 / v34;
        v32 = v32 * (1.0 - v45) + v41 * v45;
        v31 = v31 * (1.0 - v45) + v43 * v45;
        ++v33;
        ++v34;
      }

      while (v28 != v33);
      v28 = [v27 countByEnumeratingWithState:&rect.size objects:v59 count:16];
      v29 = v49;
    }

    while (v28);
  }

  else
  {
    v31 = 0.0;
    v32 = 0.0;
  }

  if ([*&rect.origin.y count])
  {
    v46 = [*(a1 + 32) diagnosticHUDLayer];
    [v46 setBoxPoints:*&rect.origin.y];

    v47 = [*(a1 + 32) alignmentLayer];
    [v47 animateFoundCardRect:*&rect.origin.y];

    v48 = [*(a1 + 32) sessionManager];
    [v48 refocusOnPoint:0 exposure:{v32, v31}];
  }
}

void __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_14(uint64_t a1)
{
  v78[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) pauseBoxLayerHideTimer];
  v2 = [*(a1 + 32) pinnedFoundInfo];
  v3 = [v2 objectForKey:@"codeFragmentOrigins"];

  if (!v3)
  {
    v9 = [*(a1 + 32) pinnedFoundInfo];
    v10 = [v9 objectForKey:@"codeOrigin"];
    v78[0] = v10;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:1];

    v77 = *(a1 + 40);
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
    goto LABEL_10;
  }

  v4 = [*(a1 + 40) componentsSeparatedByString:@" "];
  v5 = [v4 count];
  if (v5 >= [v3 count])
  {
    v11 = [v4 count];
    if (v11 <= [v3 count])
    {
      goto LABEL_10;
    }

    v6 = [v4 subarrayWithRange:{0, objc_msgSend(v3, "count")}];
  }

  else
  {
    v6 = [v4 mutableCopy];
    for (i = 0; ; ++i)
    {
      v8 = [v3 count];
      if (i >= v8 - [v4 count])
      {
        break;
      }

      [v6 addObject:&stru_2859636D0];
    }
  }

  v4 = v6;
LABEL_10:
  v12 = [*(a1 + 32) pinnedFoundInfo];
  v13 = [v12 objectForKey:@"nameOrigin"];
  v14 = NSPointFromString(v13);

  v15 = [*(a1 + 32) pinnedFoundInfo];
  v16 = [v15 objectForKey:@"dateOrigin"];
  v17 = NSPointFromString(v16);

  v18 = [*(a1 + 32) getFirstTimeFrameIndexForPinnedField:@"cardholderName"];
  v19 = [*(a1 + 32) getFirstTimeFrameIndexForPinnedField:@"expirationDate"];
  v20 = [*(a1 + 32) getFirstTimeFrameIndexForPinnedField:@"code"];
  v21 = [*(a1 + 32) alignmentLayer];
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_15;
  v75[3] = &unk_278EAA858;
  v76 = *(a1 + 72);
  v75[4] = *(a1 + 32);
  [v21 animateFoundCodeParts:v4 codePartPositions:v3 codeFrameIndex:v20 cardHolder:v22 cardholderPosition:v18 cardholderFrameIndex:v23 expDate:v14.x expdatePosition:v14.y expDateFrameIndex:v17.x completionBlock:{v17.y, v19, v75}];

  if (*(a1 + 72) == 1)
  {
    v24 = [*(a1 + 40) stringByReplacingOccurrencesOfString:@" " withString:&stru_2859636D0];
    [*(a1 + 32) setFoundCode:v24];

    v25 = objc_alloc_init(CRCameraReaderOutput);
    v26 = *(a1 + 64);
    v27 = [(CRCameraReaderOutput *)v25 objectInternal];
    [v27 setVertices:v26];

    v28 = [(CRCameraReaderOutput *)v25 objectInternal];
    [v28 setType:@"CROutputTypeCreditCardNumber"];

    v29 = *(a1 + 40);
    v30 = [(CRCameraReaderOutput *)v25 objectInternal];
    [v30 setFormattedStringValue:v29];

    v31 = [*(a1 + 32) foundCode];
    v32 = [(CRCameraReaderOutput *)v25 objectInternal];
    [v32 setStringValue:v31];

    v74 = [MEMORY[0x277CBEB18] arrayWithObject:v25];
    v33 = MEMORY[0x277CBEB98];
    v34 = [*(a1 + 32) outputObjectTypes];
    v35 = [v33 setWithArray:v34];
    if ([v35 containsObject:@"CROutputTypeCreditCardName"])
    {
      v36 = *(a1 + 48) == 0;

      if (v36)
      {
        goto LABEL_16;
      }

      v34 = objc_alloc_init(CRCameraReaderOutput);
      v37 = *(a1 + 64);
      v38 = [(CRCameraReaderOutput *)v34 objectInternal];
      [v38 setVertices:v37];

      v39 = [(CRCameraReaderOutput *)v34 objectInternal];
      [v39 setType:@"CROutputTypeCreditCardName"];

      v40 = *(a1 + 48);
      v41 = [(CRCameraReaderOutput *)v34 objectInternal];
      [v41 setStringValue:v40];

      [v74 addObject:v34];
    }

    else
    {
    }

LABEL_16:
    v42 = MEMORY[0x277CBEB98];
    v43 = [*(a1 + 32) outputObjectTypes];
    v44 = [v42 setWithArray:v43];
    if ([v44 containsObject:@"CRCameraReaderCreditCardExpirationDate"])
    {
      v45 = *(a1 + 56) == 0;

      if (v45)
      {
LABEL_27:
        [*(a1 + 32) sendDidEndWithInfo:v74];

        goto LABEL_28;
      }

      v43 = objc_alloc_init(CRCameraReaderOutputExpirationDate);
      v46 = *(a1 + 64);
      v47 = [(CRCameraReaderOutput *)v43 objectInternal];
      [v47 setVertices:v46];

      v48 = [(CRCameraReaderOutput *)v43 objectInternal];
      [v48 setType:@"CRCameraReaderCreditCardExpirationDate"];

      v49 = *(a1 + 56);
      v50 = [(CRCameraReaderOutput *)v43 objectInternal];
      [v50 setStringValue:v49];

      v51 = [*(a1 + 32) pinnedFoundInfo];
      v52 = [v51 objectForKey:@"expirationYear"];
      LOBYTE(v49) = v52 == 0;

      if ((v49 & 1) == 0)
      {
        v53 = MEMORY[0x277CCABB0];
        v54 = [*(a1 + 32) pinnedFoundInfo];
        v55 = [v54 objectForKey:@"expirationYear"];
        v56 = [v53 numberWithInteger:{objc_msgSend(v55, "integerValue")}];
        v57 = [(CRCameraReaderOutput *)v43 objectInternal];
        [v57 setYearValue:v56];
      }

      v58 = [*(a1 + 32) pinnedFoundInfo];
      v59 = [v58 objectForKey:@"expirationMonth"];
      v60 = v59 == 0;

      if (!v60)
      {
        v61 = MEMORY[0x277CCABB0];
        v62 = [*(a1 + 32) pinnedFoundInfo];
        v63 = [v62 objectForKey:@"expirationMonth"];
        v64 = [v61 numberWithInteger:{objc_msgSend(v63, "integerValue")}];
        v65 = [(CRCameraReaderOutput *)v43 objectInternal];
        [v65 setMonthValue:v64];
      }

      v66 = [*(a1 + 32) pinnedFoundInfo];
      v67 = [v66 objectForKey:@"expirationDay"];
      v68 = v67 == 0;

      if (!v68)
      {
        v69 = MEMORY[0x277CCABB0];
        v70 = [*(a1 + 32) pinnedFoundInfo];
        v71 = [v70 objectForKey:@"expirationDay"];
        v72 = [v69 numberWithInteger:{objc_msgSend(v71, "integerValue")}];
        v73 = [(CRCameraReaderOutput *)v43 objectInternal];
        [v73 setDayValue:v72];
      }

      [v74 addObject:v43];
    }

    else
    {
    }

    goto LABEL_27;
  }

LABEL_28:
}

uint64_t __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_15(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) sendDidEndAnimation];
  }

  return result;
}

void __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_17(uint64_t a1)
{
  v21 = [*(a1 + 32) sessionManager];
  v2 = [v21 isFocusPointOfInterestSupported];

  v3 = 0.0;
  v4 = 0.0;
  if (v2)
  {
    v22 = [*(a1 + 32) sessionManager];
    [v22 focusPointOfInterest];
    v6 = v5;
    v8 = v7;

    v23 = [*(a1 + 32) sessionManager];
    [v23 cameraResolution];
    v10 = v9;
    v11 = [*(a1 + 32) sessionManager];
    [v11 cameraResolution];
    v13 = v12;

    v24 = [*(a1 + 32) sessionManager];
    v14 = [*(a1 + 32) sessionManager];
    v15 = [v14 previewLayer];
    [v24 convertCameraPoint:v15 toLayer:{v6 * v10, v8 * v13}];
    v3 = v16;
    v4 = v17;
  }

  v25 = [*(a1 + 32) diagnosticHUDLayer];
  v18 = [*(a1 + 32) sessionManager];
  v19 = [v18 isAdjustingFocus];
  v20 = [*(a1 + 32) sessionManager];
  [v25 setAdjustingFocus:v19 pointOfInterestSupported:objc_msgSend(v20 focusPoint:{"isFocusPointOfInterestSupported"), v3, v4}];
}

- (id)findObjectsEmbossed:(id)embossed inImage:(id)image
{
  embossedCopy = embossed;
  imageCopy = image;
  nameCutRects = [(CRCameraReader *)self nameCutRects];

  if (!nameCutRects)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(CRCameraReader *)self setNameCutRects:array];
  }

  dateCutRects = [(CRCameraReader *)self dateCutRects];

  if (!dateCutRects)
  {
    array2 = [MEMORY[0x277CBEB18] array];
    [(CRCameraReader *)self setDateCutRects:array2];
  }

  dateCutRects2 = [(CRCameraReader *)self dateCutRects];
  v13 = [dateCutRects2 count];

  if (!v13)
  {
    v14 = 8;
    y = 0.670120239;
    x = 0.0475194012;
    height = 0.0707215541;
    width = 0.849705277;
    do
    {
      dateCutRects3 = [(CRCameraReader *)self dateCutRects];
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = width;
      v43.size.height = height;
      v20 = NSStringFromRect(v43);
      [dateCutRects3 addObject:v20];

      v44.origin.x = x;
      v44.origin.y = y;
      v44.size.width = width;
      v44.size.height = height;
      v45 = CGRectOffset(v44, 0.0, 0.0353607771);
      x = v45.origin.x;
      y = v45.origin.y;
      width = v45.size.width;
      height = v45.size.height;
      --v14;
    }

    while (v14);
  }

  nameCutRects2 = [(CRCameraReader *)self nameCutRects];
  v22 = [nameCutRects2 count];

  if (!v22)
  {
    v23 = 8;
    v24 = 0.929278433;
    v25 = 0.0475194012;
    v26 = 0.0707215541;
    v27 = 0.849705277;
    do
    {
      nameCutRects3 = [(CRCameraReader *)self nameCutRects];
      v46.origin.x = v25;
      v46.origin.y = v24;
      v46.size.width = v27;
      v46.size.height = v26;
      v29 = NSStringFromRect(v46);
      [nameCutRects3 addObject:v29];

      v47.origin.x = v25;
      v47.origin.y = v24;
      v47.size.width = v27;
      v47.size.height = v26;
      v48 = CGRectOffset(v47, 0.0, -0.0353607771);
      v25 = v48.origin.x;
      v24 = v48.origin.y;
      v27 = v48.size.width;
      v26 = v48.size.height;
      --v23;
    }

    while (v23);
  }

  v30 = MEMORY[0x277CBEB18];
  v49.origin.x = 0.0209955056;
  v49.origin.y = 0.546364477;
  v49.size.width = 0.960868335;
  v49.size.height = 0.108566147;
  v31 = NSStringFromRect(v49);
  v32 = [v30 arrayWithObject:v31];

  v33 = +[CRInsights sharedInsights];
  [v33 provideInsightValue:v32 forKey:@"CRInsightsEmbossedRegionsNumber"];

  v34 = +[CRInsights sharedInsights];
  nameCutRects4 = [(CRCameraReader *)self nameCutRects];
  [v34 provideInsightValue:nameCutRects4 forKey:@"CRInsightsEmbossedRegionsName"];

  v36 = +[CRInsights sharedInsights];
  dateCutRects4 = [(CRCameraReader *)self dateCutRects];
  [v36 provideInsightValue:dateCutRects4 forKey:@"CRInsightsEmbossedRegionsExpirationDate"];

  nameCutRects5 = [(CRCameraReader *)self nameCutRects];
  dateCutRects5 = [(CRCameraReader *)self dateCutRects];
  v40 = [(CRCameraReader *)self findCCObjectsEmbossed:embossedCopy inImage:imageCopy numberRects:v32 nameRects:nameCutRects5 dateRects:dateCutRects5];

  return v40;
}

+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage outputObjectTypes:(id)types
{
  width = image->width;
  height = image->height;
  v7 = *&image->width;
  v10[0] = *&image->data;
  v10[1] = v7;
  height = [CRCameraReader findCodeInImage:v10 maxStage:stage roi:types outputObjectTypes:0.0, 0.0, width, height];

  return height;
}

+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage
{
  width = image->width;
  height = image->height;
  v8 = [MEMORY[0x277CBEA60] arrayWithObject:@"CROutputTypeiTunesCode"];
  v9 = *&image->width;
  v12[0] = *&image->data;
  v12[1] = v9;
  height = [CRCameraReader findCodeInImage:v12 maxStage:stage roi:v8 outputObjectTypes:0.0, 0.0, width, height];

  return height;
}

+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage roi:(CGRect)roi
{
  height = roi.size.height;
  width = roi.size.width;
  y = roi.origin.y;
  x = roi.origin.x;
  v11 = [MEMORY[0x277CBEA60] arrayWithObject:@"CROutputTypeiTunesCode"];
  v12 = *&image->width;
  v15[0] = *&image->data;
  v15[1] = v12;
  height = [CRCameraReader findCodeInImage:v15 maxStage:stage roi:v11 outputObjectTypes:x, y, width, height];

  return height;
}

+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage roi:(CGRect)roi outputObjectTypes:(id)types
{
  typesCopy = types;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [MEMORY[0x277CBEB18] array];
  [dictionary setObject:objc_claimAutoreleasedReturnValue() forKey:@"stageInfo"];
  CFAbsoluteTimeGetCurrent();
  v6 = [MEMORY[0x277CBEB98] setWithArray:typesCopy];
  [v6 containsObject:@"CROutputTypeHomeKitCode"];

  _findCodeRectInImageWithModel();
}

+ (id)textFeatureWithVNTextObservation:(id)observation
{
  v35 = *MEMORY[0x277D85DE8];
  observationCopy = observation;
  [observationCopy boundingBox];
  v5 = v4;
  [observationCopy boundingBox];
  v7 = v6;
  [observationCopy boundingBox];
  v9 = v8;
  [observationCopy boundingBox];
  v11 = v10;
  [observationCopy boundingBox];
  v37.origin.y = 1.0 - v7 - v9;
  v37.origin.x = v5;
  v37.size.width = v11;
  v12 = NSStringFromRect(v37);
  array = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  characterBoxes = [observationCopy characterBoxes];
  v15 = [characterBoxes countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v15)
  {
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(characterBoxes);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        [v18 boundingBox];
        v20 = v19;
        [v18 boundingBox];
        v22 = v21;
        [v18 boundingBox];
        v24 = v23;
        [v18 boundingBox];
        v26 = v25;
        [v18 boundingBox];
        v38.origin.y = 1.0 - v22 - v24;
        v38.origin.x = v20;
        v38.size.width = v26;
        v27 = NSStringFromRect(v38);
        [array addObject:v27];
      }

      v15 = [characterBoxes countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  v28 = [objc_alloc(MEMORY[0x277D700A8]) initWithFeatureRect:v12 subFeatureRects:array];

  return v28;
}

+ (id)targetRectsForImage:(id)image
{
  v202[1] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  array = [MEMORY[0x277CBEB18] array];
  v158 = imageCopy;
  v3 = objc_alloc(MEMORY[0x277CE2D50]);
  v159 = [v3 initWithCIImage:v158 options:MEMORY[0x277CBEC10]];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [standardUserDefaults BOOLForKey:@"com.apple.CoreRecognition.enable_vn_detector"];

  v6 = objc_alloc_init(MEMORY[0x277CE2CB8]);
  v7 = v6;
  if (v5)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v160 = v6;
  [v6 setAlgorithm:v8];
  [v7 setReportCharacterBoxes:1];
  [v7 setDetectDiacritics:0];
  v202[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v202 count:1];
  v199 = 0;
  [v159 performRequests:v9 error:&v199];
  v157 = v199;

  results = [v160 results];
  if (results && [results count])
  {
    array2 = [MEMORY[0x277CBEB18] array];
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v10 = results;
    v11 = [v10 countByEnumeratingWithState:&v195 objects:v201 count:16];
    if (v11)
    {
      v12 = *v196;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v196 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [objc_opt_class() textFeatureWithVNTextObservation:*(*(&v195 + 1) + 8 * i)];
          subFeatures = [v14 subFeatures];
          v9 = [subFeatures count];

          if ((v9 - 4) <= 0x18)
          {
            if ([array count] <= 0x13)
            {
              [v14 bounds];
              v17 = v16;
              v19 = v18;
              v21 = v20;
              v23 = v22;
              [v14 bounds];
              v25 = v24;
              [v14 bounds];
              v27 = v26 * -0.100000001;
              v204.origin.x = v17;
              v204.origin.y = v19;
              v204.size.width = v21;
              v204.size.height = v23;
              v205 = CGRectInset(v204, v25 * -0.0500000007, v27);
              x = v205.origin.x;
              y = v205.origin.y;
              width = v205.size.width;
              height = v205.size.height;
              [v14 setShouldExpandToFullWidth:1];
              v32 = MEMORY[0x277CBEAC0];
              v206.origin.x = x;
              v206.origin.y = y;
              v206.size.width = width;
              v206.size.height = height;
              v33 = NSStringFromRect(v206);
              v34 = [v32 dictionaryWithObjectsAndKeys:{v33, @"paddedRect", v14, @"textFeatures", 0}];
              [array addObject:v34];
            }

            if (v9 == 4)
            {
              [array2 addObject:v14];
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v195 objects:v201 count:16];
      }

      while (v11);
    }

    if ([array2 count] >= 4)
    {
      [array2 sortUsingComparator:&__block_literal_global_399];
      v155 = [array2 subarrayWithRange:{0, 4}];
      v35 = 0;
      v36 = 3.4028e38;
      while ([array2 count] - 3 > v35)
      {
        v177 = [array2 objectAtIndexedSubscript:v35];
        [v177 bounds];
        v37 = CGRectGetWidth(v207);
        v176 = [array2 objectAtIndexedSubscript:v35];
        [v176 bounds];
        v38 = CGRectGetHeight(v208);
        v39 = v35 + 1;
        v175 = [array2 objectAtIndexedSubscript:?];
        [v175 bounds];
        v40 = CGRectGetWidth(v209);
        v174 = [array2 objectAtIndexedSubscript:v35 + 1];
        [v174 bounds];
        v41 = v37 * v38 - v40 * CGRectGetHeight(v210);
        [array2 objectAtIndexedSubscript:v35];
        if (v41 < 0.0)
          v168 = {;
          [v168 bounds];
          v46 = CGRectGetWidth(v215);
          v164 = [array2 objectAtIndexedSubscript:v35];
          [v164 bounds];
          v47 = CGRectGetHeight(v216);
          v163 = [array2 objectAtIndexedSubscript:v35 + 1];
          [v163 bounds];
          v48 = CGRectGetWidth(v217);
          v162 = [array2 objectAtIndexedSubscript:v35 + 1];
          [v162 bounds];
          v45 = -(v46 * v47 - v48 * CGRectGetHeight(v218));
        }

        else
          v167 = {;
          [v167 bounds];
          v42 = CGRectGetWidth(v211);
          v166 = [array2 objectAtIndexedSubscript:v35];
          [v166 bounds];
          v43 = CGRectGetHeight(v212);
          v165 = [array2 objectAtIndexedSubscript:v35 + 1];
          [v165 bounds];
          v44 = CGRectGetWidth(v213);
          v9 = [array2 objectAtIndexedSubscript:v35 + 1];
          [v9 bounds];
          v45 = v42 * v43 - v44 * CGRectGetHeight(v214);
        }

        v186 = v9;
        v49 = [array2 objectAtIndexedSubscript:v35 + 1];
        [v49 bounds];
        v50 = CGRectGetWidth(v219);
        v173 = [array2 objectAtIndexedSubscript:v35 + 1];
        [v173 bounds];
        v51 = CGRectGetHeight(v220);
        v172 = [array2 objectAtIndexedSubscript:v35 + 2];
        [v172 bounds];
        v52 = CGRectGetWidth(v221);
        v171 = [array2 objectAtIndexedSubscript:v35 + 2];
        [v171 bounds];
        if (v50 * v51 - v52 * CGRectGetHeight(v222) < 0.0)
        {
          v183 = [array2 objectAtIndexedSubscript:v35 + 1];
          [v183 bounds];
          v58 = CGRectGetWidth(v227);
          aRect = [array2 objectAtIndexedSubscript:v35 + 1];
          [aRect bounds];
          v59 = CGRectGetHeight(v228);
          v178 = [array2 objectAtIndexedSubscript:v35 + 2];
          [v178 bounds];
          v60 = CGRectGetWidth(v229);
          v56 = [array2 objectAtIndexedSubscript:v35 + 2];
          [v56 bounds];
          v57 = -(v58 * v59 - v60 * CGRectGetHeight(v230));
        }

        else
        {
          v183 = [array2 objectAtIndexedSubscript:v35 + 1];
          [v183 bounds];
          v53 = CGRectGetWidth(v223);
          aRect = [array2 objectAtIndexedSubscript:v35 + 1];
          [aRect bounds];
          v54 = CGRectGetHeight(v224);
          v178 = [array2 objectAtIndexedSubscript:v35 + 2];
          [v178 bounds];
          v55 = CGRectGetWidth(v225);
          v56 = [array2 objectAtIndexedSubscript:v35 + 2];
          [v56 bounds];
          v57 = v53 * v54 - v55 * CGRectGetHeight(v226);
        }

        v170 = [array2 objectAtIndexedSubscript:v35 + 2];
        [v170 bounds];
        v61 = CGRectGetWidth(v231);
        v169 = [array2 objectAtIndexedSubscript:v35 + 2];
        [v169 bounds];
        v62 = CGRectGetHeight(v232);
        v63 = [array2 objectAtIndexedSubscript:v35 + 3];
        [v63 bounds];
        v64 = CGRectGetWidth(v233);
        v65 = [array2 objectAtIndexedSubscript:v35 + 3];
        [v65 bounds];
        v66 = v45 + v57;
        if (v61 * v62 - v64 * CGRectGetHeight(v234) >= 0.0)
        {
          v67 = [array2 objectAtIndexedSubscript:v35 + 2];
          [v67 bounds];
          v76 = CGRectGetWidth(v239);
          v69 = [array2 objectAtIndexedSubscript:v35 + 2];
          [v69 bounds];
          v77 = CGRectGetHeight(v240);
          v71 = [array2 objectAtIndexedSubscript:v35 + 3];
          [v71 bounds];
          v78 = CGRectGetWidth(v241);
          v73 = [array2 objectAtIndexedSubscript:v35 + 3];
          [v73 bounds];
          v74 = v49;
          v75 = v66 + v76 * v77 - v78 * CGRectGetHeight(v242);
        }

        else
        {
          v67 = [array2 objectAtIndexedSubscript:v35 + 2];
          [v67 bounds];
          v68 = CGRectGetWidth(v235);
          v69 = [array2 objectAtIndexedSubscript:v35 + 2];
          [v69 bounds];
          v70 = CGRectGetHeight(v236);
          v71 = [array2 objectAtIndexedSubscript:v35 + 3];
          [v71 bounds];
          v72 = CGRectGetWidth(v237);
          v73 = [array2 objectAtIndexedSubscript:v35 + 3];
          [v73 bounds];
          v74 = v49;
          v75 = v66 - (v68 * v70 - v72 * CGRectGetHeight(v238));
        }

        v35 = v39;
        v79 = v186;
        v81 = v165;
        v80 = v166;
        v82 = v167;
        if (v41 < 0.0)
        {
          v79 = v162;
          v81 = v163;
          v80 = v164;
          v82 = v168;
        }

        v83 = v75;
        v9 = v186;
        if (v36 > v83)
        {
          v84 = [array2 subarrayWithRange:{v35 - 1, 4}];

          v155 = v84;
          v36 = v83;
          v9 = v186;
        }
      }

      v85 = [v155 sortedArrayUsingComparator:&__block_literal_global_401];

      v86 = [v85 objectAtIndexedSubscript:0];
      [v86 bounds];
      v88 = v87;
      v90 = v89;
      v91 = [v85 objectAtIndexedSubscript:1];
      v184 = v90;
      v187 = v88;
      [v91 bounds];
      v179 = v93;
      aRectb = v92;

      v94 = [v85 objectAtIndexedSubscript:1];
      [v94 bounds];
      v96 = v95;
      v98 = v97;
      v99 = [v85 objectAtIndexedSubscript:2];
      [v99 bounds];
      v101 = v100;
      v103 = v102;

      v104 = [v85 objectAtIndexedSubscript:2];
      [v104 bounds];
      v106 = v105;
      v108 = v107;
      v109 = [v85 objectAtIndexedSubscript:3];
      [v109 bounds];
      v111 = v110;
      v113 = v112;

      v114 = (v184 - v179) * (v184 - v179) + (v187 - aRectb) * (v187 - aRectb);
      v115 = sqrtf(v114);
      v116 = (v98 - v103) * (v98 - v103) + (v96 - v101) * (v96 - v101);
      v117 = sqrtf(v116);
      if (vabds_f32(v115, v117) < 0.01)
      {
        v118 = (v108 - v113) * (v108 - v113) + (v106 - v111) * (v106 - v111);
        if (vabds_f32(v117, sqrtf(v118)) < 0.01)
        {
          v119 = [objc_alloc(MEMORY[0x277D700B0]) initWithOrderedFeatures:v85];
          [v119 bounds];
          v121 = v120;
          v123 = v122;
          v125 = v124;
          v127 = v126;
          [v119 bounds];
          v129 = v128;
          [v119 bounds];
          v131 = v130 * -0.100000001;
          v243.origin.x = v121;
          v243.origin.y = v123;
          v243.size.width = v125;
          v243.size.height = v127;
          v244 = CGRectInset(v243, v129 * -0.0500000007, v131);
          v185 = v244.origin.y;
          v188 = v244.origin.x;
          aRecta = v244.size.width;
          v132 = v244.size.height;
          v133 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v85, "count")}];
          v193 = 0u;
          v194 = 0u;
          v191 = 0u;
          v192 = 0u;
          v134 = v85;
          v135 = [v134 countByEnumeratingWithState:&v191 objects:v200 count:16];
          if (v135)
          {
            v136 = *v192;
            do
            {
              for (j = 0; j != v135; ++j)
              {
                if (*v192 != v136)
                {
                  objc_enumerationMutation(v134);
                }

                [*(*(&v191 + 1) + 8 * j) bounds];
                v139 = v138;
                v141 = v140;
                v143 = v142;
                v145 = v144;
                [v119 bounds];
                v147 = v146;
                [v119 bounds];
                v149 = v148 * -0.100000001;
                v245.origin.x = v139;
                v245.origin.y = v141;
                v245.size.width = v143;
                v245.size.height = v145;
                v246 = CGRectInset(v245, v147 * -0.0500000007, v149);
                v150 = NSStringFromRect(v246);
                [v133 addObject:v150];
              }

              v135 = [v134 countByEnumeratingWithState:&v191 objects:v200 count:16];
            }

            while (v135);
          }

          v151 = MEMORY[0x277CBEAC0];
          v247.origin.y = v185;
          v247.origin.x = v188;
          v247.size.width = aRecta;
          v247.size.height = v132;
          v152 = NSStringFromRect(v247);
          v153 = [v151 dictionaryWithObjectsAndKeys:{v152, @"paddedRect", v133, @"paddedRects", v119, @"textFeatures", 0}];
          [array addObject:v153];
        }
      }
    }
  }

  return array;
}

uint64_t __38__CRCameraReader_targetRectsForImage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 bounds];
  Width = CGRectGetWidth(v11);
  [v4 bounds];
  Height = CGRectGetHeight(v12);
  [v5 bounds];
  v8 = CGRectGetWidth(v13);
  [v5 bounds];
  if (Width * Height < v8 * CGRectGetHeight(v14))
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

uint64_t __38__CRCameraReader_targetRectsForImage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 bounds];
  v6 = v5;
  [v4 bounds];
  if (v6 >= v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)findCCObjectEmbossed:(id)embossed inImage:(id)image forRect:(id)rect
{
  embossedCopy = embossed;
  imageCopy = image;
  v29 = NSRectFromString(rect);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  height = [imageCopy height];
  width = [imageCopy width];
  height2 = [imageCopy height];
  v17 = 28.0 / (height * height);
  v18 = v17;
  v30.size.width = v18 * width;
  v30.size.height = v18 * height2;
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v31 = CGRectIntegral(v30);
  v19 = [imageCopy imageByScalingToWidth:v31.size.width height:{v31.size.height, v31.origin.x, v31.origin.y}];
  width2 = [v19 width];
  width3 = [v19 width];
  height3 = [v19 height];
  height4 = [v19 height];
  v32.origin.x = x * width2;
  v32.size.width = width * width3;
  v32.origin.y = y * height3;
  v32.size.height = height * height4;
  v33 = CGRectIntegral(v32);
  *&v33.size.width = v33.size.width * 0.125;
  v24 = [v19 imageByCroppingRectangle:{v33.origin.x, v33.origin.y, ((ceilf(*&v33.size.width) * 8.0) + -5.0), 28.0}];
  if ([embossedCopy isEqualToString:@"CROutputTypeCreditCardName"])
  {
    v25 = [(CRCameraReader *)self findCCNameInImageEmbossed:v24];
LABEL_5:
    v26 = v25;
    goto LABEL_7;
  }

  if ([embossedCopy isEqualToString:@"CRCameraReaderCreditCardExpirationDate"])
  {
    v25 = [(CRCameraReader *)self findCCExpDateInImageEmbossed:v24];
    goto LABEL_5;
  }

  v26 = 0;
LABEL_7:

  return v26;
}

- (id)findObjectsFlat:(id)flat inImage:(id)image numberRects:(id)rects invert:(BOOL)invert
{
  invertCopy = invert;
  v149 = *MEMORY[0x277D85DE8];
  flatCopy = flat;
  imageCopy = image;
  rectsCopy = rects;
  date = [MEMORY[0x277CBEAA8] date];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v12 = [standardUserDefaults objectForKey:@"com.apple.CoreRecognition.show_engine_name"];
  bOOLValue = [v12 BOOLValue];

  height = [imageCopy height];
  v14 = height > [imageCopy width];
  v109 = [MEMORY[0x277CBEB98] setWithArray:flatCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:MEMORY[0x277CBEC38] forKey:@"isDetectedRect"];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v14];
  [dictionary setObject:v15 forKey:@"isPortrait"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:invertCopy];
  [dictionary setObject:v16 forKey:@"inverted"];

  v119 = [v109 containsObject:@"CROutputTypeCreditCardName"];
  v115 = [v109 containsObject:@"CRCameraReaderCreditCardExpirationDate"];
  array = [MEMORY[0x277CBEB18] array];
  v17 = +[CRInsights sharedInsights];
  takeContextSnapshot = [v17 takeContextSnapshot];

  v140[0] = MEMORY[0x277D85DD0];
  v140[1] = 3221225472;
  v140[2] = __61__CRCameraReader_findObjectsFlat_inImage_numberRects_invert___block_invoke;
  v140[3] = &unk_278EAA8C8;
  v145 = v14;
  v106 = takeContextSnapshot;
  v141 = v106;
  selfCopy = self;
  v105 = imageCopy;
  v143 = v105;
  v146 = invertCopy;
  v19 = array;
  v144 = v19;
  [rectsCopy enumerateObjectsWithOptions:1 usingBlock:v140];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v20 = +[CRInsights sharedInsights];
  if (v20)
  {
    v21 = +[CRInsights sharedInsights];
    v22 = [v21 allowOverrideWithKey:@"kCROverrideShouldRunOffline" forResultFromBlock:&__block_literal_global_438];
  }

  else
  {
    v22 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v21 = v22;
  }

  if ([v22 BOOLValue])
  {
    array4 = [MEMORY[0x277CBEB18] array];
    if (!v20)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  array4 = 0;
  if (v20)
  {
LABEL_8:
  }

LABEL_9:

  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  obj = v19;
  v121 = [obj countByEnumeratingWithState:&v136 objects:v148 count:16];
  if (!v121)
  {
    goto LABEL_77;
  }

  v120 = *v137;
  do
  {
    for (i = 0; i != v121; ++i)
    {
      if (*v137 != v120)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v136 + 1) + 8 * i);
      v24 = [v23 objectForKey:@"Cardholder"];
      v128 = [v24 mutableCopy];

      v25 = [v23 objectForKey:@"Expiration"];
      v126 = [v25 mutableCopy];

      v26 = +[CRInsights sharedInsights];
      if (v26)
      {
        v123 = +[CRInsights sharedInsights];
        v27 = [v123 allowOverrideWithKey:@"kCROverrideShouldRunOffline" forResultFromBlock:&__block_literal_global_440];
        v122 = v27;
      }

      else
      {
        v27 = [MEMORY[0x277CCABB0] numberWithBool:0];
        v124 = v27;
      }

      bOOLValue2 = [v27 BOOLValue];
      v29 = v124;
      if (v26)
      {

        v29 = v123;
      }

      if (bOOLValue2)
      {
        v30 = [v23 objectForKey:@"cardnumberFragmented"];
        if (v30)
        {
          [v23 objectForKey:@"cardnumberFragmented"];
        }

        else
        {
          [v23 objectForKey:@"CardNumber"];
        }
        v31 = ;

        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v32 = v31;
        v33 = [v32 countByEnumeratingWithState:&v132 objects:v147 count:16];
        if (v33)
        {
          v34 = *v133;
          do
          {
            for (j = 0; j != v33; ++j)
            {
              if (*v133 != v34)
              {
                objc_enumerationMutation(v32);
              }

              v36 = [*(*(&v132 + 1) + 8 * j) mutableCopy];
              v37 = [v36 objectForKey:@"code"];
              v38 = v37 == 0;

              if (!v38)
              {
                v39 = [v23 objectForKey:@"fieldCutRect"];
                [v36 setObject:v39 forKey:@"numberCutRect"];

                v40 = [v23 objectForKey:@"codeOrigin"];
                [v36 setObject:v40 forKey:@"codeOrigin"];

                v41 = [v23 objectForKey:@"codeFragmentOrigins"];
                if (v41)
                {
                  [v36 setObject:v41 forKey:@"codeFragmentOrigins"];
                }

                [array4 addObject:v36];
              }
            }

            v33 = [v32 countByEnumeratingWithState:&v132 objects:v147 count:16];
          }

          while (v33);
        }
      }

      v42 = [v23 objectForKey:@"code"];
      v43 = v42 == 0;

      if (!v43)
      {
        v44 = [v23 objectForKey:@"code"];
        [dictionary setObject:v44 forKey:@"code"];

        v45 = [v23 objectForKey:@"accepted"];
        [dictionary setObject:v45 forKey:@"accepted"];

        v46 = [v23 objectForKey:@"codeOrigin"];
        [dictionary setObject:v46 forKey:@"codeOrigin"];

        v47 = [v23 objectForKey:@"codeFragmentOrigins"];
        if (v47)
        {
          [dictionary setObject:v47 forKey:@"codeFragmentOrigins"];
        }

        goto LABEL_38;
      }

      if (v126)
      {
        v48 = v115;
      }

      else
      {
        v48 = 0;
      }

      if (v48 == 1)
      {
        v49 = [v23 objectForKey:@"fieldCutRect"];
        [v126 setObject:v49 forKey:@"expDateCutRect"];

        v50 = [v23 objectForKey:@"dateOrigin"];
        [v126 setObject:v50 forKey:@"dateOrigin"];

        [array3 addObject:v126];
        v51 = [v126 objectForKey:@"expDateAccepted"];
        v52 = v51 == 0;

        if (!v52)
        {
          v53 = [v126 objectForKey:@"expirationDate"];
          [dictionary setObject:v53 forKey:@"expirationDate"];

          v54 = +[CRInsights sharedInsights];
          [v54 provideInsightValue:v126 forKey:@"expirationDate"];

          v55 = [v126 objectForKey:@"expirationYear"];
          v56 = v55 == 0;

          if (!v56)
          {
            v57 = [v126 objectForKey:@"expirationYear"];
            [dictionary setObject:v57 forKey:@"expirationYear"];
          }

          v58 = [v126 objectForKey:@"expirationMonth"];
          v59 = v58 == 0;

          if (!v59)
          {
            v60 = [v126 objectForKey:@"expirationMonth"];
            [dictionary setObject:v60 forKey:@"expirationMonth"];
          }

          v61 = [v126 objectForKey:@"expirationDay"];
          v62 = v61 == 0;

          if (!v62)
          {
            v63 = [v126 objectForKey:@"expirationDay"];
            [dictionary setObject:v63 forKey:@"expirationDay"];
          }

          v64 = [v126 objectForKey:@"dateOrigin"];
          v65 = v64 == 0;

          if (!v65)
          {
            v47 = [v126 objectForKey:@"dateOrigin"];
            [dictionary setObject:v47 forKey:@"dateOrigin"];
LABEL_38:
          }
        }
      }

      if (v128)
      {
        v66 = v119;
      }

      else
      {
        v66 = 0;
      }

      if (v66 == 1)
      {
        v67 = [v128 objectForKey:@"nameResult"];
        v68 = [MEMORY[0x277CCABB0] numberWithBool:isValidNameString(v67)];
        [v128 setObject:v68 forKey:@"isValidNameString"];

        v69 = [MEMORY[0x277CCABB0] numberWithBool:isNonNameString(v67)];
        [v128 setObject:v69 forKey:@"isNonNameString"];

        v70 = [v23 objectForKey:@"fieldCutRect"];
        [v128 setObject:v70 forKey:@"nameCutRect"];

        v71 = [v23 objectForKey:@"nameOrigin"];
        [v128 setObject:v71 forKey:@"nameOrigin"];

        v72 = +[CRInsights sharedInsights];
        if (v72)
        {
          v73 = +[CRInsights sharedInsights];
          v130[0] = MEMORY[0x277D85DD0];
          v130[1] = 3221225472;
          v130[2] = __61__CRCameraReader_findObjectsFlat_inImage_numberRects_invert___block_invoke_4;
          v130[3] = &unk_278EAA7E0;
          v131 = v128;
          v74 = [v73 allowOverrideWithKey:@"kCROverrideShouldRunOffline" forResultFromBlock:v130];
          v118 = v74;
        }

        else
        {
          v75 = MEMORY[0x277CCABB0];
          v73 = [v128 objectForKey:@"isNonNameString"];
          v74 = [v75 numberWithBool:{objc_msgSend(v73, "BOOLValue") ^ 1}];
          v117 = v74;
        }

        bOOLValue3 = [v74 BOOLValue];
        v77 = v117;
        if (v72)
        {
          v77 = v118;
        }

        if (bOOLValue3)
        {
          [array2 addObject:v128];
        }

        if (v72)
        {
        }

        v78 = [v128 objectForKey:@"nameAccepted"];
        v79 = v78 == 0;

        if (!v79)
        {
          if (bOOLValue)
          {
            [v128 objectForKey:@"nameResult"];
          }

          else
          {
            [v128 objectForKey:@"closestNameMatch"];
          }
          v80 = ;
          [v128 setObject:v80 forKey:@"cardholderName"];

          v81 = [v128 objectForKey:@"cardholderName"];
          [dictionary setObject:v81 forKey:@"cardholderName"];

          v82 = [v23 objectForKey:@"fieldCutRect"];
          [dictionary setObject:v82 forKey:@"nameCutRect"];

          v83 = [v23 objectForKey:@"nameOrigin"];
          [dictionary setObject:v83 forKey:@"nameOrigin"];
        }
      }

      v84 = [dictionary objectForKey:@"cardholderName"];
      v85 = v84 == 0;

      if (v85)
      {
        v86 = [v128 objectForKey:@"nameResult"];
        v87 = [v128 objectForKey:@"isValidNameString"];
        bOOLValue4 = [v87 BOOLValue];

        if (bOOLValue4)
        {
          [dictionary setObject:v86 forKey:@"cardholderName"];
          v89 = +[CRInsights sharedInsights];
          [v89 provideInsightValue:v86 forKey:@"nameResults"];
        }
      }
    }

    v121 = [obj countByEnumeratingWithState:&v136 objects:v148 count:16];
  }

  while (v121);
LABEL_77:

  v90 = MEMORY[0x277CCABB0];
  [date timeIntervalSinceNow];
  v92 = [v90 numberWithDouble:-v91];
  [dictionary setObject:v92 forKey:@"recognitionTime"];

  v93 = +[CRInsights sharedInsights];
  v94 = MEMORY[0x277CCABB0];
  [date timeIntervalSinceNow];
  v96 = [v94 numberWithDouble:-v95];
  [v93 provideInsightValue:v96 forKey:@"recognitionTime"];

  [dictionary setObject:array3 forKey:@"expDateResults"];
  [dictionary setObject:array2 forKey:@"nameResults"];
  v97 = +[CRInsights sharedInsights];
  if (v97)
  {
    v98 = +[CRInsights sharedInsights];
    v99 = [v98 allowOverrideWithKey:@"kCROverrideShouldRunOffline" forResultFromBlock:&__block_literal_global_460];
  }

  else
  {
    v99 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v98 = v99;
  }

  bOOLValue5 = [v99 BOOLValue];
  if (v97)
  {
  }

  if (bOOLValue5)
  {
    [dictionary setObject:array4 forKey:@"numberResults"];
  }

  v101 = +[CRInsights sharedInsights];
  [v101 provideInsightValue:array4 forKey:@"numberResults"];

  v102 = +[CRInsights sharedInsights];
  [v102 provideInsightValue:array3 forKey:@"expDateResults"];

  v103 = +[CRInsights sharedInsights];
  [v103 provideInsightValue:array2 forKey:@"nameResults"];

  return dictionary;
}

void __61__CRCameraReader_findObjectsFlat_inImage_numberRects_invert___block_invoke(uint64_t a1, void *a2)
{
  v48 = a2;
  v3 = +[CRInsights sharedInsights];
  [v3 attachContextCopyToCurrentThread:*(a1 + 32)];

  v47 = [v48 objectForKey:@"paddedRect"];
  v4 = [v48 objectForKey:@"textFeatures"];
  v55 = NSRectFromString(v47);
  x = v55.origin.x;
  y = v55.origin.y;
  width = v55.size.width;
  height = v55.size.height;
  if (*(a1 + 64))
  {
    v9 = 85.685;
  }

  else
  {
    v9 = 54.05;
  }

  if (*(a1 + 64))
  {
    v10 = 54.05;
  }

  else
  {
    v10 = 85.685;
  }

  v11 = [*(a1 + 40) findCCResultsInImageFlat:*(a1 + 48) usingTextFeatures:v4 invert:*(a1 + 65)];
  v46 = width;
  v12 = [v11 mutableCopy];
  v13 = (1.0 - y - height) * v9;
  v14 = height * v9;
  v15 = x * v10;

  if (*(a1 + 65))
  {
    v16 = 54.05 - v13 - v14;
  }

  else
  {
    v16 = v13;
  }

  v50.x = v15;
  v50.y = v16;
  v17 = NSStringFromPoint(v50);
  [v12 setObject:v17 forKey:@"fieldOrigin"];

  v56.origin.x = v15;
  v56.origin.y = v13;
  v56.size.width = v46 * v10;
  v56.size.height = v14;
  v18 = NSStringFromRect(v56);
  [v12 setObject:v18 forKey:@"fieldCutRect"];

  v19 = [v12 objectForKey:@"Expiration"];
  v20 = [v19 objectForKey:@"normalizedDateOffset"];
  [v20 floatValue];
  v22 = v21;

  v23 = [v12 objectForKey:@"Cardholder"];
  v24 = [v23 objectForKey:@"normalizedNameOffset"];
  [v24 floatValue];
  v26 = v25;

  v51.x = v22 * 85.685;
  v51.y = v16;
  v27 = NSStringFromPoint(v51);
  [v12 setObject:v27 forKey:@"dateOrigin"];

  v52.x = v26 * 85.685;
  v52.y = v16;
  v28 = NSStringFromPoint(v52);
  [v12 setObject:v28 forKey:@"nameOrigin"];

  v53.x = v15;
  v53.y = v16;
  v29 = NSStringFromPoint(v53);
  [v12 setObject:v29 forKey:@"codeOrigin"];

  v30 = [v48 objectForKey:@"paddedRects"];
  v31 = v30;
  if (v30)
  {
    v32 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v30, "count")}];
    v33 = [v12 objectForKey:@"CardNumber"];
    for (i = 0; i < [v31 count] && i < objc_msgSend(v33, "count"); ++i)
    {
      v35 = [v31 objectAtIndex:i];
      v57 = NSRectFromString(v35);
      v36 = v57.origin.x;
      v37 = v57.origin.y;
      v38 = v57.size.height;

      if (*(a1 + 65))
      {
        v39 = 54.05 - (1.0 - v37 - v38) * 54.05 - v38 * 54.05;
      }

      else
      {
        v39 = (1.0 - v37 - v38) * 54.05;
      }

      v40 = [v33 objectAtIndex:i];
      v41 = [v40 objectForKey:@"normalizedCodeOffset"];
      [v41 floatValue];
      v43 = v42;

      v54.x = v36 * 85.685 + v43 * 85.685;
      v54.y = v39;
      v44 = NSStringFromPoint(v54);
      [v32 addObject:v44];
    }

    [v12 setObject:v32 forKey:@"codeFragmentOrigins"];
  }

  v45 = *(a1 + 56);
  objc_sync_enter(v45);
  [*(a1 + 56) addObject:v12];
  objc_sync_exit(v45);
}

id __61__CRCameraReader_findObjectsFlat_inImage_numberRects_invert___block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) objectForKey:@"isNonNameString"];
  v3 = [v1 numberWithBool:{objc_msgSend(v2, "BOOLValue") ^ 1}];

  return v3;
}

- (id)findCCObjectsEmbossed:(id)embossed inImage:(id)image numberRects:(id)rects nameRects:(id)nameRects dateRects:(id)dateRects
{
  v208 = *MEMORY[0x277D85DE8];
  embossedCopy = embossed;
  imageCopy = image;
  rectsCopy = rects;
  nameRectsCopy = nameRects;
  dateRectsCopy = dateRects;
  v126 = clock();
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v13 = [standardUserDefaults objectForKey:@"com.apple.CoreRecognition.exaustive_search"];
  bOOLValue = [v13 BOOLValue];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v15 = [standardUserDefaults2 objectForKey:@"com.apple.CoreRecognition.show_engine_name"];
  LODWORD(v123) = [v15 BOOLValue];

  height = [imageCopy height];
  width = [imageCopy width];
  v133 = [MEMORY[0x277CBEB98] setWithArray:embossedCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v127 = [v133 containsObject:@"CROutputTypeCreditCardName"];
  HIDWORD(v123) = [v133 containsObject:@"CRCameraReaderCreditCardExpirationDate"];
  v210.origin.x = *MEMORY[0x277CBF348];
  v210.origin.y = *(MEMORY[0x277CBF348] + 8);
  v210.size.width = 428.425;
  v210.size.height = 270.25;
  v211 = CGRectIntegral(v210);
  height = v211.size.height;
  y = v211.origin.y;
  if (height <= width)
  {
    width = v211.size.height;
    height = v211.size.width;
    x = v211.origin.y;
    y = v211.origin.x;
  }

  else
  {
    width = v211.size.width;
    x = v211.origin.x;
  }

  v128 = clock();
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  obj = rectsCopy;
  v18 = [obj countByEnumeratingWithState:&v202 objects:v207 count:16];
  if (v18)
  {
    v177 = 0;
    v139 = *v203;
    v19 = 54.05;
    if (height <= width)
    {
      v20 = 54.05;
    }

    else
    {
      v20 = 85.685;
    }

    if (height <= width)
    {
      v19 = 85.685;
    }

    v137 = v19;
    v138 = v20;
    while (2)
    {
      v175 = 0;
      v140 = v18;
      do
      {
        if (*v203 != v139)
        {
          objc_enumerationMutation(obj);
        }

        v150 = *(*(&v202 + 1) + 8 * v175);
        v212 = NSRectFromString(v150);
        v172 = v212.origin.x;
        v21 = v212.origin.y;
        v22 = v212.size.width;
        v23 = v212.size.height;
        *&v212.origin.x = 28.0 / (width * v212.size.height);
        v212.origin.x = *&v212.origin.x;
        v212.size.width = height * v212.origin.x;
        v212.size.height = width * v212.origin.x;
        v212.origin.x = y;
        v212.origin.y = x;
        v213 = CGRectIntegral(v212);
        v24 = v213.origin.x;
        v25 = v213.origin.y;
        v26 = v213.size.width;
        v27 = v213.size.height;
        v213.origin.x = *MEMORY[0x277CBF348];
        v213.origin.y = *(MEMORY[0x277CBF348] + 8);
        v213.size.height = 405.375;
        v213.size.width = 642.6375;
        CGRectIntegral(v213);
        v160 = v21 + 0.035;
        v155 = v21 + 0.035 + 0.01;
        v169.x = v137 * v172;
        v169.y = v138 * (1.0 - v21 - v23);
        v147 = v137 * v22;
        v148 = v138 * v23;
        if (height > width)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        if (height > width)
        {
          v29 = v27;
        }

        else
        {
          v29 = v26;
        }

        if (height > width)
        {
          v30 = v24;
        }

        else
        {
          v30 = v25;
        }

        v152 = v30;
        if (height <= width)
        {
          v25 = v24;
        }

        v163 = v7;
        width = v28;
        height = v29;
        v31 = [imageCopy imageByScalingToWidth:v29 height:{v28, v123}];
        width2 = [v31 width];
        v32 = v23 * 0.65;
        width3 = [v31 width];
        height2 = [v31 height];
        height3 = [v31 height];
        width4 = [v31 width];
        width5 = [v31 width];
        height4 = [v31 height];
        height5 = [v31 height];
        width6 = [v31 width];
        width7 = [v31 width];
        height6 = [v31 height];
        height7 = [v31 height];
        v214.origin.x = v172 * width2;
        v214.size.width = v22 * width3;
        v214.origin.y = v21 * height2;
        v214.size.height = v23 * height3;
        v215 = CGRectIntegral(v214);
        v42 = v215.origin.x;
        v43 = v215.origin.y;
        v44 = v215.size.width;
        v215.origin.x = width4 * 0.85;
        v215.size.width = width5 * 0.06;
        v215.origin.y = v160 * height4;
        v215.size.height = v32 * height5;
        v216 = CGRectIntegral(v215);
        v173 = v216.origin.x;
        v161 = v216.origin.y;
        v7 = v163;
        v45 = v216.size.width;
        v46 = v32;
        v47 = v216.size.height;
        v216.origin.x = width6 * 0.85;
        v216.size.width = width7 * 0.06;
        v216.origin.y = v155 * height6;
        v216.size.height = v46 * height7;
        v217 = CGRectIntegral(v216);
        v156 = v217.origin.y;
        v158 = v217.origin.x;
        v154 = v217.size.height;
        v48 = v217.size.width;
        *&v217.origin.x = v44 * 0.125;
        v49 = ((ceilf(*&v217.origin.x) * 8.0) + -5.0);
        v50 = [v31 imageByCroppingRectangle:{v42, v43, v49, 28.0}];
        y = v25;
        [(CRCameraReader *)self findCCNumberInImageEmbossed:v50];
        v51 = x = v152;

        v52 = [v51 objectForKey:@"code"];
        LODWORD(width7) = v52 == 0;

        if (width7)
        {
          v218.size.height = 28.0;
          v218.origin.x = v42;
          v218.origin.y = v43;
          v218.size.width = v49;
          v219 = CGRectInset(v218, 60.0, 0.0);
          v53 = [v31 imageByCroppingRectangle:{v219.origin.x, v219.origin.y, v219.size.width, v219.size.height}];

          v54 = v45 * 0.125;
          v55 = [v31 imageByCroppingRectangle:{v173, v161, ((ceilf(v54) * 8.0) + -5.0), v47}];
          v177 = [(CRCameraReader *)self findCCNumberInImageEmbossed:v53 withFinalDigit:v55];

          v56 = [v177 objectForKey:@"code"];
          v57 = v56 == 0;

          if (v57)
          {
            v58 = v48 * 0.125;
            v59 = [v31 imageByCroppingRectangle:{v158, v156, ((ceilf(v58) * 8.0) + -5.0), v154}];
            v60 = [(CRCameraReader *)self findCCNumberInImageEmbossed:v53 withFinalDigit:v59];

            v177 = v60;
          }

          v50 = v53;
        }

        else
        {
          v177 = v51;
        }

        v61 = +[CRInsights sharedInsights];
        if (v61)
        {
          v7 = +[CRInsights sharedInsights];
          v62 = [v7 allowOverrideWithKey:@"kCROverrideShouldRunOffline" forResultFromBlock:&__block_literal_global_465];
          v143 = v62;
        }

        else
        {
          v62 = [MEMORY[0x277CCABB0] numberWithBool:0];
          v144 = v62;
        }

        bOOLValue2 = [v62 BOOLValue];
        v64 = v144;
        if (v61)
        {

          v64 = v7;
        }

        if (bOOLValue2)
        {
          v65 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v177];
          v220.origin = v169;
          v220.size.width = v147;
          v220.size.height = v148;
          v66 = NSStringFromRect(v220);
          [v65 setObject:v66 forKey:@"numberCutRect"];

          v67 = NSStringFromPoint(v169);
          [v65 setObject:v67 forKey:@"codeOrigin"];

          v68 = [v177 objectForKey:@"accepted"];
          LOBYTE(v67) = v68 == 0;

          if ((v67 & 1) == 0)
          {
            [dictionary2 addEntriesFromDictionary:v65];
            v69 = NSStringFromPoint(v169);
            [dictionary2 setObject:v69 forKey:@"codeOrigin"];

            v145 = [MEMORY[0x277CCABB0] numberWithBool:height > width];
            [dictionary2 setObject:v145 forKey:@"isPortrait"];

            if ((bOOLValue & 1) == 0)
            {
              goto LABEL_45;
            }
          }
        }

        else
        {
          [dictionary addEntriesFromDictionary:v177];
          v71 = [v177 objectForKey:@"accepted"];
          v72 = v71 == 0;

          if (!v72)
          {
            v73 = NSStringFromPoint(v169);
            [dictionary setObject:v73 forKey:@"codeOrigin"];

            v1452 = [MEMORY[0x277CCABB0] numberWithBool:height > width];
            [dictionary setObject:v1452 forKey:@"isPortrait"];

            v65 = +[CRInsights sharedInsights];
            [v65 provideInsightValue:v177 forKey:@"CRInsightsRecognitionResultForNumberEmbossed"];
LABEL_45:

            goto LABEL_46;
          }
        }

        ++v175;
      }

      while (v140 != v175);
      v18 = [obj countByEnumeratingWithState:&v202 objects:v207 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v177 = 0;
  }

LABEL_46:

  *&v75 = (clock() - v128) / 1000000.0;
  v76 = [MEMORY[0x277CCABB0] numberWithFloat:v75];
  [dictionary setObject:v76 forKey:@"codeRecognitionTime"];

  v77 = +[CRInsights sharedInsights];
  if (v77)
  {
    v78 = +[CRInsights sharedInsights];
    v79 = [v78 allowOverrideWithKey:@"kCROverrideShouldRunOffline" forResultFromBlock:&__block_literal_global_470];
  }

  else
  {
    v79 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v78 = v79;
  }

  if ([v79 BOOLValue])
  {
    bOOLValue3 = 1;
  }

  else
  {
    v81 = [v177 objectForKey:@"accepted"];
    bOOLValue3 = [v81 BOOLValue];
  }

  if (v77)
  {
  }

  if (bOOLValue3)
  {
    group = dispatch_group_create();
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    if (v127)
    {
      v82 = clock();
      array = [MEMORY[0x277CBEB18] array];
      v162 = v82;
      v164 = [MEMORY[0x277CBEB58] set];
      v83 = +[CRInsights sharedInsights];
      takeContextSnapshot = [v83 takeContextSnapshot];

      v192[0] = MEMORY[0x277D85DD0];
      v192[1] = 3221225472;
      v192[2] = __80__CRCameraReader_findCCObjectsEmbossed_inImage_numberRects_nameRects_dateRects___block_invoke_3;
      v192[3] = &unk_278EAA8F0;
      v159 = takeContextSnapshot;
      v193 = v159;
      selfCopy = self;
      v195 = imageCopy;
      v199 = height > width;
      v200 = 0;
      v170 = array;
      v196 = v170;
      v201 = v124;
      v85 = dictionary3;
      v197 = v85;
      v168 = v164;
      v198 = v168;
      [nameRectsCopy enumerateObjectsWithOptions:1 usingBlock:v192];
      v86 = [v85 objectForKey:?];
      LODWORD(takeContextSnapshot) = v86 == 0;

      if (takeContextSnapshot)
      {
        v191 = 0u;
        v189 = 0u;
        v190 = 0u;
        v188 = 0u;
        v87 = v170;
        v88 = [v87 countByEnumeratingWithState:&v188 objects:v206 count:16];
        if (v88)
        {
          v89 = *v189;
          while (2)
          {
            for (i = 0; i != v88; ++i)
            {
              if (*v189 != v89)
              {
                objc_enumerationMutation(v87);
              }

              v91 = *(*(&v188 + 1) + 8 * i);
              v92 = [v91 objectForKey:@"nameResult"];
              v93 = [v91 objectForKey:@"isValidNameString"];
              bOOLValue4 = [v93 BOOLValue];

              if (bOOLValue4)
              {
                [v85 setObject:v92 forKey:@"cardholderName"];

                goto LABEL_67;
              }
            }

            v88 = [v87 countByEnumeratingWithState:&v188 objects:v206 count:16];
            if (v88)
            {
              continue;
            }

            break;
          }
        }

LABEL_67:
      }

      [v85 setObject:v170 forKey:@"nameResults"];
      [nameRectsCopy removeAllObjects];
      allObjects = [v168 allObjects];
      [nameRectsCopy addObjectsFromArray:allObjects];

      *&v96 = (clock() - v162) / 1000000.0;
      v97 = [MEMORY[0x277CCABB0] numberWithFloat:v96];
      [v85 setObject:v97 forKey:@"nameRecognitionTime"];
    }

    if (v125)
    {
      v98 = clock();
      v99 = [MEMORY[0x277CBEB58] set];
      array2 = [MEMORY[0x277CBEB18] array];
      v101 = +[CRInsights sharedInsights];
      takeContextSnapshot2 = [v101 takeContextSnapshot];

      v178[0] = MEMORY[0x277D85DD0];
      v178[1] = 3221225472;
      v178[2] = __80__CRCameraReader_findCCObjectsEmbossed_inImage_numberRects_nameRects_dateRects___block_invoke_4;
      v178[3] = &unk_278EAA8F0;
      v103 = takeContextSnapshot2;
      v179 = v103;
      selfCopy2 = self;
      v181 = imageCopy;
      v185 = height > width;
      v186 = 0;
      v104 = array2;
      v182 = v104;
      v105 = v99;
      v183 = v105;
      v106 = dictionary4;
      v184 = v106;
      v187 = bOOLValue;
      [dateRectsCopy enumerateObjectsWithOptions:1 usingBlock:v178];
      [v106 setObject:v104 forKey:@"expDateResults"];
      *&v107 = (clock() - v98) / 1000000.0;
      v108 = [MEMORY[0x277CCABB0] numberWithFloat:v107];
      [v106 setObject:v108 forKey:@"expDateRecognitionTime"];

      [dateRectsCopy removeAllObjects];
      allObjects2 = [v105 allObjects];
      [dateRectsCopy addObjectsFromArray:allObjects2];
    }

    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
    *&v110 = (clock() - v126) / 1000000.0;
    v111 = [MEMORY[0x277CCABB0] numberWithFloat:v110];
    [dictionary setObject:v111 forKey:@"totalRecognitionTime"];

    [dictionary addEntriesFromDictionary:dictionary3];
    [dictionary addEntriesFromDictionary:dictionary4];
    v112 = +[CRInsights sharedInsights];
    if (v112)
    {
      v113 = +[CRInsights sharedInsights];
      v114 = [v113 allowOverrideWithKey:@"kCROverrideShouldRunOffline" forResultFromBlock:&__block_literal_global_489];
    }

    else
    {
      v114 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v113 = v114;
    }

    bOOLValue5 = [v114 BOOLValue];
    if (v112)
    {
    }

    if (bOOLValue5)
    {
      [dictionary addEntriesFromDictionary:dictionary2];
    }

    v116 = +[CRInsights sharedInsights];
    [v116 provideInsightValue:dictionary3 forKey:@"CRInsightsRecognitionResultForNameEmbossed"];

    v117 = +[CRInsights sharedInsights];
    [v117 provideInsightValue:dictionary4 forKey:@"CRInsightsRecognitionResultForExpDateEmbossed"];

    v118 = +[CRInsights sharedInsights];
    [v118 provideInsightValue:dictionary2 forKey:@"CRInsightsRecognitionResultForNumberEmbossed"];

    v119 = +[CRInsights sharedInsights];
    [v119 provideInsightValue:dictionary2 forKey:@"numberResults"];

    v120 = +[CRInsights sharedInsights];
    [v120 provideInsightValue:dictionary3 forKey:@"nameResults"];

    v121 = +[CRInsights sharedInsights];
    [v121 provideInsightValue:dictionary4 forKey:@"expDateResults"];
  }

  return dictionary;
}

void __80__CRCameraReader_findCCObjectsEmbossed_inImage_numberRects_nameRects_dateRects___block_invoke_3(uint64_t a1, void *a2)
{
  aString = a2;
  v3 = +[CRInsights sharedInsights];
  [v3 attachContextCopyToCurrentThread:*(a1 + 32)];

  v50 = NSRectFromString(aString);
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  v8 = [*(a1 + 40) findCCObjectEmbossed:@"CROutputTypeCreditCardName" inImage:*(a1 + 48) forRect:aString];
  v9 = [v8 mutableCopy];

  if (*(a1 + 80))
  {
    v10 = 85.685;
  }

  else
  {
    v10 = 54.05;
  }

  if (*(a1 + 80))
  {
    v11 = 54.05;
  }

  else
  {
    v11 = 85.685;
  }

  v12 = [v9 objectForKey:@"nameResult"];
  v13 = height;
  v14 = (1.0 - y - height) * v10;
  v45 = v13;
  v46 = y;
  v15 = v13 * v10;
  if (*(a1 + 81))
  {
    v16 = 54.05 - v14 - v13 * v10;
  }

  else
  {
    v16 = v14;
  }

  v17 = [v9 objectForKey:@"nameOffset"];
  [v17 floatValue];
  v19 = v18;

  v51.origin.x = x * v11;
  v51.origin.y = v14;
  v51.size.width = width * v11;
  v51.size.height = v15;
  v20 = NSStringFromRect(v51);
  [v9 setObject:v20 forKey:@"nameCutRect"];

  v49.x = x * v11 + v19 / 7.5;
  v49.y = v16;
  v21 = NSStringFromPoint(v49);
  [v9 setObject:v21 forKey:@"nameOrigin"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:isValidNameString(v12)];
  [v9 setObject:v22 forKey:@"isValidNameString"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:isNonNameString(v12)];
  [v9 setObject:v23 forKey:@"isNonNameString"];

  v24 = *(a1 + 56);
  objc_sync_enter(v24);
  [*(a1 + 56) addObject:v9];
  v25 = [v9 objectForKey:@"nameAccepted"];

  if (v25)
  {
    if (*(a1 + 82) == 1)
    {
      [v9 objectForKey:@"nameResult"];
    }

    else
    {
      [v9 objectForKey:@"closestNameMatch"];
    }
    v26 = ;
    [v9 setObject:v26 forKey:@"cardholderName"];

    v27 = *(a1 + 64);
    v28 = [v9 objectForKey:@"cardholderName"];
    [v27 setObject:v28 forKey:@"cardholderName"];
  }

  v29 = [v9 objectForKey:@"isValidNameString"];
  v30 = [v29 BOOLValue];

  if (v30)
  {
    v31 = *(a1 + 72);
    v52.origin.x = x;
    v52.origin.y = v46;
    v52.size.width = width;
    v52.size.height = v45;
    v32 = NSStringFromRect(v52);
    [v31 addObject:v32];

    v53.origin.x = x;
    v53.origin.y = v46;
    v53.size.width = width;
    v53.size.height = v45;
    v54 = CGRectOffset(v53, 0.0, v45 * 0.5);
    v33 = v54.origin.x;
    v34 = v54.origin.y;
    v35 = v54.size.width;
    v36 = v54.size.height;
    v54.origin.x = x;
    v54.origin.y = v46;
    v54.size.width = width;
    v54.size.height = v45;
    v55 = CGRectOffset(v54, 0.0, v45 * -0.5);
    v37 = v55.origin.x;
    v38 = v55.origin.y;
    v39 = v55.size.width;
    v40 = v55.size.height;
    if (v34 < 1.0)
    {
      v41 = *(a1 + 72);
      v56.origin.x = v33;
      v56.origin.y = v34;
      v56.size.width = v35;
      v56.size.height = v36;
      v42 = NSStringFromRect(v56);
      [v41 addObject:v42];
    }

    if (v38 > 0.670120259)
    {
      v43 = *(a1 + 72);
      v57.origin.x = v37;
      v57.origin.y = v38;
      v57.size.width = v39;
      v57.size.height = v40;
      v44 = NSStringFromRect(v57);
      [v43 addObject:v44];
    }
  }

  objc_sync_exit(v24);
}

void __80__CRCameraReader_findCCObjectsEmbossed_inImage_numberRects_nameRects_dateRects___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  aString = a2;
  v6 = +[CRInsights sharedInsights];
  [v6 attachContextCopyToCurrentThread:*(a1 + 32)];

  v59 = NSRectFromString(aString);
  width = v59.size.width;
  x = v59.origin.x;
  y = v59.origin.y;
  height = v59.size.height;
  v10 = [*(a1 + 40) findCCObjectEmbossed:@"CRCameraReaderCreditCardExpirationDate" inImage:*(a1 + 48) forRect:aString];
  v11 = [v10 mutableCopy];

  v54 = y;
  v12 = 1.0 - y - height;
  if (*(a1 + 80))
  {
    v13 = 85.685;
  }

  else
  {
    v13 = 54.05;
  }

  if (*(a1 + 80))
  {
    v14 = 54.05;
  }

  else
  {
    v14 = 85.685;
  }

  v15 = v12 * v13;
  v16 = height * v13;
  v17 = 54.05 - v12 * v13 - height * v13;
  if (*(a1 + 81))
  {
    v18 = v17;
  }

  else
  {
    v18 = v15;
  }

  v19 = [v11 objectForKey:@"dateOffset"];
  [v19 floatValue];
  v21 = v20;

  v60.origin.x = x * v14;
  v60.origin.y = v15;
  v60.size.width = width * v14;
  v60.size.height = v16;
  v22 = NSStringFromRect(v60);
  [v11 setObject:v22 forKey:@"expDateCutRect"];

  v58.x = x * v14 + v21 / 7.5;
  v58.y = v18;
  v23 = NSStringFromPoint(v58);
  [v11 setObject:v23 forKey:@"dateOrigin"];

  v24 = *(a1 + 56);
  objc_sync_enter(v24);
  [*(a1 + 56) addObject:v11];
  v25 = [v11 objectForKey:@"expDateAccepted"];

  if (v25)
  {
    v26 = *(a1 + 64);
    v61.origin.x = x;
    v61.origin.y = v54;
    v61.size.width = width;
    v61.size.height = height;
    v27 = NSStringFromRect(v61);
    [v26 addObject:v27];

    v62.origin.x = x;
    v62.origin.y = v54;
    v62.size.width = width;
    v62.size.height = height;
    v63 = CGRectOffset(v62, 0.0, height * 0.5);
    v28 = v63.origin.x;
    v29 = v63.origin.y;
    v30 = v63.size.width;
    v31 = v63.size.height;
    v63.origin.x = x;
    v63.origin.y = v54;
    v63.size.width = width;
    v63.size.height = height;
    v64 = CGRectOffset(v63, 0.0, height * -0.5);
    v32 = v64.origin.x;
    v33 = v64.origin.y;
    v34 = v64.size.width;
    v35 = v64.size.height;
    if (v29 < 1.0)
    {
      v36 = *(a1 + 64);
      v65.origin.x = v28;
      v65.origin.y = v29;
      v65.size.width = v30;
      v65.size.height = v31;
      v37 = NSStringFromRect(v65);
      [v36 addObject:v37];
    }

    if (v33 > 0.670120259)
    {
      v38 = *(a1 + 64);
      v66.origin.x = v32;
      v66.origin.y = v33;
      v66.size.width = v34;
      v66.size.height = v35;
      v39 = NSStringFromRect(v66);
      [v38 addObject:v39];
    }

    v40 = *(a1 + 72);
    v41 = [v11 objectForKey:@"expirationDate"];
    [v40 setObject:v41 forKey:@"expirationDate"];

    v42 = [v11 objectForKey:@"expirationYear"];

    if (v42)
    {
      v43 = *(a1 + 72);
      v44 = [v11 objectForKey:@"expirationYear"];
      [v43 setObject:v44 forKey:@"expirationYear"];
    }

    v45 = [v11 objectForKey:@"expirationMonth"];

    if (v45)
    {
      v46 = *(a1 + 72);
      v47 = [v11 objectForKey:@"expirationMonth"];
      [v46 setObject:v47 forKey:@"expirationMonth"];
    }

    v48 = [v11 objectForKey:@"expirationDay"];

    if (v48)
    {
      v49 = *(a1 + 72);
      v50 = [v11 objectForKey:@"expirationDay"];
      [v49 setObject:v50 forKey:@"expirationDay"];
    }

    v51 = [v11 objectForKey:@"dateOrigin"];

    if (v51)
    {
      v52 = *(a1 + 72);
      v53 = [v11 objectForKey:@"dateOrigin"];
      [v52 setObject:v53 forKey:@"dateOrigin"];
    }

    if ((*(a1 + 82) & 1) == 0)
    {
      *a4 = 1;
    }
  }

  objc_sync_exit(v24);
}

- (id)findCCResultsInImageFlat:(id)flat usingTextFeatures:(id)features invert:(BOOL)invert
{
  invertCopy = invert;
  v118 = *MEMORY[0x277D85DE8];
  flatCopy = flat;
  featuresCopy = features;
  v94 = featuresCopy;
  v8 = +[CRInsights sharedInsights];
  [v8 setContextValue:featuresCopy forKey:?];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [standardUserDefaults objectForKey:@"com.apple.CoreRecognition.disable_prefix_check"];
  bOOLValue = [v10 BOOLValue];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string = [MEMORY[0x277CCAB68] string];
    v12 = MEMORY[0x277CBEB18];
    subFeatures = [featuresCopy subFeatures];
    v99 = [v12 arrayWithCapacity:{objc_msgSend(subFeatures, "count")}];

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    subFeatures2 = [featuresCopy subFeatures];
    v15 = 0;
    v16 = [subFeatures2 countByEnumeratingWithState:&v112 objects:v117 count:16];
    if (v16)
    {
      v17 = *v113;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v113 != v17)
          {
            objc_enumerationMutation(subFeatures2);
          }

          subFeatures3 = [*(*(&v112 + 1) + 8 * i) subFeatures];
          v20 = [subFeatures3 count];

          v15 += v20;
        }

        v16 = [subFeatures2 countByEnumeratingWithState:&v112 objects:v117 count:16];
      }

      while (v16);
    }

    subFeatures4 = [v94 subFeatures];
    if (invertCopy)
    {
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __68__CRCameraReader_findCCResultsInImageFlat_usingTextFeatures_invert___block_invoke;
    v105[3] = &unk_278EAA918;
    v105[4] = self;
    v106 = flatCopy;
    v110 = invertCopy;
    v93 = string;
    v107 = v93;
    v111 = bOOLValue;
    v95 = v99;
    v108 = v95;
    v109 = v15;
    [subFeatures4 enumerateObjectsWithOptions:v22 usingBlock:v105];

    v98 = extractCardCode(v93);
    if (v98)
    {
      [v94 bounds];
      if (isValidCodeLocation(v98, 0, v23, v24, v25, v26))
      {
        [dictionary setObject:v98 forKey:@"code"];
        [dictionary setObject:MEMORY[0x277CBEC38] forKey:@"accepted"];
      }
    }

    v27 = +[CRInsights sharedInsights];
    if (v27)
    {
      v28 = +[CRInsights sharedInsights];
      v29 = [v28 allowOverrideWithKey:@"kCROverrideShouldRunOffline" forResultFromBlock:&__block_literal_global_502];
    }

    else
    {
      v29 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v28 = v29;
    }

    bOOLValue2 = [v29 BOOLValue];
    if (v27)
    {
    }

    if (bOOLValue2)
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      v42 = dictionary2;
      if (v98)
      {
        [dictionary2 setObject:v98 forKey:@"code"];
        [v42 setObject:MEMORY[0x277CBEC38] forKey:@"accepted"];
      }

      else
      {
        [dictionary2 setObject:v93 forKey:@"code"];
      }

      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:{v42, 0}];
      [dictionary setObject:v43 forKey:@"cardnumberFragmented"];
    }

    [dictionary setObject:v95 forKey:@"CardNumber"];
    dictionary3 = [MEMORY[0x277CBEAC0] dictionary];
    [dictionary setObject:dictionary3 forKey:@"Cardholder"];

    dictionary4 = [MEMORY[0x277CBEAC0] dictionary];
    [dictionary setObject:dictionary4 forKey:@"Expiration"];

    goto LABEL_65;
  }

  v30 = +[CRInsights sharedInsights];
  [v30 setContextValue:featuresCopy forKey:@"CRInsightsContextRecognitionTextFeature"];

  flatPrintedModel = [(CRCameraReader *)self flatPrintedModel];
  v32 = [flatPrintedModel creditcardResultsFromImage:flatCopy textFeatures:featuresCopy invert:invertCopy tryPatternMatch:1];

  v93 = v32;
  v33 = +[CRInsights sharedInsights];
  [v33 provideInsightValue:v32 forKey:@"CRInsightsRecognitionResultsForRegion"];

  v34 = +[CRInsights sharedInsights];
  [v34 setContextValue:0 forKey:@"CRInsightsContextRecognitionTextFeature"];

  v95 = [v32 objectForKey:@"FastScanningCTCSegmentKey"];
  v91 = [v32 objectForKey:@"FastScanningGeometricKey"];
  v88 = [v32 objectForKey:@"FastScanningPatternSearchKey"];
  v89 = [v91 objectForKey:@"CardNumber"];
  v35 = [v89 objectAtIndex:0];
  v36 = extractCardCode(v35);

  v98 = v36;
  if (!v36)
  {
    v37 = [v95 objectForKey:@"CardNumber"];

    v38 = [v37 objectAtIndex:0];
    v39 = extractCardCode(v38);

    v98 = v39;
    if (v39)
    {
      v89 = v37;
    }

    else
    {
      v46 = [v88 objectForKey:@"CardNumber"];

      v47 = [v46 objectAtIndex:0];
      v48 = extractCardCode(v47);

      v98 = v48;
      if (!v48)
      {
        v98 = 0;
        v89 = v46;
        goto LABEL_33;
      }

      v89 = v46;
    }
  }

  [featuresCopy bounds];
  if (isValidCodeLocation(v98, 0, v49, v50, v51, v52))
  {
    [dictionary setObject:v98 forKey:@"code"];
    [dictionary setObject:MEMORY[0x277CBEC38] forKey:@"accepted"];
  }

LABEL_33:
  v53 = +[CRInsights sharedInsights];
  if (v53)
  {
    v54 = +[CRInsights sharedInsights];
    v55 = [v54 allowOverrideWithKey:@"kCROverrideShouldRunOffline" forResultFromBlock:&__block_literal_global_510];
  }

  else
  {
    v55 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v54 = v55;
  }

  bOOLValue3 = [v55 BOOLValue];
  if (v53)
  {
  }

  if (bOOLValue3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v57 = v32;
    v58 = [v57 countByEnumeratingWithState:&v101 objects:v116 count:16];
    if (v58)
    {
      v59 = *v102;
      do
      {
        for (j = 0; j != v58; ++j)
        {
          if (*v102 != v59)
          {
            objc_enumerationMutation(v57);
          }

          v61 = [v57 objectForKey:*(*(&v101 + 1) + 8 * j)];
          v62 = [v61 objectForKey:@"CardNumber"];
          v63 = extractCardNumberResults(v62);

          v64 = [v63 objectForKey:@"code"];
          v65 = [v64 length] == 0;

          if (!v65)
          {
            [array addObject:v63];
          }
        }

        v58 = [v57 countByEnumeratingWithState:&v101 objects:v116 count:16];
      }

      while (v58);
    }

    [dictionary setObject:array forKey:@"CardNumber"];
  }

  v66 = [v91 objectForKey:@"Cardholder"];
  contactsCache = [(CRCameraReader *)self contactsCache];
  previousContactMatches = [(CRCameraReader *)self previousContactMatches];
  v69 = extractCardholderNameResults(v66, contactsCache, previousContactMatches);

  [dictionary setObject:v69 forKey:@"Cardholder"];
  v70 = +[CRInsights sharedInsights];
  if (v70)
  {
    v71 = +[CRInsights sharedInsights];
    v72 = [v71 allowOverrideWithKey:@"referenceExpirationDate" forValue:0];
  }

  else
  {
    v72 = 0;
  }

  v73 = computeReferenceDateFromString(v72);
  v74 = [v91 objectForKey:@"Expiration"];
  v75 = extractExpirationDateResults(v74, v73);

  v76 = [v75 objectForKey:@"expDateAccepted"];
  LODWORD(v74) = v76 == 0;

  if (v74)
  {
    v77 = [v88 objectForKey:@"Expiration"];
    v78 = extractExpirationDateResults(v77, v73);

    v75 = v78;
  }

  v79 = +[CRInsights sharedInsights];
  if (v79)
  {
    v80 = +[CRInsights sharedInsights];
    v81 = [v80 allowOverrideWithKey:@"kCROverrideShouldRunOffline" forResultFromBlock:&__block_literal_global_512];
  }

  else
  {
    v81 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v80 = v81;
  }

  if ([v81 BOOLValue])
  {
    v82 = [v75 objectForKey:@"expDateAccepted"];
    v83 = v82 == 0;

    if (!v79)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v83 = 0;
  if (v79)
  {
LABEL_61:
  }

LABEL_62:

  if (v83)
  {
    v84 = [v95 objectForKey:@"Expiration"];
    v85 = extractExpirationDateResults(v84, v73);

    v75 = v85;
  }

  [dictionary setObject:v75 forKey:@"Expiration"];

LABEL_65:
  v86 = +[CRInsights sharedInsights];
  [v86 setContextValue:0 forKey:@"CRInsightsContextRecognitionTextFeatureGroup"];

  return dictionary;
}

void __68__CRCameraReader_findCCResultsInImageFlat_usingTextFeatures_invert___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v25 = a2;
  v6 = +[CRInsights sharedInsights];
  [v6 setContextValue:v25 forKey:@"CRInsightsContextRecognitionTextFeature"];

  v7 = [*(a1 + 32) flatPrintedModel];
  v8 = [v7 creditcardResultsFromImage:*(a1 + 40) textFeatures:v25 invert:*(a1 + 72) tryPatternMatch:0];

  v9 = +[CRInsights sharedInsights];
  [v9 provideInsightValue:v8 forKey:@"CRInsightsRecognitionResultsForRegion"];

  v10 = +[CRInsights sharedInsights];
  [v10 setContextValue:0 forKey:@"CRInsightsContextRecognitionTextFeature"];

  v11 = [v8 objectForKey:@"FastScanningGeometricKey"];
  v12 = [v11 objectForKey:@"CardNumber"];
  v13 = [v12 objectAtIndex:0];

  if (v13)
  {
    v14 = *(a1 + 48);
    v15 = [v12 objectAtIndex:0];
    [v14 appendString:v15];
  }

  v16 = [MEMORY[0x277CBEB38] dictionary];
  if ([v12 count] >= 2)
  {
    v17 = [v12 objectAtIndex:1];
    [v16 setObject:v17 forKey:@"codeOffset"];

    if ([v12 count] < 3)
    {
      v19 = 300.0;
    }

    else
    {
      v18 = [v12 objectAtIndex:2];
      v19 = [v18 integerValue];
    }

    v20 = [v12 objectAtIndex:1];
    v21 = [v20 objectAtIndex:0];
    v22 = [v21 integerValue] / v19;

    *&v23 = v22;
    v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
    [v16 setObject:v24 forKey:@"normalizedCodeOffset"];
  }

  [*(a1 + 56) addObject:v16];
  if ((*(a1 + 73) & 1) == 0 && (checkPartialCodePrefix(*(a1 + 48), *(a1 + 64)) & 1) == 0)
  {
    *a4 = 1;
  }
}

- (id)findCCNumberInImageEmbossed:(id)embossed
{
  embossedCopy = embossed;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  imageByApplyingHistogramCorrection = [embossedCopy imageByApplyingHistogramCorrection];
  v7 = +[CRInsights sharedInsights];
  [v7 provideInsightValue:imageByApplyingHistogramCorrection forKey:@"CRInsightsCardImageCutEmbossedBufferKey"];

  embossedNumberModel = [(CRCameraReader *)self embossedNumberModel];
  v9 = [embossedNumberModel creditcardResultsFromImage:imageByApplyingHistogramCorrection];
  v10 = [v9 objectForKey:@"arrayResult"];

  v11 = 0;
  v12 = 1;
  v13 = MEMORY[0x277CBF398];
  while ([v10 count] > v12)
  {
    v14 = [v10 objectAtIndex:v12];
    v15 = extractCardCode(v14);

    if (v15 && isValidCodeLocation(v15, 1, *v13, v13[1], v13[2], v13[3]))
    {
      [dictionary setObject:v15 forKey:@"code"];
      [dictionary setObject:MEMORY[0x277CBEC38] forKey:@"accepted"];
      v11 = v15;
      break;
    }

    ++v12;
    v11 = v15;
  }

  return dictionary;
}

- (id)findCCNumberInImageEmbossed:(id)embossed withFinalDigit:(id)digit
{
  embossedCopy = embossed;
  digitCopy = digit;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  height = [digitCopy height];
  v42 = [digitCopy imageByScalingToWidth:(28.0 / height * objc_msgSend(digitCopy height:{"width")), (28.0 / height * objc_msgSend(digitCopy, "height"))}];
  imageByApplyingHistogramCorrection = [v42 imageByApplyingHistogramCorrection];
  embossedExpirationModel = [(CRCameraReader *)self embossedExpirationModel];
  v12 = [embossedExpirationModel creditcardResultsFromImage:imageByApplyingHistogramCorrection];
  v13 = [v12 objectForKey:@"FastScanningCTCSegmentKey"];

  v43 = v13;
  v14 = [(CRCameraReader *)self extractFinalDigitStringFromNumbers:v13];
  if ([v14 length] != 1)
  {
    v15 = [imageByApplyingHistogramCorrection imageByAdjustingBrightnessAlpha:1.3 beta:128.0];
    imageByApplyingHistogramCorrection2 = [v15 imageByApplyingHistogramCorrection];

    embossedExpirationModel2 = [(CRCameraReader *)self embossedExpirationModel];
    v18 = [embossedExpirationModel2 creditcardResultsFromImage:imageByApplyingHistogramCorrection2];
    v19 = [v18 objectForKey:@"FastScanningCTCSegmentKey"];

    v20 = [(CRCameraReader *)self extractFinalDigitStringFromNumbers:v19];

    imageByApplyingHistogramCorrection = imageByApplyingHistogramCorrection2;
    v43 = v19;
    v14 = v20;
  }

  if ([v14 length] == 1)
  {
    v39 = embossedCopy;
    v40 = dictionary;
    imageByApplyingHistogramCorrection3 = [embossedCopy imageByApplyingHistogramCorrection];
    embossedNumberModel = [(CRCameraReader *)self embossedNumberModel];
    v22 = [embossedNumberModel creditcardResultsFromImage:imageByApplyingHistogramCorrection3];
    v23 = [v22 objectForKey:@"arrayResult"];

    v24 = enrichedNumbersListHK(v23);

    v25 = 1;
    while ([v24 count] > v25)
    {
      v26 = [v24 objectAtIndex:v25];
      v27 = [v26 stringByAppendingString:v14];
      v28 = extractCardCodeHK(v27);

      ++v25;
      if (v28)
      {
        [v40 setObject:v28 forKey:@"code"];
        [v40 setObject:MEMORY[0x277CBEC38] forKey:@"accepted"];
        goto LABEL_14;
      }
    }

    v29 = [imageByApplyingHistogramCorrection3 imageByAdjustingBrightnessAlpha:2.0 beta:100.0];
    imageByApplyingHistogramCorrection4 = [v29 imageByApplyingHistogramCorrection];

    embossedNumberModel2 = [(CRCameraReader *)self embossedNumberModel];
    v32 = [embossedNumberModel2 creditcardResultsFromImage:imageByApplyingHistogramCorrection4];
    v33 = [v32 objectForKey:@"arrayResult"];

    v24 = enrichedNumbersListHK(v33);

    v34 = 1;
    while ([v24 count] > v34)
    {
      v35 = [v24 objectAtIndex:v34];
      v36 = [v35 stringByAppendingString:v14];
      v37 = extractCardCodeHK(v36);

      ++v34;
      if (v37)
      {
        [v40 setObject:v37 forKey:@"code"];
        [v40 setObject:MEMORY[0x277CBEC38] forKey:@"accepted"];
        goto LABEL_13;
      }
    }

    v37 = 0;
LABEL_13:

    v28 = 0;
LABEL_14:

    embossedCopy = v39;
    dictionary = v40;
  }

  return dictionary;
}

- (id)findCCNameInImageEmbossed:(id)embossed
{
  imageByApplyingHistogramCorrection = [embossed imageByApplyingHistogramCorrection];
  embossedCardholderModel = [(CRCameraReader *)self embossedCardholderModel];
  v6 = [embossedCardholderModel creditcardResultsFromImage:imageByApplyingHistogramCorrection];
  v7 = [v6 objectForKey:@"arrayResult"];

  contactsCache = [(CRCameraReader *)self contactsCache];
  previousContactMatches = [(CRCameraReader *)self previousContactMatches];
  v10 = extractCardholderNameResults(v7, contactsCache, previousContactMatches);

  return v10;
}

- (id)findCCExpDateInImageEmbossed:(id)embossed
{
  imageByApplyingHistogramCorrection = [embossed imageByApplyingHistogramCorrection];
  embossedExpirationModel = [(CRCameraReader *)self embossedExpirationModel];
  v6 = [embossedExpirationModel creditcardResultsFromImage:imageByApplyingHistogramCorrection];

  v7 = [v6 objectForKey:@"FastScanningCTCSegmentKey"];
  v8 = +[CRInsights sharedInsights];
  if (v8)
  {
    v9 = +[CRInsights sharedInsights];
    v10 = [v9 allowOverrideWithKey:@"referenceExpirationDate" forValue:0];
  }

  else
  {
    v10 = 0;
  }

  v11 = computeReferenceDateFromString(v10);
  v12 = extractExpirationDateResults(v7, v11);
  v13 = [v12 objectForKey:@"expDateAccepted"];

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v15 = [v6 objectForKey:@"FastScanningPatternSearchKey"];
    v16 = extractExpirationDateResults(v15, v11);
    v17 = [v16 objectForKey:@"expDateAccepted"];

    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = v12;
    }

    v14 = v18;
  }

  return v14;
}

- (void)removeLayerTree
{
  diagnosticHUDLayer = [(CRCameraReader *)self diagnosticHUDLayer];
  [diagnosticHUDLayer removeFromSuperlayer];

  alignmentLayer = [(CRCameraReader *)self alignmentLayer];
  [alignmentLayer removeFromSuperlayer];

  boxLayer = [(CRCameraReader *)self boxLayer];
  [boxLayer removeFromSuperlayer];

  sessionManager = [(CRCameraReader *)self sessionManager];
  previewLayer = [sessionManager previewLayer];
  [previewLayer removeFromSuperlayer];
}

- (void)primeBoxLayerHideTimerWithFrameTime:(id *)time
{
  boxLayerHideTimer = [(CRCameraReader *)self boxLayerHideTimer];
  v8 = *time;
  Seconds = CMTimeGetSeconds(&v8);
  [(CRCameraReader *)self configDemoSpeed];
  CMTimeMakeWithSeconds(&v8, Seconds + 0.5 / v7, time->var1);
  [boxLayerHideTimer setFireTime:&v8];
}

- (void)pauseBoxLayerHideTimer
{
  boxLayerHideTimer = [(CRCameraReader *)self boxLayerHideTimer];
  v3 = *MEMORY[0x277CC08B0];
  v4 = *(MEMORY[0x277CC08B0] + 16);
  [boxLayerHideTimer setFireTime:&v3];
}

- (void)hideBoxLayer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__CRCameraReader_hideBoxLayer__block_invoke;
  block[3] = &unk_278EAA5E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __30__CRCameraReader_hideBoxLayer__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) boxLayer];
  [v1 setHidden:1];
}

- (CGRect)boxLayerPresentationFrame
{
  view = [(CRCameraReader *)self view];
  layer = [view layer];
  [layer bounds];
  Width = CGRectGetWidth(v28);
  view2 = [(CRCameraReader *)self view];
  layer2 = [view2 layer];
  [layer2 bounds];
  if (Width <= CGRectGetHeight(v29))
  {
    view3 = [(CRCameraReader *)self view];
    layer3 = [view3 layer];
    [layer3 bounds];
    v10 = CGRectGetWidth(v31);
    v11 = 0.8;
  }

  else
  {
    view3 = [(CRCameraReader *)self view];
    layer3 = [view3 layer];
    [layer3 bounds];
    v10 = CGRectGetWidth(v30);
    v11 = 0.65;
  }

  v12 = v10 * v11;

  boxLayer = [(CRCameraReader *)self boxLayer];
  [boxLayer bounds];
  Height = CGRectGetHeight(v32);
  boxLayer2 = [(CRCameraReader *)self boxLayer];
  [boxLayer2 bounds];
  v16 = CGRectGetWidth(v33);

  view4 = [(CRCameraReader *)self view];
  layer4 = [view4 layer];
  [layer4 bounds];
  MidX = CGRectGetMidX(v34);
  view5 = [(CRCameraReader *)self view];
  layer5 = [view5 layer];
  [layer5 bounds];
  v22 = v12 * Height / v16;
  v23 = CGRectGetMidY(v35) - v22 * 0.5;

  v24 = MidX - v12 * 0.5;
  v25 = v23;
  v26 = v12;
  v27 = v22;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)animatePresentCodeAtFrameTime:(id *)time
{
  v73[3] = *MEMORY[0x277D85DE8];
  boxLayer = [(CRCameraReader *)self boxLayer];
  animationKeys = [boxLayer animationKeys];
  v6 = [animationKeys containsObject:@"CRBoxLayerAnimationReveal"];

  if ((v6 & 1) == 0)
  {
    boxLayer2 = [(CRCameraReader *)self boxLayer];
    [boxLayer2 removeAllAnimations];
  }

  animation = [MEMORY[0x277CD9E00] animation];
  animation2 = [MEMORY[0x277CD9E00] animation];
  boxLayer3 = [(CRCameraReader *)self boxLayer];
  [boxLayer3 position];
  MidX = v9;
  MidY = v11;

  memset(&v72, 0, sizeof(v72));
  boxLayer4 = [(CRCameraReader *)self boxLayer];
  v14 = boxLayer4;
  if (boxLayer4)
  {
    [boxLayer4 transform];
  }

  else
  {
    memset(&v72, 0, sizeof(v72));
  }

  if ([(CRCameraReader *)self configPresentCentered])
  {
    [(CRCameraReader *)self boxLayerPresentationFrame];
    x = v74.origin.x;
    y = v74.origin.y;
    width = v74.size.width;
    height = v74.size.height;
    MidX = CGRectGetMidX(v74);
    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    MidY = CGRectGetMidY(v75);
    v76.origin.x = x;
    v76.origin.y = y;
    v76.size.width = width;
    v76.size.height = height;
    v19 = CGRectGetWidth(v76);
    boxLayer5 = [(CRCameraReader *)self boxLayer];
    [boxLayer5 bounds];
    v21 = CGRectGetWidth(v77);

    CATransform3DMakeScale(&v71, v19 / v21, v19 / v21, 1.0);
    v72 = v71;
    if ([(CRCameraReader *)self codeInverted])
    {
      v70 = v72;
      CATransform3DRotate(&v71, &v70, 3.14159265, 0.0, 0.0, 1.0);
      v72 = v71;
    }

    sessionManager = [(CRCameraReader *)self sessionManager];
    isPreviewVideoMirrored = [sessionManager isPreviewVideoMirrored];

    if (isPreviewVideoMirrored)
    {
      v70 = v72;
      CATransform3DRotate(&v71, &v70, 3.14159265, 0.0, 1.0, 0.0);
      v72 = v71;
    }

    v24 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"position"];
    boxLayer6 = [(CRCameraReader *)self boxLayer];
    [boxLayer6 position];
    v27 = v26;
    boxLayer7 = [(CRCameraReader *)self boxLayer];
    [boxLayer7 position];
    v30 = v29;

    v31 = MEMORY[0x277CBEA60];
    v32 = MEMORY[0x277CCAE60];
    boxLayer8 = [(CRCameraReader *)self boxLayer];
    [boxLayer8 position];
    v34 = [v32 valueWithCGPoint:?];
    v35 = [MEMORY[0x277CCABB0] valueWithCGPoint:{(MidX + v27) * 0.5, (MidY + v30) * 0.5}];
    v36 = [MEMORY[0x277CCAE60] valueWithCGPoint:{MidX, MidY}];
    v37 = [v31 arrayWithObjects:{v34, v35, v36, 0}];
    [v24 setValues:v37];

    [v24 setKeyTimes:&unk_2859766C8];
    [v24 setCalculationMode:@"cubic"];
    v38 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"zPosition"];
    v73[0] = &unk_285976638;
    v78.origin.x = x;
    v78.origin.y = y;
    v78.size.width = width;
    v78.size.height = height;
    v39 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetWidth(v78)];
    v73[1] = v39;
    v73[2] = &unk_285976638;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:3];
    [v38 setValues:v40];

    [v38 setKeyTimes:&unk_2859766E0];
    [v38 setCalculationMode:@"cubic"];
    v41 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform"];
    v42 = MEMORY[0x277CCAE60];
    boxLayer9 = [(CRCameraReader *)self boxLayer];
    v44 = boxLayer9;
    if (boxLayer9)
    {
      [boxLayer9 transform];
    }

    else
    {
      memset(&v71, 0, sizeof(v71));
    }

    v49 = [v42 valueWithCATransform3D:&v71];
    [v41 setFromValue:v49];

    v71 = v72;
    v50 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v71];
    [v41 setToValue:v50];

    v51 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    v52 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
    [v51 setFromValue:v52];

    v53 = [MEMORY[0x277CCABB0] numberWithDouble:0.4];
    [v51 setToValue:v53];

    [(CRCameraReader *)self configDemoSpeed];
    [animation setDuration:0.5 / v54];
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:{v24, v38, v41, 0}];
    [animation setAnimations:v55];

    [(CRCameraReader *)self configDemoSpeed];
    [animation2 setDuration:0.5 / v56];
    v57 = [MEMORY[0x277CBEA60] arrayWithObject:v51];
    [animation2 setAnimations:v57];
  }

  else
  {
    v24 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    v45 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
    [v24 setFromValue:v45];

    v46 = [MEMORY[0x277CCABB0] numberWithDouble:0.4];
    [v24 setToValue:v46];

    [(CRCameraReader *)self configDemoSpeed];
    [animation setDuration:0.25 / v47];
    [(CRCameraReader *)self configDemoSpeed];
    [animation2 setDuration:0.25 / v48];
    v38 = [MEMORY[0x277CBEA60] arrayWithObject:v24];
    [animation2 setAnimations:v38];
  }

  objc_initWeak(&v71, self);
  boxLayer10 = [(CRCameraReader *)self boxLayer];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __48__CRCameraReader_animatePresentCodeAtFrameTime___block_invoke;
  v64[3] = &unk_278EAA940;
  objc_copyWeak(v67, &v71);
  v59 = animation;
  v65 = v59;
  v67[1] = a2;
  v60 = animation2;
  v66 = v60;
  v67[2] = *&MidX;
  v67[3] = *&MidY;
  v68 = v72;
  v69 = 0x3FD999999999999ALL;
  [boxLayer10 addCompletionBlock:v64];

  objc_destroyWeak(v67);
  objc_destroyWeak(&v71);
}

void __48__CRCameraReader_animatePresentCodeAtFrameTime___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained boxLayer];
  [v3 removeAllAnimations];

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 sessionManager];
  v6 = [v5 previewLayer];
  [v6 removeAllAnimations];

  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = [v7 boxLayer];
  v9 = *(a1 + 32);
  v10 = NSStringFromSelector(*(a1 + 56));
  [v8 addAnimation:v9 forKey:v10];

  v11 = objc_loadWeakRetained((a1 + 48));
  v12 = [v11 sessionManager];
  v13 = [v12 previewLayer];
  v14 = *(a1 + 40);
  v15 = NSStringFromSelector(*(a1 + 56));
  [v13 addAnimation:v14 forKey:v15];

  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v18 = objc_loadWeakRetained((a1 + 48));
  v19 = [v18 boxLayer];
  [v19 setPosition:{v16, v17}];

  v20 = *(a1 + 160);
  v38 = *(a1 + 144);
  v39 = v20;
  v21 = *(a1 + 192);
  v40 = *(a1 + 176);
  v41 = v21;
  v22 = *(a1 + 96);
  v34 = *(a1 + 80);
  v35 = v22;
  v23 = *(a1 + 128);
  v36 = *(a1 + 112);
  v37 = v23;
  v24 = objc_loadWeakRetained((a1 + 48));
  v25 = [v24 boxLayer];
  v33[4] = v38;
  v33[5] = v39;
  v33[6] = v40;
  v33[7] = v41;
  v33[0] = v34;
  v33[1] = v35;
  v33[2] = v36;
  v33[3] = v37;
  [v25 setTransform:v33];

  v26 = *(a1 + 208);
  v27 = objc_loadWeakRetained((a1 + 48));
  v28 = [v27 sessionManager];
  v29 = [v28 previewLayer];
  *&v30 = v26;
  [v29 setOpacity:v30];

  [MEMORY[0x277CD9FF0] commit];
  v31 = [MEMORY[0x277CBEAA8] date];
  v32 = objc_loadWeakRetained((a1 + 48));
  [v32 setCodePresented:v31];
}

- (void)showMessage:(id)message color:(id)color style:(int64_t)style duration:(double)duration
{
  messageCopy = message;
  colorCopy = color;
  v11 = 0;
  if (style > 1)
  {
    if (style == 2)
    {
      v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRecognition"];
      v11 = [v15 localizedStringForKey:@"Success" value:&stru_2859636D0 table:0];

      v13 = 0;
      v12 = messageCopy;
      goto LABEL_11;
    }

    if (style != 3)
    {
      goto LABEL_12;
    }

    v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRecognition"];
    v14 = [v12 localizedStringForKey:@"Error" value:&stru_2859636D0 table:0];
    goto LABEL_9;
  }

  if (!style)
  {
    v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRecognition"];
    v14 = [v12 localizedStringForKey:@"Note" value:&stru_2859636D0 table:0];
LABEL_9:
    v11 = v14;
    v13 = messageCopy;
    goto LABEL_11;
  }

  v12 = messageCopy;
  v13 = 0;
  if (style == 1)
  {
LABEL_11:

    messageCopy = v13;
  }

LABEL_12:
  v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRecognition"];
  v17 = [v16 localizedStringForKey:@"OK" value:&stru_2859636D0 table:0];

  activityIndicator = [(CRCameraReader *)self activityIndicator];

  if (activityIndicator)
  {
    goto LABEL_23;
  }

  v19 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:0];
  [(CRCameraReader *)self setActivityIndicator:v19];

  activityIndicator2 = [(CRCameraReader *)self activityIndicator];
  [activityIndicator2 setHidesWhenStopped:1];

  view = [(CRCameraReader *)self view];
  activityIndicator3 = [(CRCameraReader *)self activityIndicator];
  [view addSubview:activityIndicator3];

  if (![(CRCameraReader *)self configPresentCentered])
  {
    activityIndicator4 = [(CRCameraReader *)self activityIndicator];
    view2 = [(CRCameraReader *)self view];
    [view2 bounds];
    MidX = CGRectGetMidX(v93);
    activityIndicator5 = [(CRCameraReader *)self activityIndicator];
    [activityIndicator5 bounds];
    Width = CGRectGetWidth(v94);
    view3 = [(CRCameraReader *)self view];
    [view3 bounds];
    MaxY = CGRectGetMaxY(v95);
    activityIndicator6 = [(CRCameraReader *)self activityIndicator];
    [activityIndicator6 bounds];
    Height = CGRectGetHeight(v96);
    activityIndicator7 = [(CRCameraReader *)self activityIndicator];
    [activityIndicator7 bounds];
    v50 = CGRectGetWidth(v97);
    activityIndicator8 = [(CRCameraReader *)self activityIndicator];
    [activityIndicator8 bounds];
    [activityIndicator4 setFrame:{MidX + Width * -0.5, MaxY + Height * -1.5 + -44.0, v50, CGRectGetHeight(v98)}];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
    {
      view4 = [(CRCameraReader *)self view];
      [view4 bounds];
      v105.size.width = 1024.0;
      v105.size.height = 748.0;
      v105.origin.x = 0.0;
      v105.origin.y = 0.0;
      if (CGRectEqualToRect(v99, v105))
      {
      }

      else
      {
        view5 = [(CRCameraReader *)self view];
        [view5 bounds];
        v106.size.width = 768.0;
        v106.size.height = 1004.0;
        v106.origin.x = 0.0;
        v106.origin.y = 0.0;
        v55 = CGRectEqualToRect(v100, v106);

        if (!v55)
        {
LABEL_21:
          activityIndicator9 = [(CRCameraReader *)self activityIndicator];
          [activityIndicator9 setAutoresizingMask:13];
          goto LABEL_22;
        }
      }

      currentDevice = [(CRCameraReader *)self activityIndicator];
      activityIndicator10 = [(CRCameraReader *)self activityIndicator];
      [activityIndicator10 frame];
      MinX = CGRectGetMinX(v101);
      activityIndicator11 = [(CRCameraReader *)self activityIndicator];
      [activityIndicator11 frame];
      MinY = CGRectGetMinY(v102);
      activityIndicator12 = [(CRCameraReader *)self activityIndicator];
      [activityIndicator12 frame];
      v61 = CGRectGetWidth(v103);
      activityIndicator13 = [(CRCameraReader *)self activityIndicator];
      [activityIndicator13 frame];
      [currentDevice setFrame:{MinX, MinY + -44.0, v61, CGRectGetHeight(v104)}];
    }

    goto LABEL_21;
  }

  [(CRCameraReader *)self boxLayerPresentationFrame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  activityIndicator14 = [(CRCameraReader *)self activityIndicator];
  v87.origin.x = v24;
  v87.origin.y = v26;
  v87.size.width = v28;
  v87.size.height = v30;
  v32 = CGRectGetMidX(v87);
  activityIndicator15 = [(CRCameraReader *)self activityIndicator];
  [activityIndicator15 bounds];
  v34 = CGRectGetWidth(v88);
  v89.origin.x = v24;
  v89.origin.y = v26;
  v89.size.width = v28;
  v89.size.height = v30;
  v35 = CGRectGetMaxY(v89);
  activityIndicator16 = [(CRCameraReader *)self activityIndicator];
  [activityIndicator16 bounds];
  v37 = CGRectGetHeight(v90);
  activityIndicator17 = [(CRCameraReader *)self activityIndicator];
  [activityIndicator17 bounds];
  v39 = CGRectGetWidth(v91);
  activityIndicator18 = [(CRCameraReader *)self activityIndicator];
  [activityIndicator18 bounds];
  [activityIndicator14 setFrame:{v32 + v34 * -0.5, v35 + v37 * 0.5, v39, CGRectGetHeight(v92)}];

  activityIndicator9 = [(CRCameraReader *)self activityIndicator];
  [activityIndicator9 setAutoresizingMask:45];
LABEL_22:

LABEL_23:
  activityIndicator19 = [(CRCameraReader *)self activityIndicator];
  if (style == 1)
  {
    [activityIndicator19 startAnimating];
  }

  else
  {
    [activityIndicator19 stopAnimating];
  }

  objc_initWeak(location, self);
  configPresentCentered = [(CRCameraReader *)self configPresentCentered];
  [(CRCameraReader *)self configDemoSpeed];
  v66 = v65;
  codePresented = [(CRCameraReader *)self codePresented];
  [codePresented timeIntervalSinceNow];
  v69 = 0.25;
  if (configPresentCentered)
  {
    v69 = 0.5;
  }

  v70 = v69 / v66 + v68;

  v71 = dispatch_time(0, (fmax(v70, 0.0) * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CRCameraReader_showMessage_color_style_duration___block_invoke;
  block[3] = &unk_278EAA9E0;
  v80 = colorCopy;
  selfCopy = self;
  v82 = messageCopy;
  v85[1] = *&duration;
  v72 = messageCopy;
  v73 = colorCopy;
  objc_copyWeak(v85, location);
  v85[2] = style;
  v83 = v11;
  v84 = v17;
  v74 = v17;
  v75 = v11;
  dispatch_after(v71, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v85);
  objc_destroyWeak(location);
}

void __51__CRCameraReader_showMessage_color_style_duration___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) boxLayer];
    [v3 animatePulseColor:*(a1 + 32)];

    v4 = 200000000;
  }

  else
  {
    v4 = 0;
  }

  v5 = dispatch_time(0, v4);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__CRCameraReader_showMessage_color_style_duration___block_invoke_2;
  v9[3] = &unk_278EAA9E0;
  v6 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v7 = v6;
  v14[1] = *(a1 + 80);
  v10 = v7;
  v11 = v2;
  v8 = v2;
  objc_copyWeak(v14, (a1 + 72));
  v14[2] = *(a1 + 88);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  dispatch_after(v5, MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(v14);
}

void __51__CRCameraReader_showMessage_color_style_duration___block_invoke_2(id *a1)
{
  v2 = [a1[4] boxLayer];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__CRCameraReader_showMessage_color_style_duration___block_invoke_3;
  v3[3] = &unk_278EAA9B8;
  v4 = a1[5];
  v8[1] = a1[10];
  v5 = a1[6];
  objc_copyWeak(v8, a1 + 9);
  v8[2] = a1[11];
  v6 = a1[7];
  v7 = a1[8];
  [v2 addCompletionBlock:v3];

  objc_destroyWeak(v8);
}

void __51__CRCameraReader_showMessage_color_style_duration___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x277D75110] alertControllerWithTitle:*(a1 + 48) message:v4 preferredStyle:1];
    v6 = MEMORY[0x277D750F8];
    v7 = *(a1 + 56);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __51__CRCameraReader_showMessage_color_style_duration___block_invoke_5;
    v16 = &unk_278EAA990;
    objc_copyWeak(v17, (a1 + 64));
    v17[1] = *(a1 + 80);
    v8 = [v6 actionWithTitle:v7 style:0 handler:&v13];
    [v5 addAction:{v8, v13, v14, v15, v16}];
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained presentViewController:v5 animated:1 completion:0];

    objc_destroyWeak(v17);
  }

  else
  {
    v10 = *(a1 + 72);
    [*(a1 + 40) timeIntervalSinceNow];
    v12 = dispatch_time(0, (fmax(v10 + v11, 0.0) * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__CRCameraReader_showMessage_color_style_duration___block_invoke_4;
    block[3] = &unk_278EAA968;
    objc_copyWeak(v19, (a1 + 64));
    v19[1] = *(a1 + 80);
    dispatch_after(v12, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(v19);
  }
}

void __51__CRCameraReader_showMessage_color_style_duration___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendDidDisplayMessageStyle:*(a1 + 40)];
}

void __51__CRCameraReader_showMessage_color_style_duration___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendDidDisplayMessageStyle:*(a1 + 40)];
}

- (void)sendDidCancel
{
  delegateQueue = [(CRCameraReader *)self delegateQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__CRCameraReader_sendDidCancel__block_invoke;
  v4[3] = &unk_278EAA5E8;
  v4[4] = self;
  cr_dispatch_async(delegateQueue, v4);
}

void __31__CRCameraReader_sendDidCancel__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) didSendEndOrCancel] & 1) == 0)
  {
    [*(a1 + 32) setDidSendEndOrCancel:1];
    v2 = [*(a1 + 32) callbackDelegate];
    [v2 cameraReaderDidCancel:*(a1 + 32)];
  }
}

- (void)sendDidEndWithInfo:(id)info
{
  infoCopy = info;
  delegateQueue = [(CRCameraReader *)self delegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__CRCameraReader_sendDidEndWithInfo___block_invoke;
  v7[3] = &unk_278EAA6D0;
  v7[4] = self;
  v6 = infoCopy;
  v8 = v6;
  cr_dispatch_async(delegateQueue, v7);
}

uint64_t __37__CRCameraReader_sendDidEndWithInfo___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) didSendEndOrCancel];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setDidSendEndOrCancel:1];
    v3 = [*(a1 + 32) callbackDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [*(a1 + 32) callbackDelegate];
      [v5 cameraReader:*(a1 + 32) didRecognizeObjects:*(a1 + 40)];
    }

    v6 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setPinnedFoundInfo:v6];

    [*(a1 + 32) setFoundCode:0];
    v7 = *(a1 + 32);

    return [v7 setPreviousCode:0];
  }

  return result;
}

- (void)sendDidRecognizeNewObjects:(id)objects
{
  objectsCopy = objects;
  delegateQueue = [(CRCameraReader *)self delegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__CRCameraReader_sendDidRecognizeNewObjects___block_invoke;
  v7[3] = &unk_278EAA6D0;
  v7[4] = self;
  v6 = objectsCopy;
  v8 = v6;
  cr_dispatch_async(delegateQueue, v7);
}

void __45__CRCameraReader_sendDidRecognizeNewObjects___block_invoke(uint64_t a1)
{
  v34 = [*(a1 + 32) callbackDelegate];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v35 = [MEMORY[0x277CBEB18] array];
    v3 = [*(a1 + 40) objectForKey:@"code"];
    v4 = [*(a1 + 40) objectForKey:@"cardholderName"];
    v5 = [*(a1 + 40) objectForKey:@"expirationDate"];
    if (v3)
    {
      v6 = objc_alloc_init(CRCameraReaderOutput);
      v7 = [(CRCameraReaderOutput *)v6 objectInternal];
      [v7 setType:@"CROutputTypeCreditCardNumber"];

      v8 = [(CRCameraReaderOutput *)v6 objectInternal];
      [v8 setStringValue:v3];

      [v35 addObject:v6];
    }

    if (v4)
    {
      v9 = objc_alloc_init(CRCameraReaderOutput);
      v10 = [(CRCameraReaderOutput *)v9 objectInternal];
      [v10 setType:@"CROutputTypeCreditCardName"];

      v11 = [(CRCameraReaderOutput *)v9 objectInternal];
      [v11 setStringValue:v4];

      [v35 addObject:v9];
    }

    if (v5)
    {
      v12 = objc_alloc_init(CRCameraReaderOutputExpirationDate);
      v13 = [(CRCameraReaderOutput *)v12 objectInternal];
      [v13 setType:@"CRCameraReaderCreditCardExpirationDate"];

      v14 = [(CRCameraReaderOutput *)v12 objectInternal];
      [v14 setStringValue:v5];

      v15 = [*(a1 + 40) objectForKey:@"expirationYear"];

      if (v15)
      {
        v16 = MEMORY[0x277CCABB0];
        v17 = [*(a1 + 32) pinnedFoundInfo];
        v18 = [v17 objectForKey:@"expirationYear"];
        v19 = [v16 numberWithInteger:{objc_msgSend(v18, "integerValue")}];
        v20 = [(CRCameraReaderOutput *)v12 objectInternal];
        [v20 setYearValue:v19];
      }

      v21 = [*(a1 + 40) objectForKey:@"expirationMonth"];

      if (v21)
      {
        v22 = MEMORY[0x277CCABB0];
        v23 = [*(a1 + 32) pinnedFoundInfo];
        v24 = [v23 objectForKey:@"expirationMonth"];
        v25 = [v22 numberWithInteger:{objc_msgSend(v24, "integerValue")}];
        v26 = [(CRCameraReaderOutput *)v12 objectInternal];
        [v26 setMonthValue:v25];
      }

      v27 = [*(a1 + 40) objectForKey:@"expirationDay"];

      if (v27)
      {
        v28 = MEMORY[0x277CCABB0];
        v29 = [*(a1 + 32) pinnedFoundInfo];
        v30 = [v29 objectForKey:@"expirationDay"];
        v31 = [v28 numberWithInteger:{objc_msgSend(v30, "integerValue")}];
        v32 = [(CRCameraReaderOutput *)v12 objectInternal];
        [v32 setDayValue:v31];
      }

      [v35 addObject:v12];
    }

    v33 = [*(a1 + 32) callbackDelegate];
    [v33 cameraReader:*(a1 + 32) didRecognizedNewObjects:v35];
  }
}

- (void)sendDidEndAnimation
{
  v3 = dispatch_time(0, 500000000);
  delegateQueue = [(CRCameraReader *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CRCameraReader_sendDidEndAnimation__block_invoke;
  block[3] = &unk_278EAA5E8;
  block[4] = self;
  dispatch_after(v3, delegateQueue, block);
}

void __37__CRCameraReader_sendDidEndAnimation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callbackDelegate];
  [v2 cameraReaderDidEnd:*(a1 + 32)];
}

- (void)sendDidEndWithError:(id)error
{
  errorCopy = error;
  delegateQueue = [(CRCameraReader *)self delegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__CRCameraReader_sendDidEndWithError___block_invoke;
  v7[3] = &unk_278EAA6D0;
  v7[4] = self;
  v6 = errorCopy;
  v8 = v6;
  cr_dispatch_async(delegateQueue, v7);
}

uint64_t __38__CRCameraReader_sendDidEndWithError___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) didSendEndOrCancel];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setDidSendEndOrCancel:1];
    v3 = [*(a1 + 32) callbackDelegate];
    [v3 cameraReader:*(a1 + 32) didFailWithError:*(a1 + 40)];

    v4 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setPinnedFoundInfo:v4];

    [*(a1 + 32) setFoundCode:0];
    v5 = *(a1 + 32);

    return [v5 setPreviousCode:0];
  }

  return result;
}

- (id)attributedStringWithFrame:(CGSize)frame withFont:(id)font withString:(id)string color:(CGColor *)color
{
  height = frame.height;
  width = frame.width;
  v35[3] = *MEMORY[0x277D85DE8];
  name = font;
  stringCopy = string;
  v33 = objc_opt_new();
  [v33 setAlignment:1];
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = width;
  v38.size.height = height;
  path = CGPathCreateWithRect(v38, 0);
  v9 = 0;
  v10 = *MEMORY[0x277CC4838];
  v11 = *MEMORY[0x277D740C0];
  v12 = 512;
  v13 = *MEMORY[0x277D74118];
  v14 = 256;
  do
  {
    v15 = CTFontCreateWithName(name, v12, 0);
    v16 = objc_alloc(MEMORY[0x277CCA898]);
    v34[0] = v10;
    v34[1] = v11;
    v35[0] = v15;
    v35[1] = color;
    v34[2] = v13;
    v35[2] = v33;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
    v18 = [v16 initWithString:stringCopy attributes:v17];

    v19 = CTFramesetterCreateWithAttributedString(v18);
    v37.location = 0;
    v37.length = 0;
    Frame = CTFramesetterCreateFrame(v19, v37, path, 0);
    length = CTFrameGetVisibleStringRange(Frame).length;
    v22 = [(__CFAttributedString *)v18 length];
    v23 = v14 >> 1;
    if (v14 >> 1 <= 1)
    {
      v23 = 1;
    }

    v24 = v22 > length;
    v25 = v22 > length;
    if (v25)
    {
      v26 = -v14;
    }

    else
    {
      v26 = v14;
    }

    v12 += v26;
    if (v24)
    {
      v14 = v23;
    }

    else
    {
      v27 = v14 >= 4;
      if (v14 < 4)
      {
        v14 = v23;
      }

      else
      {
        v25 = 1;
        v14 = 1;
      }

      if (v27)
      {
        v12 += 2 * v23;
      }
    }

    CFRelease(Frame);
    CFRelease(v19);
    CFRelease(v15);
    v9 = v18;
  }

  while (v25);
  CGPathRelease(path);

  return v18;
}

- (id)createTextLayerForRecognizedObject:(id)object
{
  objectCopy = object;
  overlayString = [objectCopy overlayString];

  if (overlayString)
  {
    [objectCopy boundingBox];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    sessionManager = [(CRCameraReader *)self sessionManager];
    sessionManager2 = [(CRCameraReader *)self sessionManager];
    previewLayer = [sessionManager2 previewLayer];
    v17 = 1.0 - v7;
    [sessionManager convertCameraPointOCR:previewLayer toLayer:0 flipped:{v9, 1.0 - v7}];
    v19 = v18;
    v21 = v20;

    sessionManager3 = [(CRCameraReader *)self sessionManager];
    sessionManager4 = [(CRCameraReader *)self sessionManager];
    previewLayer2 = [sessionManager4 previewLayer];
    v25 = v9 + v13;
    [sessionManager3 convertCameraPointOCR:previewLayer2 toLayer:0 flipped:{v9 + v13, v17}];
    v27 = v26;

    sessionManager5 = [(CRCameraReader *)self sessionManager];
    sessionManager6 = [(CRCameraReader *)self sessionManager];
    previewLayer3 = [sessionManager6 previewLayer];
    v31 = v11 + v17;
    [sessionManager5 convertCameraPointOCR:previewLayer3 toLayer:0 flipped:{v25, v31}];

    sessionManager7 = [(CRCameraReader *)self sessionManager];
    sessionManager8 = [(CRCameraReader *)self sessionManager];
    previewLayer4 = [sessionManager8 previewLayer];
    [sessionManager7 convertCameraPointOCR:previewLayer4 toLayer:0 flipped:{v9, v31}];
    v36 = v35;

    v52.size.width = v36 - v19;
    v52.size.height = v27 - v21;
    v52.origin.x = v19;
    v52.origin.y = v21;
    v53 = CGRectOffset(v52, -(v36 - v19), 0.0);
    x = v53.origin.x;
    y = v53.origin.y;
    width = v53.size.width;
    height = v53.size.height;
    overlayString = [MEMORY[0x277CD9FC8] layer];
    v41 = +[CRColor whiteColor];
    [overlayString setBackgroundColor:{objc_msgSend(v41, "CGColor")}];

    [(CRCameraReader *)self ocrOverlayBackgroundOpacity];
    [overlayString setOpacity:?];
    v42 = +[CRColor blackColor];
    [overlayString setForegroundColor:{objc_msgSend(v42, "CGColor")}];

    [overlayString setFrame:{x, y, width, height}];
    [overlayString setAlignmentMode:*MEMORY[0x277CDA020]];
    [overlayString setFontSize:24.0];
    [objectCopy rotation];
    CATransform3DMakeRotation(&v50, -v43, 0.0, 0.0, 1.0);
    v49 = v50;
    [overlayString setTransform:&v49];
    [overlayString setAllowsFontSubpixelQuantization:1];
    [overlayString setMasksToBounds:1];
    [overlayString setCornerRadius:10.0];
    ocrOverlayFontName = [(CRCameraReader *)self ocrOverlayFontName];
    overlayString2 = [objectCopy overlayString];
    string = [overlayString2 string];
    v47 = -[CRCameraReader attributedStringWithFrame:withFont:withString:color:](self, "attributedStringWithFrame:withFont:withString:color:", ocrOverlayFontName, string, [overlayString foregroundColor], width, height);
    [overlayString setString:v47];
  }

  return overlayString;
}

- (void)showTextDetectorObjects:(id)objects
{
  objectsCopy = objects;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__CRCameraReader_showTextDetectorObjects___block_invoke;
  v6[3] = &unk_278EAA6D0;
  v6[4] = self;
  v7 = objectsCopy;
  v5 = objectsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __42__CRCameraReader_showTextDetectorObjects___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1 + 32) textDetectorRTFeedback];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = *v19;
    do
    {
      v5 = 0;
      do
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v18 + 1) + 8 * v5++) removeFromSuperlayer];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v3);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(a1 + 32) createTextLayerForRecognizedObject:{*(*(&v14 + 1) + 8 * v9), v14}];
        v11 = [*(a1 + 32) view];
        v12 = [v11 layer];
        [v12 addSublayer:v10];

        v13 = [*(a1 + 32) textDetectorRTFeedback];
        [v13 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)sendDidDisplayMessageStyle:(int64_t)style
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__CRCameraReader_sendDidDisplayMessageStyle___block_invoke;
  v3[3] = &unk_278EAA6F8;
  v3[4] = self;
  v3[5] = style;
  cr_dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __45__CRCameraReader_sendDidDisplayMessageStyle___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    v2 = [*(a1 + 32) activityIndicator];
    [v2 stopAnimating];

    if (*(a1 + 40) != 1)
    {
      v3 = [*(a1 + 32) callbackDelegate];
      v4 = objc_opt_respondsToSelector();

      if (v4)
      {
        v5 = [*(a1 + 32) callbackDelegate];
        [v5 cameraReaderDidDisplayMessage:*(a1 + 32)];
      }

      if (*(a1 + 40) != 2)
      {
        v6 = *(a1 + 32);

        [v6 startSession];
      }
    }
  }
}

- (void)sendDidFindTarget:(id)target frameTime:(id *)time
{
  targetCopy = target;
  delegateQueue = [(CRCameraReader *)self delegateQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__CRCameraReader_sendDidFindTarget_frameTime___block_invoke;
  v9[3] = &unk_278EAA830;
  v9[4] = self;
  v11 = *time;
  v8 = targetCopy;
  v10 = v8;
  cr_dispatch_async(delegateQueue, v9);
}

void __46__CRCameraReader_sendDidFindTarget_frameTime___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) didSendFindBox] & 1) == 0)
  {
    [*(a1 + 32) setDidSendFindBox:1];
    v2 = [*(a1 + 32) callbackDelegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [*(a1 + 32) callbackDelegate];
      [v4 cameraReaderDidFindTarget:*(a1 + 32)];
    }
  }

  v10 = *(a1 + 48);
  v5 = *(a1 + 32);
  if (v5)
  {
    [v5 lastSendFindBox];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  lhs = v10;
  rhs = v9;
  CMTimeSubtract(&time, &lhs, &rhs);
  if (CMTimeGetSeconds(&time) > 1.0)
  {
    time = *(a1 + 48);
    [*(a1 + 32) setLastSendFindBox:&time];
    v6 = [*(a1 + 32) callbackDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [*(a1 + 32) callbackDelegate];
      [v8 cameraReaderDidFindTarget:*(a1 + 32) withCorners:*(a1 + 40)];
    }
  }
}

- (void)sendDidEndWithErrorDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:domain code:code userInfo:info];
  [(CRCameraReader *)self sendDidEndWithError:?];
}

- (NSArray)outputObjectTypes
{
  v2 = [(NSArray *)self->_outputObjectTypes copy];

  return v2;
}

- (void)setOutputObjectTypes:(id)types
{
  v21[1] = *MEMORY[0x277D85DE8];
  typesCopy = types;
  if (self->_outputObjectTypes != typesCopy)
  {
    objc_storeStrong(&self->_outputObjectTypes, types);
    [(CRCameraReader *)self releaseCorrectedCardBuffer];
    [(CRCameraReader *)self createCorrectedCardBuffer];
    if ([(NSArray *)self->_outputObjectTypes containsObject:@"CROutputTypeCameraText"])
    {
      v6 = MEMORY[0x277CBEB38];
      v7 = *MEMORY[0x277D70040];
      v20 = *MEMORY[0x277D70040];
      v21[0] = @"en-US";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v9 = [v6 dictionaryWithDictionary:v8];

      optionsDictionary = [(CRCameraReader *)self optionsDictionary];
      LOBYTE(v8) = optionsDictionary == 0;

      if ((v8 & 1) == 0)
      {
        optionsDictionary2 = [(CRCameraReader *)self optionsDictionary];
        [v9 addEntriesFromDictionary:optionsDictionary2];
      }

      v12 = [v9 objectForKey:v7];
      v13 = [v12 isEqualToString:@"zh-Hans"];

      if (v13)
      {
        [v9 setObject:*MEMORY[0x277D70050] forKey:*MEMORY[0x277D70048]];
      }

      v14 = [objc_alloc(MEMORY[0x277D70090]) initWithOptions:v9];
      [(CRCameraReader *)self setOcrImageReader:v14];

      ocrImageReader = [(CRCameraReader *)self ocrImageReader];
      v19 = *MEMORY[0x277D70058];
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      [ocrImageReader setOutputObjectTypes:v16];

      v17 = objc_opt_new();
      [(CRCameraReader *)self setTextDetectorRTFeedback:v17];

      LODWORD(v18) = 0.75;
      [(CRCameraReader *)self setOcrOverlayBackgroundOpacity:v18];
      [(CRCameraReader *)self setOcrOverlayFontName:@"Helvetica"];
    }
  }
}

- (void)setOutputCapturedImageWidth:(unint64_t)width
{
  if (width > 0x5FF)
  {
    if (self->_outputCapturedImageWidth != width)
    {
      self->_outputCapturedImageWidth = width;
      self->_outputCapturedImageHeight = [objc_opt_class() capturedCardHeightForTargetWidth:width];
      [(CRCameraReader *)self releaseCorrectedCardBuffer];

      [(CRCameraReader *)self createCorrectedCardBuffer];
    }
  }

  else
  {
    NSLog(&cfstr_IgnoringAttemp.isa, a2, width, 1536);
  }
}

- (void)setHidePlacementText:(BOOL)text
{
  textCopy = text;
  self->_hidePlacementText = text;
  alignmentLayer = [(CRCameraReader *)self alignmentLayer];
  instructionLayer = [alignmentLayer instructionLayer];
  [instructionLayer setHidden:textCopy];
}

- (id)generateStringFromDate:(id)date
{
  dateCopy = date;
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyyMMddHHmmssSSS"];
  v5 = [v4 stringFromDate:dateCopy];

  return v5;
}

- (void)updateContactsCache:(id)cache
{
  v23[6] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0] == 3)
  {
    v5 = *MEMORY[0x277CBD000];
    v23[0] = *MEMORY[0x277CBCFF8];
    v23[1] = v5;
    v6 = *MEMORY[0x277CBD0B0];
    v23[2] = *MEMORY[0x277CBD058];
    v23[3] = v6;
    v7 = *MEMORY[0x277CBD078];
    v23[4] = *MEMORY[0x277CBD0A8];
    v23[5] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:6];
    v9 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v8];
    v10 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    previousContactMatches = [(CRCameraReader *)self previousContactMatches];
    [previousContactMatches removeAllObjects];

    v22 = 0;
    v12 = [v10 _crossPlatformUnifiedMeContactWithKeysToFetch:v8 error:&v22];
    v13 = v22;
    v14 = [dictionary objectForKey:@"meContact"];
    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = v12 == 0;
    }

    v16 = !v15;

    if (v16)
    {
      v17 = createCachedContact(v12);
      [dictionary setObject:v17 forKey:@"meContact"];

      v18 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
      [(CRCameraReader *)self setContactsCache:v18];
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __38__CRCameraReader_updateContactsCache___block_invoke;
    v20[3] = &unk_278EAAA08;
    v21 = dictionary;
    [v10 enumerateContactsWithFetchRequest:v9 error:0 usingBlock:v20];
  }

  v19 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
  [(CRCameraReader *)self setContactsCache:v19];
}

void __38__CRCameraReader_updateContactsCache___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v12 = v5;
  v7 = [v5 identifier];
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {
    v9 = *(a1 + 32);
    v10 = createCachedContact(v12);
    v11 = [v12 identifier];
    [v9 setObject:v10 forKey:v11];
  }

  if ([*(a1 + 32) count] >= 0x1F4)
  {
    *a3 = 1;
  }
}

- (void)mergeInfo:(id)info intoFindInfo:(id)findInfo
{
  findInfoCopy = findInfo;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__CRCameraReader_mergeInfo_intoFindInfo___block_invoke;
  v7[3] = &unk_278EAAA30;
  v8 = findInfoCopy;
  v6 = findInfoCopy;
  [info enumerateKeysAndObjectsUsingBlock:v7];
}

void __41__CRCameraReader_mergeInfo_intoFindInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([*(a1 + 32) objectForKeyedSubscript:v9], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v9];
    v8 = [v7 arrayByAddingObjectsFromArray:v5];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
  }

  else
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v9];
  }
}

- (id)extractFinalDigitStringFromNumbers:(id)numbers
{
  numbersCopy = numbers;
  if ([numbersCopy count])
  {
    v4 = [numbersCopy objectAtIndex:0];
    v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789 "];
    invertedSet = [v5 invertedSet];

    v7 = [v4 componentsSeparatedByCharactersInSet:invertedSet];
    v8 = [v7 componentsJoinedByString:&stru_2859636D0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (CGRect)uniformPadRect:(CGRect)rect widthPadding:(float)padding heightPadding:(float)heightPadding width:(double)width height:(double)height
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v14 = fmin(padding, fmin(rect.origin.x, width - CGRectGetMaxX(rect)));
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v15 = fmin(heightPadding, fmin(y, height - CGRectGetMaxY(v20)));
  if (v15 <= 0.0 || v14 <= 0.0)
  {
    NSLog(&cfstr_Corerecognitio.isa, *&v14, *&v15);
  }

  else
  {
    v16 = fmin(v14 / width, v15 / height);
    v17 = -(height * v16);
    v18 = -(width * v16);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v22 = CGRectInset(v21, v17, v18);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
  }

  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v26.size.width = width;
  v26.size.height = height;
  v24 = CGRectIntersection(v23, v26);

  return CGRectIntegral(v24);
}

+ (CGRect)aspectRatioPaddedRect:(CGRect)rect expectedWidth:(double)width height:(double)height orientation:(unsigned int)orientation
{
  width = rect.size.width;
  height = rect.size.height;
  x = rect.origin.x;
  y = rect.origin.y;
  v11 = width / height;
  if (orientation != 6)
  {
    width = rect.size.width;
    height = rect.size.height;
    x = rect.origin.x;
    y = rect.origin.y;
    if (orientation != 8)
    {
      width = rect.size.height;
      height = rect.size.width;
      x = rect.origin.y;
      y = rect.origin.x;
    }
  }

  if (width / height <= v11)
  {
    if (v11 <= width / height)
    {
      goto LABEL_22;
    }

    v14 = (height * width / height - width) * 0.5;
    v13 = 0.0;
    if (x >= v14)
    {
      x = v14;
    }

    else
    {
      v13 = (v14 - x) * height / width;
    }

    if (orientation != 8 && orientation != 6)
    {
      v15 = -x;
      goto LABEL_14;
    }

    v16 = -x;
LABEL_20:
    v15 = v13;
    goto LABEL_21;
  }

  v12 = (width * height / width - height) * 0.5;
  v13 = 0.0;
  if (y >= v12)
  {
    y = v12;
  }

  else
  {
    v13 = (v12 - y) * width / height;
  }

  if (orientation != 8 && orientation != 6)
  {
    v16 = -y;
    goto LABEL_20;
  }

  v15 = -y;
LABEL_14:
  v16 = v13;
LABEL_21:
  rect = CGRectInset(rect, v16, v15);
LABEL_22:

  return CGRectIntegral(rect);
}

+ (id)perspectiveCorrectedImage:(id)image p1:(CGPoint)p1 p2:(CGPoint)p2 p3:(CGPoint)p3 p4:(CGPoint)p4
{
  y = p4.y;
  x = p4.x;
  v9 = p3.y;
  v10 = p3.x;
  v11 = p2.y;
  v12 = p2.x;
  v13 = p1.y;
  v14 = p1.x;
  imageCopy = image;
  v16 = [MEMORY[0x277CBF750] filterWithName:@"CIPerspectiveCorrection"];
  v17 = [MEMORY[0x277CBF788] vectorWithCGPoint:{v14, v13}];
  [v16 setValue:v17 forKey:@"inputTopLeft"];

  v18 = [MEMORY[0x277CBF788] vectorWithCGPoint:{v12, v11}];
  [v16 setValue:v18 forKey:@"inputTopRight"];

  v19 = [MEMORY[0x277CBF788] vectorWithCGPoint:{v10, v9}];
  [v16 setValue:v19 forKey:@"inputBottomRight"];

  v20 = [MEMORY[0x277CBF788] vectorWithCGPoint:{x, y}];
  [v16 setValue:v20 forKey:@"inputBottomLeft"];

  [v16 setValue:imageCopy forKey:*MEMORY[0x277CBFAF0]];
  v21 = [v16 valueForKey:*MEMORY[0x277CBFB50]];

  return v21;
}

+ (id)scaledImage:(id)image width:(double)width height:(double)height
{
  imageCopy = image;
  [imageCopy extent];
  v9 = v8;
  [imageCopy extent];
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeScale(&v14, width / v9, height / v10);
  v13 = v14;
  v11 = [imageCopy imageByApplyingTransform:&v13];

  return v11;
}

+ (id)platformImageFromCIImage:(id)image
{
  imageCopy = image;
  v4 = [MEMORY[0x277CBF740] contextWithOptions:0];
  [imageCopy extent];
  v5 = [v4 createCGImage:imageCopy fromRect:?];
  v6 = [MEMORY[0x277D755B8] imageWithCGImage:v5];
  CGImageRelease(v5);

  return v6;
}

- (CRCameraReaderDelegate)callbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_callbackDelegate);

  return WeakRetained;
}

@end