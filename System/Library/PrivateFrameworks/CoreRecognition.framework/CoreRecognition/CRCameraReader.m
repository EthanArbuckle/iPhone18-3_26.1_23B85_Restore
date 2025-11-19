@interface CRCameraReader
+ (CGRect)aspectRatioPaddedRect:(CGRect)a3 expectedWidth:(double)a4 height:(double)a5 orientation:(unsigned int)a6;
+ (CGRect)uniformPadRect:(CGRect)a3 widthPadding:(float)a4 heightPadding:(float)a5 width:(double)a6 height:(double)a7;
+ (id)extractCardImage:(id)a3 fromPixelBuffer:(__CVBuffer *)a4 withCardBuffer:(__CVBuffer *)a5 cameraIntrinsicData:(id)a6;
+ (id)extractCardImage:(id)a3 fromPixelBuffer:(__CVBuffer *)a4 withCardBuffer:(__CVBuffer *)a5 withPoints:(id)a6 cameraIntrinsicData:(id)a7;
+ (id)extractCardImage:(id)a3 fromPixelBuffer:(__CVBuffer *)a4 withCardBuffer:(__CVBuffer *)a5 withPoints:(id)a6 cameraIntrinsicData:(id)a7 padding:(float)a8 inputOrientation:(int)a9;
+ (id)extractCardImage:(id)a3 fromPixelBuffer:(__CVBuffer *)a4 withCardBuffer:(__CVBuffer *)a5 withPoints:(id)a6 cameraIntrinsicData:(id)a7 padding:(float)a8 inputOrientation:(int)a9 unpaddedCardImage:(id *)a10;
+ (id)findCodeInImage:(vImage_Buffer *)a3 maxStage:(unint64_t)a4;
+ (id)findCodeInImage:(vImage_Buffer *)a3 maxStage:(unint64_t)a4 outputObjectTypes:(id)a5;
+ (id)findCodeInImage:(vImage_Buffer *)a3 maxStage:(unint64_t)a4 roi:(CGRect)a5;
+ (id)findCodeInImage:(vImage_Buffer *)a3 maxStage:(unint64_t)a4 roi:(CGRect)a5 outputObjectTypes:(id)a6;
+ (id)perspectiveCorrectedImage:(id)a3 p1:(CGPoint)a4 p2:(CGPoint)a5 p3:(CGPoint)a6 p4:(CGPoint)a7;
+ (id)platformImageFromCIImage:(id)a3;
+ (id)scaledImage:(id)a3 width:(double)a4 height:(double)a5;
+ (id)targetRectsForImage:(id)a3;
+ (id)textFeatureWithVNTextObservation:(id)a3;
+ (unint64_t)supportedCameraCount;
+ (void)loadFonts;
- (CGRect)boxLayerPresentationFrame;
- (CRCameraReader)initWithNibName:(id)a3 bundle:(id)a4 options:(id)a5;
- (CRCameraReaderDelegate)callbackDelegate;
- (NSArray)outputObjectTypes;
- (__CVBuffer)createFastAccessPixelBufferWithSize:(CGSize)a3 videoFormat:(int)a4;
- (id)attributedStringWithFrame:(CGSize)a3 withFont:(id)a4 withString:(id)a5 color:(CGColor *)a6;
- (id)cameraIntrinsicDataForSampleBuffer:(opaqueCMSampleBuffer *)a3 width:(unint64_t)a4 height:(unint64_t)a5;
- (id)createTextLayerForRecognizedObject:(id)a3;
- (id)currentDeviceID;
- (id)extractFinalDigitStringFromNumbers:(id)a3;
- (id)findCCExpDateInImageEmbossed:(id)a3;
- (id)findCCNameInImageEmbossed:(id)a3;
- (id)findCCNumberInImageEmbossed:(id)a3;
- (id)findCCNumberInImageEmbossed:(id)a3 withFinalDigit:(id)a4;
- (id)findCCObjectEmbossed:(id)a3 inImage:(id)a4 forRect:(id)a5;
- (id)findCCObjectsEmbossed:(id)a3 inImage:(id)a4 numberRects:(id)a5 nameRects:(id)a6 dateRects:(id)a7;
- (id)findCCResultsInImageFlat:(id)a3 usingTextFeatures:(id)a4 invert:(BOOL)a5;
- (id)findObjectsEmbossed:(id)a3 inImage:(id)a4;
- (id)findObjectsFlat:(id)a3 inImage:(id)a4 numberRects:(id)a5 invert:(BOOL)a6;
- (id)generateStringFromDate:(id)a3;
- (id)getCorrectedIDImageFromAuxiliaryPoints:(id)a3 fromPixelBuffer:(__CVBuffer *)a4 orientation:(unsigned int)a5 unpaddedCardImage:(id *)a6;
- (int64_t)currentCameraIdentifier;
- (unint64_t)getFirstTimeFrameIndexForPinnedField:(id)a3;
- (void)aetPlacementTextColor:(id)a3;
- (void)animatePresentCodeAtFrameTime:(id *)a3;
- (void)cancel;
- (void)captureImage;
- (void)captureImageFromSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)createCorrectedCardBuffer;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)findCodeInSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)findIDObjects:(id)a3 inPixelBuffer:(__CVBuffer *)a4 cameraIntrinsicData:(id)a5 frameTime:(id *)a6;
- (void)findOCRTextObjects:(id)a3 inPixelBuffer:(__CVBuffer *)a4 attachments:(id)a5 frameTime:(id *)a6;
- (void)findObjects:(id)a3 inPixelBuffer:(__CVBuffer *)a4 cameraIntrinsicData:(id)a5 frameTime:(id *)a6;
- (void)flashScreenAndPlayCaptureSound;
- (void)hideBoxLayer;
- (void)loadModels;
- (void)loadView;
- (void)mergeInfo:(id)a3 intoFindInfo:(id)a4;
- (void)orientationDidChange:(id)a3;
- (void)pauseBoxLayerHideTimer;
- (void)primeBoxLayerHideTimerWithFrameTime:(id *)a3;
- (void)releaseCorrectedCardBuffer;
- (void)removeLayerTree;
- (void)sendDidCancel;
- (void)sendDidDisplayMessageStyle:(int64_t)a3;
- (void)sendDidEndAnimation;
- (void)sendDidEndWithError:(id)a3;
- (void)sendDidEndWithErrorDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5;
- (void)sendDidEndWithInfo:(id)a3;
- (void)sendDidFindTarget:(id)a3 frameTime:(id *)a4;
- (void)sendDidRecognizeNewObjects:(id)a3;
- (void)sendProvideOverlayObjects:(id)a3;
- (void)setCapturedTextColor:(id)a3;
- (void)setFirstTimeFrameIndexForPinnedField:(id)a3;
- (void)setHidePlacementText:(BOOL)a3;
- (void)setMaskColor:(id)a3;
- (void)setMaskOutlineColor:(id)a3;
- (void)setOutputCapturedImageWidth:(unint64_t)a3;
- (void)setOutputObjectTypes:(id)a3;
- (void)setupInitialLayerConfiguration;
- (void)showMessage:(id)a3 color:(id)a4 style:(int64_t)a5 duration:(double)a6;
- (void)showTextDetectorObjects:(id)a3;
- (void)start;
- (void)startSession;
- (void)stopSession;
- (void)switchToCamera:(int64_t)a3;
- (void)switchToCameraWithDeviceID:(id)a3;
- (void)toggleCamera;
- (void)updateContactsCache:(id)a3;
- (void)updatePinnedInfoFrameIndex;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

  v6 = [v5 devices];
  v7 = [v6 count];

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

- (CRCameraReader)initWithNibName:(id)a3 bundle:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 mutableCopy];
  [(CRCameraReader *)self setOptionsDictionary:v11];

  [objc_opt_class() loadFonts];
  v36.receiver = self;
  v36.super_class = CRCameraReader;
  v12 = [(CRCameraReader *)&v36 initWithNibName:v8 bundle:v9];
  if (v12)
  {
    v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    -[CRCameraReader setConfigPresentCentered:](v12, "setConfigPresentCentered:", [v13 BOOLForKey:@"com.apple.CoreRecognition.RedeemerPresentCentered"]);

    v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v15 = [v14 BOOLForKey:@"com.apple.CoreRecognition.RedeemerDemoMode"];
    v16 = 1.0;
    if (v15)
    {
      v16 = 0.25;
    }

    [(CRCameraReader *)v12 setConfigDemoSpeed:v16];

    v17 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    -[CRCameraReader setConfigUseFastScanning:](v12, "setConfigUseFastScanning:", [v17 BOOLForKey:@"com.apple.CoreRecognition.UseFastScanning"]);

    v18 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    -[CRCameraReader setConfigUseJPEGForColor:](v12, "setConfigUseJPEGForColor:", [v18 BOOLForKey:@"com.apple.CoreRecognition.useJPEGForColor"]);

    v19 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    -[CRCameraReader setShowDiagnosticHUD:](v12, "setShowDiagnosticHUD:", [v19 BOOLForKey:@"com.apple.CoreRecognition.showDiagnosticHUD"]);

    [(CRCameraReader *)v12 setCaptureCount:1];
    v20 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    [(CRCameraReader *)v12 setCaptureBuffer:v20];

    [(CRCameraReader *)v12 setSessionTimeout:INFINITY];
    [(CRCameraReader *)v12 setWhiteBalanceMode:2];
    [(CRCameraReader *)v12 setFocusMode:2];
    [(CRCameraReader *)v12 setExposureMode:2];
    [(CRCameraReader *)v12 setTorchMode:0];
    [(CRCameraReader *)v12 setCameraMode:*MEMORY[0x277CE5980]];
    [(CRCameraReader *)v12 setHidePlacementText:0];
    [(CRCameraReader *)v12 setEnableAltIDCardScan:0];
    [(CRCameraReader *)v12 setEnableManualIDCapture:0];
    v21 = [MEMORY[0x277D75418] currentDevice];
    -[CRCameraReader setCameraPosition:](v12, "setCameraPosition:", [v21 userInterfaceIdiom] == 1);

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

    v28 = [MEMORY[0x277D75348] whiteColor];
    maskOutlineColor = v12->_maskOutlineColor;
    v12->_maskOutlineColor = v28;

    v30 = [MEMORY[0x277D75348] whiteColor];
    placementTextColor = v12->_placementTextColor;
    v12->_placementTextColor = v30;

    v32 = [MEMORY[0x277D75348] whiteColor];
    capturedTextColor = v12->_capturedTextColor;
    v12->_capturedTextColor = v32;

    v34 = [(CRCameraReader *)v12 alignmentLayer];
    [v34 propogateMaskColor:v12->_maskColor outlineColor:v12->_maskOutlineColor placementTextColor:v12->_placementTextColor capturedTextColor:v12->_capturedTextColor];

    v12->_outputCapturedImageWidth = 1536;
    v12->_outputCapturedImageHeight = 960;
    [(CRCameraReader *)v12 setEnableUnpaddedIDCapture:0];
  }

  return v12;
}

- (void)setMaskColor:(id)a3
{
  v7 = a3;
  v4 = [v7 copy];
  maskColor = self->_maskColor;
  self->_maskColor = v4;

  if ([(CRCameraReader *)self isViewLoaded])
  {
    v6 = [(CRCameraReader *)self alignmentLayer];
    [v6 propogateMaskColor:self->_maskColor outlineColor:self->_maskOutlineColor placementTextColor:self->_placementTextColor capturedTextColor:self->_capturedTextColor];
  }
}

- (void)setMaskOutlineColor:(id)a3
{
  v7 = a3;
  v4 = [v7 copy];
  maskOutlineColor = self->_maskOutlineColor;
  self->_maskOutlineColor = v4;

  if ([(CRCameraReader *)self isViewLoaded])
  {
    v6 = [(CRCameraReader *)self alignmentLayer];
    [v6 propogateMaskColor:self->_maskColor outlineColor:self->_maskOutlineColor placementTextColor:self->_placementTextColor capturedTextColor:self->_capturedTextColor];
  }
}

- (void)aetPlacementTextColor:(id)a3
{
  v7 = a3;
  v4 = [v7 copy];
  placementTextColor = self->_placementTextColor;
  self->_placementTextColor = v4;

  if ([(CRCameraReader *)self isViewLoaded])
  {
    v6 = [(CRCameraReader *)self alignmentLayer];
    [v6 propogateMaskColor:self->_maskColor outlineColor:self->_maskOutlineColor placementTextColor:self->_placementTextColor capturedTextColor:self->_capturedTextColor];
  }
}

- (void)setCapturedTextColor:(id)a3
{
  v7 = a3;
  v4 = [v7 copy];
  capturedTextColor = self->_capturedTextColor;
  self->_capturedTextColor = v4;

  if ([(CRCameraReader *)self isViewLoaded])
  {
    v6 = [(CRCameraReader *)self alignmentLayer];
    [v6 propogateMaskColor:self->_maskColor outlineColor:self->_maskOutlineColor placementTextColor:self->_placementTextColor capturedTextColor:self->_capturedTextColor];
  }
}

- (void)orientationDidChange:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39__CRCameraReader_orientationDidChange___block_invoke;
  v3[3] = &unk_278EAA5E8;
  v3[4] = self;
  cr_dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (__CVBuffer)createFastAccessPixelBufferWithSize:(CGSize)a3 videoFormat:(int)a4
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
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 bounds];
  v6 = [v4 initWithFrame:?];
  [(CRCameraReader *)self setView:v6];

  v7 = +[CRColor blackColor];
  v8 = [(CRCameraReader *)self view];
  [v8 setBackgroundColor:v7];

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

  v13 = [(CRCameraReader *)self sessionManager];
  [v13 setCaptureSessionDelegate:self];

  v14 = [(CRCameraReader *)self sessionManager];
  [v14 setCaptureSessionMetadataDelegate:self];

  v15 = [(CRCameraReader *)self cameraPosition];
  v16 = [(CRCameraReader *)self sessionManager];
  [v16 setCameraPosition:v15];

  v17 = [(CRCameraReader *)self whiteBalanceMode];
  v18 = [(CRCameraReader *)self sessionManager];
  [v18 setWhiteBalanceMode:v17];

  v19 = [(CRCameraReader *)self focusMode];
  v20 = [(CRCameraReader *)self sessionManager];
  [v20 setFocusMode:v19];

  v21 = [(CRCameraReader *)self exposureMode];
  v22 = [(CRCameraReader *)self sessionManager];
  [v22 setExposureMode:v21];

  v23 = [(CRCameraReader *)self torchMode];
  v24 = [(CRCameraReader *)self sessionManager];
  [v24 setTorchMode:v23];

  v25 = MEMORY[0x277CBEB98];
  v26 = [(CRCameraReader *)self outputObjectTypes];
  v27 = [v25 setWithArray:v26];

  v28 = [v27 containsObject:@"CROutputTypeQRCode"];
  v29 = [(CRCameraReader *)self sessionManager];
  [v29 setEnableMetadataOutput:v28];

  if (([v27 containsObject:@"CROutputTypeQRCode"] & 1) != 0 || objc_msgSend(v27, "containsObject:", @"CROutputTypeHomeKitCode"))
  {
    v30 = [(CRCameraReader *)self sessionManager];
    [v30 setTargetFocusDistance:140];
  }

  else
  {
    v30 = [(CRCameraReader *)self sessionManager];
    [v30 setTargetFocusDistance:160];
  }

  v31 = [(CRCameraReader *)self cameraMode];
  v32 = [(CRCameraReader *)self sessionManager];
  [v32 setCameraMode:v31];

  v33 = [v27 containsObject:@"CROutputTypeiTunesCode"];
  v34 = MEMORY[0x277CE59A8];
  if ((v33 & 1) == 0 && ([v27 containsObject:@"CROutputTypeHomeKitCode"] & 1) == 0)
  {
    v35 = [(CRCameraReader *)self sessionManager];
    [v35 setCameraMode:*v34];

    v36 = [(CRCameraReader *)self sessionManager];
    [v36 setCameraPosition:0];
  }

  v37 = [(CRCameraReader *)self sessionManager];
  v38 = [v37 enableMetadataOutput];

  if (v38)
  {
    [(CRCameraReader *)self setCameraMode:*MEMORY[0x277CE5960]];
    v39 = [(CRCameraReader *)self cameraMode];
    v40 = [(CRCameraReader *)self sessionManager];
    [v40 setCameraMode:v39];
  }

  v41 = [(CRCameraReader *)self sessionManager];
  [v41 setupCameraSession];

  v42 = [(CRCameraReader *)self sessionManager];
  v43 = [v42 cameraMode];
  v44 = *v34;

  if (v43 == v44)
  {
    [(CRCameraReader *)self releaseCorrectedCardBuffer];
    [(CRCameraReader *)self createCorrectedCardBuffer];
  }

  v45 = [(CRCameraReader *)self view];
  v46 = [v45 layer];
  v47 = [(CRCameraReader *)self sessionManager];
  v48 = [v47 previewLayer];
  [v46 addSublayer:v48];

  v49 = +[CRAlignmentLayer layer];
  [(CRCameraReader *)self setAlignmentLayer:v49];

  v50 = [(CRCameraReader *)self alignmentLayer];
  v51 = [v50 instructionLayer];
  [v51 setHidden:{-[CRCameraReader hidePlacementText](self, "hidePlacementText")}];

  v52 = [(CRCameraReader *)self view];
  v53 = [v52 layer];
  v54 = [(CRCameraReader *)self alignmentLayer];
  [v53 addSublayer:v54];

  v55 = [(CRCameraReader *)self alignmentLayer];
  [v55 setDelegate:self];

  if ([(CRCameraReader *)self showDiagnosticHUD])
  {
    v56 = +[DiagnosticHUDLayer layer];
    [(CRCameraReader *)self setDiagnosticHUDLayer:v56];

    v57 = [(CRCameraReader *)self view];
    v58 = [v57 layer];
    v59 = [(CRCameraReader *)self diagnosticHUDLayer];
    [v58 addSublayer:v59];
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
  v63 = [(CRCameraReader *)self view];
  v64 = [v63 layer];
  v68[2] = v77;
  v68[3] = v78;
  v68[4] = v79;
  v68[0] = v75;
  v68[1] = v76;
  v69 = v80;
  v70 = 0xBF45D867C3ECE2A5;
  v71 = v73;
  v72 = v74;
  [v64 setSublayerTransform:v68];

  v65 = objc_opt_new();
  [(CRCameraReader *)self setPreviousContactMatches:v65];

  v66 = [(CRCameraReader *)self processingQueue];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __26__CRCameraReader_loadView__block_invoke_2;
  v67[3] = &unk_278EAA5E8;
  v67[4] = self;
  cr_dispatch_async(v66, v67);
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
  v38 = [(CRCameraReader *)self sessionManager];
  v3 = [v38 previewLayer];
  v4 = [v3 superlayer];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CRCameraReader *)self sessionManager];
  v14 = [v13 previewLayer];
  [v14 setFrame:{v6, v8, v10, v12}];

  v39 = [(CRCameraReader *)self alignmentLayer];
  v15 = [v39 superlayer];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [(CRCameraReader *)self alignmentLayer];
  [v24 setFrame:{v17, v19, v21, v23}];

  v40 = [(CRCameraReader *)self diagnosticHUDLayer];
  v25 = [v40 superlayer];
  [v25 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [(CRCameraReader *)self diagnosticHUDLayer];
  [v34 setFrame:{v27, v29, v31, v33}];

  v41 = [(CRCameraReader *)self sessionManager];
  v35 = [(CRCameraReader *)self view];
  v36 = [v35 window];
  v37 = [v36 windowScene];
  [v41 setPreviewOrientation:{objc_msgSend(v37, "interfaceOrientation")}];

  v42 = [(CRCameraReader *)self alignmentLayer];
  [v42 setNeedsLayout];

  v43 = [(CRCameraReader *)self diagnosticHUDLayer];
  [v43 setNeedsLayout];
}

- (void)viewWillAppear:(BOOL)a3
{
  v21.receiver = self;
  v21.super_class = CRCameraReader;
  [(CRCameraReader *)&v21 viewWillAppear:a3];
  v4 = [MEMORY[0x277D75418] currentDevice];
  [v4 beginGeneratingDeviceOrientationNotifications];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_orientationDidChange_ name:*MEMORY[0x277D76878] object:v4];

  v6 = [[CRPollingTimer alloc] initWithTarget:self selector:sel_hideBoxLayer];
  [(CRCameraReader *)self setBoxLayerHideTimer:v6];

  if ([(CRCameraReader *)self isCaptureMode])
  {
    v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTapFrom_];
    [(CRCameraReader *)self setTapGestureRecognizer:v7];

    v8 = [(CRCameraReader *)self tapGestureRecognizer];
    [v8 setNumberOfTapsRequired:1];

    v9 = [(CRCameraReader *)self tapGestureRecognizer];
    [v9 setNumberOfTouchesRequired:1];

    v10 = [(CRCameraReader *)self view];
    v11 = [(CRCameraReader *)self tapGestureRecognizer];
    [v10 addGestureRecognizer:v11];
  }

  v12 = [(CRCameraReader *)self view];
  v13 = [v12 layer];
  [v13 setMasksToBounds:1];

  [(CRCameraReader *)self startSession];
  v14 = MEMORY[0x277CBEB98];
  v15 = [(CRCameraReader *)self outputObjectTypes];
  v16 = [v14 setWithArray:v15];

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

  v18 = [(CRCameraReader *)self alignmentLayer];
  [v18 fadePlacementImage];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = CRCameraReader;
  [(CRCameraReader *)&v10 viewDidDisappear:a3];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = [MEMORY[0x277D75418] currentDevice];
  [v4 removeObserver:self name:*MEMORY[0x277D76878] object:v5];

  v6 = [(CRCameraReader *)self tapGestureRecognizer];

  if (v6)
  {
    v7 = [(CRCameraReader *)self view];
    v8 = [(CRCameraReader *)self tapGestureRecognizer];
    [v7 removeGestureRecognizer:v8];

    [(CRCameraReader *)self setTapGestureRecognizer:0];
  }

  v9 = [(CRCameraReader *)self boxLayerHideTimer];
  [v9 invalidate];

  [(CRCameraReader *)self setBoxLayerHideTimer:0];
  [(CRCameraReader *)self stopSession];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = CRCameraReader;
  [(CRCameraReader *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__CRCameraReader_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_278EAA658;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
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
  v4 = [(CRCameraReader *)self outputObjectTypes];
  v9 = [v3 setWithArray:v4];

  if (([v9 containsObject:@"CROutputTypeIDCardFront"] & 1) != 0 || objc_msgSend(v9, "containsObject:", @"CROutputTypeIDCardBack"))
  {
    v5 = [(CRCameraReader *)self outputCapturedImageWidth];
    v6 = [(CRCameraReader *)self outputCapturedImageHeight];
    v7 = [(CRCameraReader *)self sessionManager];
    v8 = -[CRCameraReader createFastAccessPixelBufferWithSize:videoFormat:](self, "createFastAccessPixelBufferWithSize:videoFormat:", [v7 targetVideoFormat], v5, v6);
  }

  else
  {
    v7 = [(CRCameraReader *)self sessionManager];
    v8 = -[CRCameraReader createFastAccessPixelBufferWithSize:videoFormat:](self, "createFastAccessPixelBufferWithSize:videoFormat:", [v7 targetVideoFormat], 768.0, 480.0);
  }

  self->_correctedCardBuffer = v8;
}

- (void)dealloc
{
  delegateQueue = self->_delegateQueue;
  self->_delegateQueue = 0;

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277CBD140] object:0];

  v5 = [MEMORY[0x277D75418] currentDevice];
  [v5 endGeneratingDeviceOrientationNotifications];

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
  v13 = [(CRCameraReader *)self boxLayer];
  [v13 setHidden:1];

  v14 = [(CRCameraReader *)self alignmentLayer];
  [v14 resetLayer];

  v3 = [(CRCameraReader *)self hidePlacementText];
  v15 = [(CRCameraReader *)self alignmentLayer];
  v4 = [v15 instructionLayer];
  [v4 setHidden:v3];

  v5 = [(CRCameraReader *)self boxLayer];

  if (v5)
  {
    v16 = [(CRCameraReader *)self boxLayer];
    [v16 removeFromSuperlayer];
  }

  v17 = +[CRBoxLayer layer];
  [(CRCameraReader *)self setBoxLayer:?];

  v18 = [(CRCameraReader *)self view];
  v6 = [v18 layer];
  v7 = [(CRCameraReader *)self boxLayer];
  [v6 addSublayer:v7];

  v19 = [(CRCameraReader *)self sessionManager];
  v8 = [v19 previewLayer];
  LODWORD(v9) = 1.0;
  [v8 setOpacity:v9];

  v10 = MEMORY[0x277CBEB98];
  v11 = [(CRCameraReader *)self outputObjectTypes];
  v20 = [v10 setWithArray:v11];

  if (([v20 containsObject:@"CROutputTypeCreditCardNumber"] & 1) != 0 || (objc_msgSend(v20, "containsObject:", @"CROutputTypeCreditCardName") & 1) != 0 || (objc_msgSend(v20, "containsObject:", @"CRCameraReaderCreditCardExpirationDate") & 1) != 0 || (objc_msgSend(v20, "containsObject:", @"CROutputTypeIDCardFront") & 1) != 0 || objc_msgSend(v20, "containsObject:", @"CROutputTypeIDCardBack"))
  {
    v12 = [(CRCameraReader *)self alignmentLayer];
    [v12 setHidden:0];
  }

  else
  {
    v12 = [(CRCameraReader *)self alignmentLayer];
    [v12 setHidden:1];
  }
}

- (void)didReceiveMemoryWarning
{
  v6.receiver = self;
  v6.super_class = CRCameraReader;
  [(CRCameraReader *)&v6 didReceiveMemoryWarning];
  if ([(CRCameraReader *)self isViewLoaded])
  {
    v3 = [(CRCameraReader *)self view];
    v4 = [v3 window];

    if (!v4)
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
  v3 = [(CRCameraReader *)self sessionManager];

  if (v3)
  {
    v4 = [(CRCameraReader *)self sessionManager];
    [v4 toggleCamera];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__CRCameraReader_toggleCamera__block_invoke;
    block[3] = &unk_278EAA5E8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)switchToCameraWithDeviceID:(id)a3
{
  v5 = a3;
  v4 = [(CRCameraReader *)self sessionManager];
  [v4 switchToCameraWithDeviceID:v5];
}

- (int64_t)currentCameraIdentifier
{
  v2 = [(CRCameraReader *)self sessionManager];
  v3 = [v2 cameraPosition];

  return v3;
}

- (id)currentDeviceID
{
  v2 = [(CRCameraReader *)self sessionManager];
  v3 = [v2 currentDeviceID];

  return v3;
}

- (void)switchToCamera:(int64_t)a3
{
  v5 = [(CRCameraReader *)self sessionManager];

  if (v5)
  {
    v6 = [(CRCameraReader *)self sessionManager];
    [v6 switchToCamera:a3];
  }
}

- (void)captureImage
{
  v3 = [(CRCameraReader *)self captureCount];
  v4 = [(CRCameraReader *)self imagesToCapture]+ v3;

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
  v4 = [MEMORY[0x277CBEAA8] distantPast];
  [(CRCameraReader *)self setCodePresented:v4];

  [(CRCameraReader *)self setCodeInverted:0];
  [(CRCameraReader *)self setDidSendEndOrCancel:0];
  [(CRCameraReader *)self setDidSendFindBox:0];
  v13 = *v3;
  v14 = *(v3 + 2);
  [(CRCameraReader *)self setLastSendFindBox:&v13];
  [(CRCameraReader *)self setImagesToCapture:0];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  [(CRCameraReader *)self setCardNumberCounts:v5];

  v6 = [MEMORY[0x277CBEB38] dictionary];
  [(CRCameraReader *)self setCardholderCounts:v6];

  v7 = [MEMORY[0x277CBEB38] dictionary];
  [(CRCameraReader *)self setExpirationDateCounts:v7];

  v8 = [MEMORY[0x277CBEB38] dictionary];
  [(CRCameraReader *)self setPinnedFoundInfo:v8];

  v13 = *MEMORY[0x277CC08B0];
  v14 = *(MEMORY[0x277CC08B0] + 16);
  [(CRCameraReader *)self setLastFieldFoundTime:&v13];
  v9 = [MEMORY[0x277CBEB18] array];
  [(CRCameraReader *)self setNameCutRects:v9];

  v10 = [MEMORY[0x277CBEB18] array];
  [(CRCameraReader *)self setDateCutRects:v10];

  v11 = [MEMORY[0x277CBEB18] array];
  [(CRCameraReader *)self setCardBlurValues:v11];

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

- (id)cameraIntrinsicDataForSampleBuffer:(opaqueCMSampleBuffer *)a3 width:(unint64_t)a4 height:(unint64_t)a5
{
  v8 = CMGetAttachment(a3, *MEMORY[0x277CC06B0], 0);
  v9 = CMGetAttachment(a3, *MEMORY[0x277CF3F30], 0);
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

      *&_Q0 = (a4 + -1.0) * 0.5;
      *(&_Q0 + 1) = (a5 + -1.0) * 0.5;
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

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v7 = [CRInsights sharedInsights:a3];
  [v7 attachNewContextToCurrentThreadWithCameraReader:self];

  memset(&v22, 0, sizeof(v22));
  CMSampleBufferGetPresentationTimeStamp(&v22, a4);
  [(CRCameraReader *)self sessionStarted];
  if ((time.flags & 1) == 0)
  {
    time = v22;
    [(CRCameraReader *)self setSessionStarted:&time];
  }

  v8 = [(CRCameraReader *)self boxLayerHideTimer];
  time = v22;
  [v8 evalAtTime:&time];

  v9 = [(CRCameraReader *)self sessionManager];
  if ([v9 isAdjustingFocus])
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

  v10 = [(CRCameraReader *)self sessionIsStopping];

  if (v10)
  {
    return;
  }

  if ([(CRCameraReader *)self isCaptureMode])
  {
    [(CRCameraReader *)self captureImageFromSampleBuffer:a4];
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

  [(CRCameraReader *)self setLastBuffer:CFRetain(a4)];
  v13 = [(CRCameraReader *)self processingImage];
  v14 = dispatch_semaphore_wait(v13, 0);

  if (!v14)
  {
    CFRetain(a4);
    v15 = [(CRCameraReader *)self diagnosticHUDLayer];

    if (v15)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __69__CRCameraReader_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke_2;
      v18[3] = &unk_278EAA5E8;
      v18[4] = self;
      cr_dispatch_async(MEMORY[0x277D85CD0], v18);
    }

    v9 = [(CRCameraReader *)self processingQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __69__CRCameraReader_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke_3;
    v16[3] = &unk_278EAA680;
    v16[4] = self;
    v16[5] = a4;
    v17 = v22;
    cr_dispatch_async(v9, v16);
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

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5
{
  v51[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v51[0] = *MEMORY[0x277CE5A80];
  v33 = v6;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
  if (v6 && [v6 count])
  {
    v37 = [v6 objectAtIndex:0];
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
        v8 = [v37 type];
        LODWORD(v7) = [v8 isEqualToString:v7];

        if (v7)
        {
          v9 = [v37 stringValue];
          if (([v9 isEqualToString:&stru_2859636D0] & 1) == 0)
          {
            v10 = [(CRCameraReader *)self callbackDelegate];
            v11 = [v37 stringValue];
            v12 = [v10 cameraReader:self shouldReturnQRCode:v11];

            if (!v12)
            {
              continue;
            }

            v9 = [MEMORY[0x277CBEB18] array];
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v13 = [v37 corners];
            v14 = [v13 countByEnumeratingWithState:&v41 objects:v49 count:16];
            if (v14)
            {
              v15 = *v42;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v42 != v15)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v17 = *(*(&v41 + 1) + 8 * j);
                  v18 = [v17 objectForKey:@"X"];
                  [v18 floatValue];
                  v20 = v19;
                  v21 = [(CRCameraReader *)self sessionManager];
                  [v21 cameraResolution];
                  v23 = v22;
                  v24 = [v17 objectForKey:@"Y"];
                  [v24 floatValue];
                  v26 = v25;
                  v27 = [(CRCameraReader *)self sessionManager];
                  [v27 cameraResolution];
                  v29 = v28;

                  v30 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v23 * v20, v29 * v26}];
                  [v9 addObject:v30];
                }

                v14 = [v13 countByEnumeratingWithState:&v41 objects:v49 count:16];
              }

              while (v14);
            }

            v31 = [v37 stringValue];
            [(CRCameraReader *)self setFoundCode:v31];

            [(CRCameraReader *)self setFoundPoints:v9];
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
  v4 = [(CRCameraReader *)self view];
  v5 = [v4 window];
  [v5 frame];
  v6 = [v3 initWithFrame:?];

  v7 = +[CRColor whiteColor];
  [v6 setBackgroundColor:v7];

  v8 = [(CRCameraReader *)self view];
  v9 = [v8 window];
  [v9 addSubview:v6];

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

- (void)captureImageFromSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  CFRetain(a3);
  v5 = [(CRCameraReader *)self captureBuffer];
  [v5 addPointer:a3];

  v6 = [(CRCameraReader *)self captureBuffer];
  v7 = [v6 count];
  v8 = [(CRCameraReader *)self captureCount];

  if (v7 > v8)
  {
    v9 = [(CRCameraReader *)self captureBuffer];
    v10 = [v9 pointerAtIndex:0];

    v11 = [(CRCameraReader *)self captureBuffer];
    [v11 removePointerAtIndex:0];

    CFRelease(v10);
  }

  if ([(CRCameraReader *)self imagesToCapture])
  {
    v12 = [(CRCameraReader *)self captureBuffer];
    v13 = [v12 copy];

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

- (void)findCodeInSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v90 = *MEMORY[0x277D85DE8];
  memset(&v86, 0, sizeof(v86));
  CMSampleBufferGetPresentationTimeStamp(&v86, a3);
  pixelBuffer = CMSampleBufferGetImageBuffer(a3);
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
        CFRetain(a3);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
        v9 = [(CRCameraReader *)self foundCode];
        v59 = v9 != 0;

        v10 = objc_opt_class();
        time.value = BaseAddressOfPlane;
        *&time.timescale = HeightOfPlane;
        time.epoch = WidthOfPlane;
        v85 = v7;
        v11 = [(CRCameraReader *)self outputObjectTypes];
        v60 = [v10 findCodeInImage:&time maxStage:v59 outputObjectTypes:v11];

        v12 = [v60 objectForKey:@"boxPoints"];
        v61 = [v60 objectForKey:@"code"];
        v13 = [v60 objectForKey:@"inverted"];
        v57 = [v13 BOOLValue];

        v14 = [v60 objectForKey:@"accepted"];
        v58 = [v14 BOOLValue];

        v15 = [MEMORY[0x277CBEB18] array];
        v16 = [(CRCameraReader *)self sessionManager];
        v17 = [v16 previewLayer];
        [v17 bounds];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        if (![(CRCameraReader *)self isQRCode]|| ([(CRCameraReader *)self foundCode], v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 == 0, v26, v27))
        {
          v30 = v12;
        }

        else
        {
          v28 = [(CRCameraReader *)self foundCode];

          v29 = [(CRCameraReader *)self foundCode];
          [(CRCameraReader *)self setPreviousCode:v29];

          v30 = [(CRCameraReader *)self foundPoints];

          v83[0] = MEMORY[0x277D85DD0];
          v83[1] = 3221225472;
          v83[2] = __41__CRCameraReader_findCodeInSampleBuffer___block_invoke;
          v83[3] = &unk_278EAA5E8;
          v83[4] = self;
          cr_dispatch_async(MEMORY[0x277D85CD0], v83);
          v58 = 1;
          v61 = v28;
          LODWORD(v59) = 1;
        }

        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        obj = v30;
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
              v36 = [(CRCameraReader *)self sessionManager];
              [v35 CGPointValue];
              v38 = v37;
              v40 = v39;
              v41 = [(CRCameraReader *)self sessionManager];
              v42 = [v41 previewLayer];
              [v36 convertCameraPoint:v42 toLayer:{v38, v40}];
              v44 = v43;
              v46 = v45;

              v47 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v44, v46}];
              [v15 addObject:v47];

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

        v48 = v58 & v33;
        if ((v58 & v33) == 1 && v61)
        {
          v49 = [(CRCameraReader *)self previousCode];
          if (v49 && (-[CRCameraReader previousCode](self, "previousCode"), v50 = objc_claimAutoreleasedReturnValue(), v51 = [v50 isEqualToString:v61], v50, v49, (v51 & 1) != 0))
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
        CFRelease(a3);
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
          v72 = v15;
          v76 = v48;
          v77 = v57;
          v78 = v52;
          v73 = v61;
          v74 = a3;
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
            v54 = [(CRCameraReader *)self sessionManager];
            [v54 resetFocus];
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

        v55 = [(CRCameraReader *)self diagnosticHUDLayer];
        v56 = v55 == 0;

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

+ (id)extractCardImage:(id)a3 fromPixelBuffer:(__CVBuffer *)a4 withCardBuffer:(__CVBuffer *)a5 cameraIntrinsicData:(id)a6
{
  v6 = [a1 extractCardImage:a3 fromPixelBuffer:a4 withCardBuffer:a5 withPoints:0 cameraIntrinsicData:a6];

  return v6;
}

+ (id)extractCardImage:(id)a3 fromPixelBuffer:(__CVBuffer *)a4 withCardBuffer:(__CVBuffer *)a5 withPoints:(id)a6 cameraIntrinsicData:(id)a7
{
  v7 = [a1 extractCardImage:a3 fromPixelBuffer:a4 withCardBuffer:a5 withPoints:a6 cameraIntrinsicData:a7 padding:1 inputOrientation:0.0];

  return v7;
}

+ (id)extractCardImage:(id)a3 fromPixelBuffer:(__CVBuffer *)a4 withCardBuffer:(__CVBuffer *)a5 withPoints:(id)a6 cameraIntrinsicData:(id)a7 padding:(float)a8 inputOrientation:(int)a9
{
  v9 = [a1 extractCardImage:a3 fromPixelBuffer:a4 withCardBuffer:a5 withPoints:a6 cameraIntrinsicData:a7 padding:*&a9 inputOrientation:0 unpaddedCardImage:?];

  return v9;
}

+ (id)extractCardImage:(id)a3 fromPixelBuffer:(__CVBuffer *)a4 withCardBuffer:(__CVBuffer *)a5 withPoints:(id)a6 cameraIntrinsicData:(id)a7 padding:(float)a8 inputOrientation:(int)a9 unpaddedCardImage:(id *)a10
{
  v18 = *&a9;
  v165 = *MEMORY[0x277D85DE8];
  v145 = a3;
  v138 = a6;
  v137 = a7;
  v22 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v23 = [v22 BOOLForKey:@"com.apple.CoreRecognition.enable_vn_2_rect_detector"];

  v24 = CMCopyDictionaryOfAttachments(*MEMORY[0x277CBECE8], a4, 1u);
  v25 = [objc_alloc(MEMORY[0x277CBF758]) initWithCVPixelBuffer:a4 options:v24];
  v148 = [v25 imageByApplyingOrientation:v18];

  if (v24)
  {
    CFRelease(v24);
  }

  if (v138)
  {
    v26 = [v138 objectAtIndex:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v28 = [v138 objectAtIndex:0];
    if (isKindOfClass)
    {
      v29 = NSPointFromString(v28);
      y = v29.y;
      v160 = v29;

      v30 = [v138 objectAtIndex:1];
      v31 = NSPointFromString(v30);
      v32 = v31.y;
      v161.x = v31.x;

      v33 = [v138 objectAtIndex:2];
      v34 = NSPointFromString(v33);
      v35 = v34.y;
      v162.x = v34.x;

      v36 = [v138 objectAtIndex:3];
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

      v48 = [v138 objectAtIndex:1];
      [v48 CGPointValue];
      v32 = v49;
      v161.x = v50;
      v161.y = v49;

      v51 = [v138 objectAtIndex:2];
      [v51 CGPointValue];
      v35 = v52;
      v162.x = v53;
      v162.y = v52;

      v36 = [v138 objectAtIndex:3];
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
  if (v137)
  {
    [v136 setObject:v137 forKey:*MEMORY[0x277CE3038]];
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

  v133 = [v40 results];
  if ([v133 count])
  {
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    obj = v133;
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
          if (a8 > 0.0)
          {
            calculatePointsWithPaddingInCorrectedSpace(&v158.x, &v157.x, &v155.x, &v156.x, v11, v12, v13, v14, a8, [v145 width], objc_msgSend(v145, "height"));
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
  if (a10)
  {
    *a10 = [CRCameraReader perspectiveCorrectedImage:v98 p1:v17 p2:y p3:v15 p4:v16, v144, v143, v142, v141];
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

      if (!a10)
      {
        goto LABEL_49;
      }

      v111 = *a10;
      v112 = v111;
      *&v113 = a8;
      if (a8 == 0.0)
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
          v119 = +[CRCameraReader scaledImage:width:height:](CRCameraReader, "scaledImage:width:height:", v99, [v145 width], objc_msgSend(v145, "height"));
          v121 = v119;
          if (a10)
          {
            *&v120 = a8;
            if (a8 == 0.0)
            {
              v122 = v119;
              v123 = v121;
            }

            else
            {
              v123 = +[CRCameraReader scaledImage:width:height:](CRCameraReader, "scaledImage:width:height:", *a10, [v145 width], objc_msgSend(v145, "height"));
            }

            *a10 = v123;
          }

          v124 = [MEMORY[0x277CBF740] contextWithOptions:0];
          [v124 render:v121 toCVPixelBuffer:a5 bounds:DeviceRGB colorSpace:{0.0, 0.0, objc_msgSend(v145, "width"), objc_msgSend(v145, "height")}];
          CGColorSpaceRelease(DeviceRGB);
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(a5, 0);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(a5, 0);
          if (WidthOfPlane && HeightOfPlane && !CVPixelBufferLockBaseAddress(a5, 0))
          {
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a5, 0);
            if (v145)
            {
              [v145 vImage];
              v128 = v160.x;
              [v145 vImage];
              v129 = *(&v159[0] + 1);
              [v145 vImage];
              v130 = v149 * v129;
            }

            else
            {
              v128 = 0.0;
              v130 = 0;
            }

            memcpy(*&v128, BaseAddressOfPlane, v130);
            CVPixelBufferUnlockBaseAddress(a5, 0);
          }

          v106 = v147;

          goto LABEL_62;
        }

        v115 = [v112 imageByApplyingOrientation:6];
      }

      *a10 = v115;
      goto LABEL_48;
    }
  }

  CFRelease(DeviceRGB);
  v106 = 0;
LABEL_62:

LABEL_63:

  return v106;
}

- (void)sendProvideOverlayObjects:(id)a3
{
  v4 = a3;
  v5 = [(CRCameraReader *)self delegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__CRCameraReader_sendProvideOverlayObjects___block_invoke;
  v7[3] = &unk_278EAA6D0;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  cr_dispatch_async(v5, v7);
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

- (void)findOCRTextObjects:(id)a3 inPixelBuffer:(__CVBuffer *)a4 attachments:(id)a5 frameTime:(id *)a6
{
  v25[1] = *MEMORY[0x277D85DE8];
  CVPixelBufferRetain(a4);
  v8 = [(CRCameraReader *)self ocrImageReader];
  v24 = *MEMORY[0x277D70038];
  v25[0] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v10 = [v8 resultsForPixelBuffer:a4 options:v9 error:0];

  v11 = [MEMORY[0x277CBEB18] array];
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
        [v11 addObject:v18];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  [(CRCameraReader *)self sendProvideOverlayObjects:v11];
  CVPixelBufferRelease(a4);
}

- (void)updatePinnedInfoFrameIndex
{
  v3 = [(CRCameraReader *)self pinnedFoundInfo];
  v7 = [v3 objectForKey:@"currentFrameIndex"];

  if (v7)
  {
    v4 = [v7 unsignedIntegerValue] + 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(CRCameraReader *)self pinnedFoundInfo];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  [v5 setObject:v6 forKey:@"currentFrameIndex"];
}

- (void)setFirstTimeFrameIndexForPinnedField:(id)a3
{
  v9 = [a3 stringByAppendingString:@"FirstPinningFrameIndex"];
  v4 = [(CRCameraReader *)self pinnedFoundInfo];
  v5 = [v4 objectForKey:v9];

  if (!v5)
  {
    v6 = [(CRCameraReader *)self pinnedFoundInfo];
    v7 = [v6 objectForKey:@"currentFrameIndex"];

    if (v7)
    {
      v8 = [(CRCameraReader *)self pinnedFoundInfo];
      [v8 setObject:v7 forKey:v9];
    }
  }
}

- (unint64_t)getFirstTimeFrameIndexForPinnedField:(id)a3
{
  v4 = [a3 stringByAppendingString:@"FirstPinningFrameIndex"];
  v5 = [(CRCameraReader *)self pinnedFoundInfo];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (id)getCorrectedIDImageFromAuxiliaryPoints:(id)a3 fromPixelBuffer:(__CVBuffer *)a4 orientation:(unsigned int)a5 unpaddedCardImage:(id *)a6
{
  v7 = *&a5;
  v92 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = v10;
  if (!v10 || [v10 count] != 4)
  {
    v59 = 0;
    goto LABEL_34;
  }

  v12 = CMCopyDictionaryOfAttachments(*MEMORY[0x277CBECE8], a4, 1u);
  v13 = [objc_alloc(MEMORY[0x277CBF758]) initWithCVPixelBuffer:a4 options:v12];
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
    if (a6)
    {
      [(CRCameraReader *)self borderPaddingIDCard];
      if (v40 == 0.0)
      {
        v60 = v39;
        *a6 = v39;
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
        *a6 = [CRCameraReader perspectiveCorrectedImage:v83 p1:v43 p2:v45 p3:v48 p4:v50, v53, v55, v57, v58];
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

    if (!a6)
    {
LABEL_26:
      v78 = [CRCameraReader scaledImage:v39 width:[(CRCameraReader *)self outputCapturedImageWidth] height:[(CRCameraReader *)self outputCapturedImageHeight]];

      if (a6)
      {
        [(CRCameraReader *)self borderPaddingIDCard];
        if (v79 == 0.0)
        {
          v80 = v78;
          v81 = v78;
        }

        else
        {
          v81 = [CRCameraReader scaledImage:*a6 width:[(CRCameraReader *)self outputCapturedImageWidth] height:[(CRCameraReader *)self outputCapturedImageHeight]];
        }

        *a6 = v81;
      }

      v39 = v78;
      v59 = v39;
      goto LABEL_32;
    }

    v71 = *a6;
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

    *a6 = v74;
    goto LABEL_25;
  }

  v59 = 0;
LABEL_33:

LABEL_34:

  return v59;
}

- (void)findIDObjects:(id)a3 inPixelBuffer:(__CVBuffer *)a4 cameraIntrinsicData:(id)a5 frameTime:(id *)a6
{
  v262 = *MEMORY[0x277D85DE8];
  v247 = a5;
  v249 = [MEMORY[0x277CBEB98] setWithArray:a3];
  v251 = @"CRCameraReaderIDCardCapturePathAutomatic";
  CVPixelBufferGetWidth(a4);
  CVPixelBufferGetHeight(a4);
  rect_16 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB18] array];
  v248 = [objc_alloc(MEMORY[0x277D70088]) initWithWidth:-[CRCameraReader outputCapturedImageWidth](self height:"outputCapturedImageWidth") colorSpace:{-[CRCameraReader outputCapturedImageHeight](self, "outputCapturedImageHeight"), 0}];
  v10 = [(CRCameraReader *)self sessionManager];
  v11 = [v10 previewLayer];
  v12 = [v11 connection];
  v13 = [v12 videoOrientation];

  switch(v13)
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

  v19 = [(CRCameraReader *)self callbackDelegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = [(CRCameraReader *)self callbackDelegate];
    v22 = [v21 cameraReader:self auxiliaryIDCornerDetection:a4];

    v23 = [(CRCameraReader *)self enableUnpaddedIDCapture];
    v24 = v23;
    if (v23)
    {
      v25 = &v260;
    }

    else
    {
      v25 = 0;
    }

    if (v23)
    {
      v260 = 0;
    }

    v26 = [(CRCameraReader *)self getCorrectedIDImageFromAuxiliaryPoints:v22 fromPixelBuffer:a4 orientation:v250 unpaddedCardImage:v25];
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
      [v9 addObject:v40];
    }

    v41 = [(CRCameraReader *)self sessionManager];
    v42 = [(CRCameraReader *)self alignmentLayer];
    [v42 alignmentRect];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v51 = [(CRCameraReader *)self alignmentLayer];
    [v41 convertCameraRect:v51 fromLayer:{v44, v46, v48, v50}];
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
    v73 = [(CRCameraReaderOutput *)v72 objectInternal];
    [v73 setImageValue:v37];

    v74 = [(CRCameraReaderOutput *)v72 objectInternal];
    [v74 setUnpaddedImageValue:rect];

    v75 = [(CRCameraReaderOutput *)v72 objectInternal];
    [v75 setVertices:v9];

    v76 = [(CRCameraReaderOutput *)v72 objectInternal];
    [v76 setTargetVertices:rect_16];

    v77 = [(CRCameraReaderOutput *)v72 objectInternal];
    [v77 setCapturePath:v251];

    if ([v249 containsObject:@"CROutputTypeIDCardFront"])
    {
      v78 = [(CRCameraReaderOutput *)v72 objectInternal];
      [v78 setType:@"CROutputTypeIDCardFront"];
    }

    else
    {
      v78 = [(CRCameraReaderOutput *)v72 objectInternal];
      [v78 setType:@"CROutputTypeIDCardBack"];
    }

    v79 = [(CRCameraReader *)self callbackDelegate];
    if (objc_opt_respondsToSelector())
    {
      v80 = [(CRCameraReader *)self callbackDelegate];
      v81 = [v80 cameraReader:self shouldReturnIDImage:v72];

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
    v222 = [(CRCameraReader *)self cardBlurValues];
    [v222 removeAllObjects];
    goto LABEL_71;
  }

  v29 = objc_opt_class();
  v30 = [(CRCameraReader *)self correctedCardBuffer];
  [(CRCameraReader *)self borderPaddingIDCard];
  v32 = v31;
  v33 = [(CRCameraReader *)self enableUnpaddedIDCapture];
  v35 = &v259;
  if (v33)
  {
    v259 = 0;
  }

  else
  {
    v35 = 0;
  }

  LODWORD(v34) = v32;
  v36 = [v29 extractCardImage:v248 fromPixelBuffer:a4 withCardBuffer:v30 withPoints:v18 cameraIntrinsicData:v247 padding:v250 inputOrientation:v34 unpaddedCardImage:v35];
  if (v33)
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
    v82 = [(CRCameraReader *)self sessionManager];
    v83 = [(CRCameraReader *)self alignmentLayer];
    [v83 alignmentRect];
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = [(CRCameraReader *)self alignmentLayer];
    [v82 convertCameraRect:v92 fromLayer:{v85, v87, v89, v91}];
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
      v124 = CVPixelBufferGetHeight(a4);
      v125 = CVPixelBufferGetHeight(a4);
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
      [v9 addObject:v135];

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
    v139 = [(CRCameraReader *)self sessionManager];
    v140 = [(CRCameraReader *)self alignmentLayer];
    [v140 alignmentRect];
    v142 = v141;
    v144 = v143;
    v146 = v145;
    v148 = v147;
    v149 = [(CRCameraReader *)self alignmentLayer];
    [v139 convertCameraRect:v149 fromLayer:{v142, v144, v146, v148}];
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
    v162 = CVPixelBufferGetHeight(a4);
    CVPixelBufferGetWidth([(CRCameraReader *)self correctedCardBuffer]);
    CVPixelBufferGetHeight([(CRCameraReader *)self correctedCardBuffer]);
    [(CRCameraReader *)self borderPaddingIDCard];
    rect_8b = v163;
    [(CRCameraReader *)self borderPaddingIDCard];
    rectb = v164;
    v165 = CVPixelBufferGetWidth(a4);
    v166 = CVPixelBufferGetHeight(a4);
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
    [v9 addObject:v195];

    v196 = v189 + v192;
    v278.x = v196;
    v278.y = v190;
    v197 = NSStringFromPoint(v278);
    [v9 addObject:v197];

    v198 = v190 + v194;
    v279.x = v196;
    v279.y = v198;
    v199 = NSStringFromPoint(v279);
    [v9 addObject:v199];

    v280.x = v189;
    v280.y = v198;
    v200 = NSStringFromPoint(v280);
    [v9 addObject:v200];

    v201 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:a4];
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
      v214 = [(CRCameraReader *)self correctedCardBuffer];
      v215 = CVPixelBufferGetWidth([(CRCameraReader *)self correctedCardBuffer]);
      [(CRCameraReaderOutputIDCard *)v212 render:v22 toCVPixelBuffer:v214 bounds:DeviceRGB colorSpace:0.0, 0.0, v215, CVPixelBufferGetHeight([(CRCameraReader *)self correctedCardBuffer])];
      CGColorSpaceRelease(DeviceRGB);
      v37 = objc_alloc_init(CRCameraReaderOutputIDCard);
      rect = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:{-[CRCameraReader correctedCardBuffer](self, "correctedCardBuffer")}];
      v72 = [CRCameraReader platformImageFromCIImage:?];
      v216 = [(CRCameraReaderOutput *)v37 objectInternal];
      [v216 setImageValue:v72];

      v217 = [(CRCameraReaderOutput *)v37 objectInternal];
      [v217 setVertices:v9];

      v218 = [(CRCameraReaderOutput *)v37 objectInternal];
      [v218 setTargetVertices:rect_16];

      v219 = [(CRCameraReaderOutput *)v37 objectInternal];
      [v219 setCapturePath:v251];

      if ([v249 containsObject:@"CROutputTypeIDCardFront"])
      {
        v220 = [(CRCameraReaderOutput *)v37 objectInternal];
        [v220 setType:@"CROutputTypeIDCardFront"];
      }

      else
      {
        v220 = [(CRCameraReaderOutput *)v37 objectInternal];
        [v220 setType:@"CROutputTypeIDCardBack"];
      }

      [(CRCameraReader *)self stopSession];
      v233 = [MEMORY[0x277CBEA60] arrayWithObject:v37];
      [(CRCameraReader *)self sendDidEndWithInfo:v233];

      [(CRCameraReader *)self sendDidEndAnimation];
      v222 = [(CRCameraReader *)self cardBlurValues];
      [v222 removeAllObjects];
      goto LABEL_71;
    }

    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277CBF6E0], *MEMORY[0x277CBF6D8], MEMORY[0x277CBEC28], *MEMORY[0x277CBF6F8], MEMORY[0x277CBEC38], *MEMORY[0x277CBF708], 0}];
    rect = [MEMORY[0x277CBF748] detectorOfType:*MEMORY[0x277CBF720] context:v212 options:v37];
    v72 = [rect featuresInImage:v22 options:v37];
    v221 = [v22 imageByApplyingOrientation:5];
    v222 = [rect featuresInImage:v221 options:v37];

    if (-[CRCameraReaderOutputIDCard count](v72, "count") > 2 || [v222 count] >= 3)
    {
      v223 = CGColorSpaceCreateDeviceRGB();
      v224 = [(CRCameraReader *)self correctedCardBuffer];
      v225 = CVPixelBufferGetWidth([(CRCameraReader *)self correctedCardBuffer]);
      [(CRCameraReaderOutputIDCard *)rect_8 render:v22 toCVPixelBuffer:v224 bounds:v223 colorSpace:0.0, 0.0, v225, CVPixelBufferGetHeight([(CRCameraReader *)self correctedCardBuffer])];
      CGColorSpaceRelease(v223);

LABEL_62:
      v22 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:{-[CRCameraReader correctedCardBuffer](self, "correctedCardBuffer")}];
      v226 = [(CRCameraReader *)self cardBlurValues];
      v227 = isLeastBlurryFrame(v22, v226, 10);

      if (!v227)
      {
LABEL_74:

        goto LABEL_75;
      }

      rect_8 = objc_alloc_init(CRCameraReaderOutputIDCard);
      if (v246)
      {
        v228 = [CRCameraReader platformImageFromCIImage:v246];
        v229 = [(CRCameraReaderOutput *)rect_8 objectInternal];
        [v229 setUnpaddedImageValue:v228];
      }

      v37 = [CRCameraReader platformImageFromCIImage:v22];
      v230 = [(CRCameraReaderOutput *)rect_8 objectInternal];
      [v230 setImageValue:v37];

      if ([v249 containsObject:@"CROutputTypeIDCardFront"])
      {
        v231 = [(CRCameraReaderOutput *)rect_8 objectInternal];
        [v231 setType:@"CROutputTypeIDCardFront"];
      }

      else
      {
        v231 = [(CRCameraReaderOutput *)rect_8 objectInternal];
        [v231 setType:@"CROutputTypeIDCardBack"];
      }

      v235 = [(CRCameraReaderOutput *)rect_8 objectInternal];
      [v235 setVertices:v9];

      v236 = [(CRCameraReaderOutput *)rect_8 objectInternal];
      [v236 setTargetVertices:rect_16];

      v237 = [(CRCameraReaderOutput *)rect_8 objectInternal];
      [v237 setCapturePath:v251];

      v238 = [(CRCameraReader *)self callbackDelegate];
      if (objc_opt_respondsToSelector())
      {
        v239 = [(CRCameraReader *)self callbackDelegate];
        v240 = [v239 cameraReader:self shouldReturnIDImage:rect_8];

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
      v234 = [(CRCameraReader *)self cardBlurValues];
      [v234 removeAllObjects];
LABEL_72:

LABEL_73:
      goto LABEL_74;
    }

LABEL_71:

    v234 = rect;
    goto LABEL_72;
  }

LABEL_75:
}

- (void)findObjects:(id)a3 inPixelBuffer:(__CVBuffer *)a4 cameraIntrinsicData:(id)a5 frameTime:(id *)a6
{
  v425 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v332 = v10;
  v333 = a5;
  pixelBuffer = a4;
  CVPixelBufferRetain(a4);
  v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v12 = [v11 BOOLForKey:@"com.apple.CoreRecognition.disable_fixedbox"];

  v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  LODWORD(v363) = [v13 BOOLForKey:@"com.apple.CoreRecognition.disable_freeformbox"];

  v340 = [MEMORY[0x277CBEB38] dictionary];
  v335 = [MEMORY[0x277CBEB98] setWithArray:v10];
  [(CRCameraReader *)self updatePinnedInfoFrameIndex];
  v334 = [MEMORY[0x277CBEB18] arrayWithObject:@"CROutputTypeCreditCardNumber"];
  v14 = [(CRCameraReader *)self pinnedFoundInfo];
  v15 = [v14 objectForKey:?];

  v16 = [(CRCameraReader *)self nameCutRects];
  v357 = v12;
  if ([v16 count])
  {
    v17 = [(CRCameraReader *)self nameCutRects];
    v18 = [v17 count] == 8;
  }

  else
  {
    v18 = 1;
  }

  v19 = [(CRCameraReader *)self dateCutRects];
  if ([v19 count])
  {
    v20 = [(CRCameraReader *)self dateCutRects];
    v21 = [v20 count] == 8;
  }

  else
  {
    v21 = 1;
  }

  v22 = [(CRCameraReader *)self pinnedFoundInfo];
  v23 = [v22 objectForKey:?];

  v24 = [(CRCameraReader *)self cardNumberCounts];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [(CRCameraReader *)self pinnedFoundInfo];
    v27 = [v26 objectForKey:@"code"];

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
    [v334 addObjectsFromArray:v10];
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

  v32 = [objc_opt_class() extractCardImage:v28 fromPixelBuffer:pixelBuffer withCardBuffer:-[CRCameraReader correctedCardBuffer](self withPoints:"correctedCardBuffer") cameraIntrinsicData:{v31, v333}];

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

  v366 = self;

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
  v44 = [(__CFString *)v42 BOOLValue];
  if (v40)
  {
  }

  if (v44)
  {
    v45 = +[CRInsights sharedInsights];
    obj = @"CRInsightsContextImagePath";
    [v45 setContextValue:@"CRInsightsContextImagePathFreeform" forKey:?];

    v46 = +[CRInsights sharedInsights];
    [v46 setContextValue:@"CRInsightsContextImageOrientationLandscape" forKey:@"CRInsightsContextImageOrientation"];

    time = *a6;
    [(CRCameraReader *)self setPointsFound:&time];
    [v340 setValue:v339 forKey:@"boxPoints"];
    v47 = +[CRInsights sharedInsights];
    [v47 provideInsightValue:v339 forKey:@"boxPoints"];

    v48 = +[CRInsights sharedInsights];
    [v48 provideInsightValue:v36 forKey:@"CRInsightsCardImageFreeformLandscape"];

    time = *a6;
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

    v52 = [v51 BOOLValue];
    if (v49)
    {
    }

    if (v52)
    {
      v53 = [(CRCameraReader *)self findObjectsEmbossed:v334 inImage:v336];
      v54 = +[CRInsights sharedInsights];
      [v54 provideInsightValue:v53 forKey:@"CRInsightsEmbossedResultsFreeformLandscape"];

      [(CRCameraReader *)self mergeInfo:v53 intoFindInfo:v340];
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

      [(CRCameraReader *)self mergeInfo:v57 intoFindInfo:v340];
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
      v412 = v340;
      v61 = [v60 allowOverrideWithKey:@"kCROverrideShouldRunPortraitFlatPrintedPath" forResultFromBlock:v411];
    }

    else
    {
      v62 = MEMORY[0x277CCABB0];
      v60 = [v340 objectForKey:@"code"];
      v61 = [v62 numberWithBool:v60 == 0];
    }

    v63 = [v61 BOOLValue];

    if (v63)
    {
      v64 = +[CRInsights sharedInsights];
      [v64 setContextValue:@"CRInsightsContextImageOrientationPortrait" forKey:@"CRInsightsContextImageOrientation"];

      v65 = +[CRInsights sharedInsights];
      if (v65)
      {
        v66 = +[CRInsights sharedInsights];
        v67 = [v336 imageByRotating90CW];
        v68 = [v66 allowOverrideWithKey:@"CRInsightsCardImageFreeformPortrait" forValue:v67];
      }

      else
      {
        v66 = [v336 imageByRotating90CW];
        v68 = v66;
      }

      v69 = +[CRInsights sharedInsights];
      [v69 provideInsightValue:v68 forKey:@"CRInsightsCardImageFreeformPortrait"];

      v70 = +[CRInsights sharedInsights];
      v6 = self;
      if (v70)
      {
        v71 = +[CRInsights sharedInsights];
        v409[0] = MEMORY[0x277D85DD0];
        v409[1] = 3221225472;
        v409[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_6;
        v409[3] = &unk_278EAA7B8;
        v409[4] = v366;
        v410 = v68;
        v72 = [v71 allowOverrideWithKey:@"kCROverrideRegionsFreeformPortrait" forResultFromBlock:v409];
        v341 = &v410;
      }

      else
      {
        v73 = objc_opt_class();
        v71 = [v68 ciImage];
        v72 = [v73 targetRectsForImage:v71];
      }

      v74 = v72;

      v75 = +[CRInsights sharedInsights];
      [v75 provideInsightValue:v74 forKey:@"CRInsightsTextDetectorRegionsFreeformPortrait"];

      if ([v74 count])
      {
        v76 = [(CRCameraReader *)v366 findObjectsFlat:v332 inImage:v68 numberRects:v74 invert:0];
        [(CRCameraReader *)v366 mergeInfo:v76 intoFindInfo:v340];
        v77 = +[CRInsights sharedInsights];
        [v77 provideInsightValue:v76 forKey:@"CRInsightsTextDetectorResultsFreeformPortrait"];

        v78 = [v340 objectForKey:@"code"];
        LODWORD(v77) = v78 == 0;

        if (v77)
        {
          v79 = +[CRInsights sharedInsights];
          [v79 setContextValue:@"CRInsightsContextImageOrientationPortraitInverted" forKey:@"CRInsightsContextImageOrientation"];

          v6 = v366;
          v80 = [(CRCameraReader *)v366 findObjectsFlat:v332 inImage:v68 numberRects:v74 invert:1];
          [(CRCameraReader *)v366 mergeInfo:v80 intoFindInfo:v340];
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
    v407 = v340;
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
      v41 = [v340 objectForKey:@"code"];
      v87 = v41 == 0;
    }

    v84 = [v86 numberWithBool:v87];
    v85 = v357 ^ 1;
    v83 = v84;
  }

  v88 = [v84 BOOLValue];
  if (v82)
  {
  }

  if (v85)
  {
  }

  if (v88)
  {
    v89 = +[CRInsights sharedInsights];
    [v89 setContextValue:@"CRInsightsContextImagePathFixedCut" forKey:@"CRInsightsContextImagePath"];

    v90 = +[CRInsights sharedInsights];
    [v90 setContextValue:@"CRInsightsContextImageOrientationLandscape" forKey:@"CRInsightsContextImageOrientation"];

    v91 = [(CRCameraReader *)v366 sessionManager];
    v92 = [(CRCameraReader *)v366 alignmentLayer];
    [v92 alignmentRect];
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v100 = v99;
    v101 = [(CRCameraReader *)v366 alignmentLayer];
    [v91 convertCameraRect:v101 fromLayer:{v94, v96, v98, v100}];
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
        v116 = [v358 imageByRotating90CW];

        v358 = v116;
      }

      v117 = +[CRInsights sharedInsights];
      [v117 provideInsightValue:v358 forKey:@"CRInsightsCardImageFixedCutLandscape"];

      v355 = +[CRInsights sharedInsights];
      if (v355)
      {
        v118 = +[CRInsights sharedInsights];
        v404[0] = MEMORY[0x277D85DD0];
        v404[1] = 3221225472;
        v404[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_8;
        v404[3] = &unk_278EAA7B8;
        v404[4] = v366;
        v405 = v358;
        v119 = [v118 allowOverrideWithKey:@"kCROverrideRegionsFixedCutLandscape" forResultFromBlock:v404];
        obj = &v405;
      }

      else
      {
        v120 = objc_opt_class();
        v118 = [v358 ciImage];
        v119 = [v120 targetRectsForImage:v118];
      }

      v121 = v119;

      v122 = +[CRInsights sharedInsights];
      [v122 provideInsightValue:v121 forKey:@"CRInsightsTextDetectorRegionsFixedCutLandscape"];

      if ([v121 count])
      {
        v123 = [(CRCameraReader *)v366 findObjectsFlat:v332 inImage:v358 numberRects:v121 invert:0];
        v124 = +[CRInsights sharedInsights];
        [v124 provideInsightValue:v123 forKey:@"CRInsightsTextDetectorResultsFixedCutLandscape"];

        [(CRCameraReader *)v366 mergeInfo:v123 intoFindInfo:v340];
      }

      v125 = +[CRInsights sharedInsights];
      if (v125)
      {
        v126 = +[CRInsights sharedInsights];
        v402[0] = MEMORY[0x277D85DD0];
        v402[1] = 3221225472;
        v402[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_9;
        v402[3] = &unk_278EAA7E0;
        v6 = &v403;
        v403 = v340;
        v127 = [v126 allowOverrideWithKey:@"kCROverrideShouldRunEmbossedPath" forResultFromBlock:v402];
      }

      else
      {
        v128 = MEMORY[0x277CCABB0];
        v126 = [v340 objectForKey:@"code"];
        v127 = [v128 numberWithBool:v126 == 0];
      }

      v129 = [v127 BOOLValue];

      if (v129)
      {
        v130 = [(CRCameraReader *)v366 findObjectsEmbossed:v334 inImage:v358];
        v131 = +[CRInsights sharedInsights];
        [v131 provideInsightValue:v130 forKey:@"CRInsightsEmbossedResultsFixedCutLandscape"];

        [(CRCameraReader *)v366 mergeInfo:v130 intoFindInfo:v340];
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
    v399 = v340;
    v401 = v363;
    v363 = &v400;
    v400 = v339;
    v136 = [v135 allowOverrideWithKey:@"kCROverrideShouldRunFreeformInvertedPath" forResultFromBlock:v398];
  }

  else
  {
    v137 = MEMORY[0x277CCABB0];
    v135 = [v340 objectForKey:@"accepted"];
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

  v139 = [v136 BOOLValue];

  if (v139)
  {
    v140 = +[CRInsights sharedInsights];
    [v140 setContextValue:@"CRInsightsContextImagePathFreeform" forKey:@"CRInsightsContextImagePath"];

    v141 = +[CRInsights sharedInsights];
    [v141 setContextValue:@"CRInsightsContextImageOrientationLandscapeInverted" forKey:@"CRInsightsContextImageOrientation"];

    v142 = [v336 imageByRotating180];
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

    v146 = [v145 BOOLValue];
    if (v143)
    {
    }

    if (v146)
    {
      v147 = +[CRInsights sharedInsights];
      [v147 provideInsightValue:v142 forKey:@"CRInsightsCardImageFreeformLandscapeInverted"];

      v148 = [(CRCameraReader *)v366 findObjectsEmbossed:v334 inImage:v142];
      v149 = +[CRInsights sharedInsights];
      [v149 provideInsightValue:v148 forKey:@"CRInsightsEmbossedResultsFreeformLandscapeInverted"];

      v150 = [v148 objectForKey:@"code"];
      LOBYTE(v149) = v150 == 0;

      if ((v149 & 1) == 0)
      {
        [(CRCameraReader *)v366 mergeInfo:v148 intoFindInfo:v340];
        [v340 setValue:MEMORY[0x277CBEC38] forKey:@"inverted"];
      }
    }

    v151 = [v340 objectForKey:@"code"];
    v152 = v151 == 0;

    if (v152)
    {
      v153 = +[CRInsights sharedInsights];
      p_isa = &v366->super.super.super.isa;
      if (v153)
      {
        v155 = +[CRInsights sharedInsights];
        v396[0] = MEMORY[0x277D85DD0];
        v396[1] = 3221225472;
        v396[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_12;
        v396[3] = &unk_278EAA7B8;
        v396[4] = v366;
        v397 = v142;
        v156 = [v155 allowOverrideWithKey:@"kCROverrideRegionsFreeformLandscapeInverted" forResultFromBlock:v396];
        p_isa = &v397;
      }

      else
      {
        v157 = objc_opt_class();
        v155 = [v142 ciImage];
        v156 = [v157 targetRectsForImage:v155];
      }

      v158 = v156;

      v159 = +[CRInsights sharedInsights];
      [v159 provideInsightValue:v158 forKey:@"CRInsightsTextDetectorRegionsFreeformLandscapeInverted"];

      if ([v158 count])
      {
        v160 = [(CRCameraReader *)v366 findObjectsFlat:v332 inImage:v142 numberRects:v158 invert:0];
        v161 = +[CRInsights sharedInsights];
        [v161 provideInsightValue:v160 forKey:@"CRInsightsTextDetectorResultsFreeformLandscapeInverted"];

        v162 = [v160 objectForKey:@"code"];
        LOBYTE(v161) = v162 == 0;

        if ((v161 & 1) == 0)
        {
          [(CRCameraReader *)v366 mergeInfo:v160 intoFindInfo:v340];
          [v340 setValue:MEMORY[0x277CBEC38] forKey:@"inverted"];
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

  v338 = [v340 objectForKey:@"boxPoints"];
  v347 = [v340 objectForKey:@"code"];
  v329 = [v340 objectForKey:@"codeOrigin"];
  v330 = [v340 objectForKey:@"codeFragmentOrigins"];
  v342 = [v340 objectForKey:@"expirationDate"];
  v165 = [v340 objectForKey:@"accepted"];
  v328 = [v165 BOOLValue];

  [v340 objectForKey:@"nameResults"];
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
      v167 = [v166 BOOLValue];

      if (v167)
      {
        v364 = [v361 objectForKey:@"nameResult"];
        v168 = [v361 objectForKey:@"minMatchDistance"];
        v169 = [v168 intValue];

        v170 = [v361 objectForKey:@"nameAccepted"];
        if ([v170 BOOLValue])
        {

          goto LABEL_150;
        }

        v171 = [v361 objectForKey:@"closestNameDistance"];
        if (v171)
        {
          v172 = [v361 objectForKey:@"closestNameDistance"];
          v173 = [v172 integerValue] > v169;

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

        v174 = [(CRCameraReader *)v366 cardholderCounts];
        v175 = [v174 objectForKey:v364];
        v176 = v175 == 0;

        if (!v176)
        {
          v177 = [(CRCameraReader *)v366 cardholderCounts];
          v178 = [v177 objectForKey:v364];
          v179 = [v178 intValue];

          v390 = 0u;
          v391 = 0u;
          v388 = 0u;
          v389 = 0u;
          v180 = [(CRCameraReader *)v366 cardholderCounts];
          v181 = [v180 countByEnumeratingWithState:&v388 objects:v423 count:16];
          v182 = (v179 + 1);
          if (v181)
          {
            v183 = *v389;
            while (2)
            {
              for (i = 0; i != v181; ++i)
              {
                if (*v389 != v183)
                {
                  objc_enumerationMutation(v180);
                }

                v185 = *(*(&v388 + 1) + 8 * i);
                v186 = [(CRCameraReader *)v366 cardholderCounts];
                v187 = [v186 objectForKey:v185];
                v188 = [v187 intValue];

                v189 = v188 == 2 || v182 == 2;
                if (v189 && [v364 editDistanceFromString:v185] == 1)
                {
                  if (v188 == 2)
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

              v181 = [v180 countByEnumeratingWithState:&v388 objects:v423 count:16];
              if (v181)
              {
                continue;
              }

              break;
            }
          }

LABEL_178:

          v200 = [(CRCameraReader *)v366 cardholderCounts];
          v201 = [MEMORY[0x277CCABB0] numberWithInt:v182];
          [v200 setObject:v201 forKey:v364];
          goto LABEL_179;
        }

        v190 = [v361 objectForKey:@"nameAccepted"];
        v191 = [v190 BOOLValue];

        if (v191)
        {
          v192 = 4;
          goto LABEL_175;
        }

        v194 = [v361 objectForKey:@"closestNameDistance"];
        if (v194 && ([v361 objectForKey:@"closestNameDistance"], v195 = objc_claimAutoreleasedReturnValue(), v196 = objc_msgSend(v195, "integerValue") > v169, v195, v194, v197 = v366, !v196))
        {
          v192 = 3;
        }

        else
        {
          v198 = [v361 objectForKey:@"isNonNameString"];
          v199 = [v198 BOOLValue];

          if (v199)
          {
            v192 = 4294967294;
          }

          else
          {
            v192 = 1;
          }

LABEL_175:
          v197 = v366;
        }

        v200 = [(CRCameraReader *)v197 cardholderCounts];
        v201 = [MEMORY[0x277CCABB0] numberWithInt:v192];
        [v200 setObject:v201 forKey:v364];
LABEL_179:

        v202 = [(CRCameraReader *)v366 cardholderCounts];
        v203 = [v202 objectForKey:v364];
        v204 = [v203 intValue];

        v205 = [(CRCameraReader *)v366 cardholderCounts];
        v206 = [MEMORY[0x277CCABB0] numberWithInt:v204];
        [v205 setObject:v206 forKey:v364];

        v207 = [(CRCameraReader *)v366 pinnedFoundInfo];
        v208 = [v207 objectForKey:@"cardholderName"];

        if (v208)
        {
          v209 = [(CRCameraReader *)v366 cardholderCounts];
          v210 = [v209 objectForKey:v208];
          v211 = [v210 intValue];
        }

        else
        {
          v211 = 0;
        }

        if (v347 && v204 >= 3 && v204 > v211)
        {
          v212 = [(CRCameraReader *)v366 pinnedFoundInfo];
          v213 = [v212 objectForKey:@"cardholderName"];
          v214 = [v213 isEqualToString:v364];

          if ((v214 & 1) == 0)
          {
            time = *a6;
            [(CRCameraReader *)v366 setLastFieldFoundTime:&time];
            v344 = 1;
          }

          v215 = [(CRCameraReader *)v366 pinnedFoundInfo];
          [v215 setObject:v364 forKey:@"cardholderName"];

          [(CRCameraReader *)v366 setFirstTimeFrameIndexForPinnedField:@"cardholderName"];
          v216 = [(CRCameraReader *)v366 pinnedFoundInfo];
          v217 = [v216 objectForKey:@"nameOrigin"];
          v218 = v217 == 0;

          if (v218)
          {
            v219 = [(CRCameraReader *)v366 pinnedFoundInfo];
            v220 = [v361 objectForKey:@"nameOrigin"];
            [v219 setObject:v220 forKey:@"nameOrigin"];
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
    v222 = [(CRCameraReader *)v366 cardNumberCounts];
    v223 = [v222 objectForKey:v347];
    v224 = [v223 intValue];

    v225 = [v347 stringByReplacingOccurrencesOfString:@" " withString:&stru_2859636D0];
    v365 = [v225 length];

    v226 = [(CRCameraReader *)v366 cardNumberCounts];
    v362 = v224 + 1;
    v227 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v226 setObject:v227 forKey:v347];

    if ((v365 & 0xFFFFFFFFFFFFFFFDLL) == 0x11)
    {
      v386 = 0u;
      v387 = 0u;
      v384 = 0u;
      v385 = 0u;
      v228 = [(CRCameraReader *)v366 cardNumberCounts];
      v229 = [v228 allKeys];

      v230 = [v229 countByEnumeratingWithState:&v384 objects:v422 count:16];
      if (v230)
      {
        v231 = *v385;
        do
        {
          for (j = 0; j != v230; ++j)
          {
            if (*v385 != v231)
            {
              objc_enumerationMutation(v229);
            }

            v233 = *(*(&v384 + 1) + 8 * j);
            v234 = [v233 stringByReplacingOccurrencesOfString:@" " withString:&stru_2859636D0];
            v235 = [v234 length];

            if (v235 <= 12)
            {
              v236 = [(CRCameraReader *)v366 cardNumberCounts];
              v237 = [MEMORY[0x277CCABB0] numberWithInt:0];
              [v236 setObject:v237 forKey:v233];
            }
          }

          v230 = [v229 countByEnumeratingWithState:&v384 objects:v422 count:16];
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

  v238 = v366;
  if (v342)
  {
    v239 = [(CRCameraReader *)v366 expirationDateCounts];
    v240 = [v239 objectForKey:v342];
    v241 = [v240 intValue];

    v382 = 0u;
    v383 = 0u;
    v380 = 0u;
    v381 = 0u;
    v242 = [(CRCameraReader *)v366 expirationDateCounts];
    v243 = [v242 countByEnumeratingWithState:&v380 objects:v421 count:16];
    v244 = (v241 + 1);
    if (v243)
    {
      v245 = *v381;
      while (2)
      {
        for (k = 0; k != v243; ++k)
        {
          if (*v381 != v245)
          {
            objc_enumerationMutation(v242);
          }

          v247 = *(*(&v380 + 1) + 8 * k);
          v248 = [(CRCameraReader *)v366 expirationDateCounts];
          v249 = [v248 objectForKey:v247];
          v250 = [v249 intValue];

          v251 = v250 == 2 || v244 == 2;
          if (v251 && [v342 editDistanceFromString:v247] == 1)
          {
            if (v250 == 2)
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

        v243 = [v242 countByEnumeratingWithState:&v380 objects:v421 count:16];
        if (v243)
        {
          continue;
        }

        break;
      }
    }

LABEL_227:

    v254 = [(CRCameraReader *)v366 expirationDateCounts];
    v255 = [MEMORY[0x277CCABB0] numberWithInt:v244];
    [v254 setObject:v255 forKey:v342];

    v252 = v244 < 2;
    v238 = v366;
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

  v257 = [(CRCameraReader *)v238 pinnedFoundInfo];
  v258 = [v257 objectForKey:@"code"];

  if (v258)
  {
    v259 = [(CRCameraReader *)v366 cardNumberCounts];
    v260 = [v259 objectForKey:v258];
    v261 = [v260 intValue];

    v262 = [v258 isEqualToString:v347];
    if (v362 <= v261)
    {
      v263 = 1;
    }

    else
    {
      v263 = v262;
    }

    if ((v263 & 1) == 0)
    {
      time = *a6;
      [(CRCameraReader *)v366 setLastFieldFoundTime:&time];
      v264 = [(CRCameraReader *)v366 pinnedFoundInfo];
      [v264 setObject:v347 forKey:@"code"];
      goto LABEL_243;
    }
  }

  else
  {
    time = *a6;
    [(CRCameraReader *)v366 setLastFieldFoundTime:&time];
    v265 = [(CRCameraReader *)v366 pinnedFoundInfo];
    [v265 setObject:v347 forKey:@"code"];

    [(CRCameraReader *)v366 setFirstTimeFrameIndexForPinnedField:@"code"];
    v266 = [(CRCameraReader *)v366 pinnedFoundInfo];
    [v266 setObject:v329 forKey:@"codeOrigin"];

    if (v330)
    {
      v267 = [(CRCameraReader *)v366 pinnedFoundInfo];
      [v267 setObject:v330 forKey:@"codeFragmentOrigins"];
    }

    v268 = [v340 objectForKey:@"isPortrait"];
    v269 = [v268 BOOLValue];

    v264 = [(CRCameraReader *)v366 pinnedFoundInfo];
    v270 = [MEMORY[0x277CCABB0] numberWithBool:v269];
    [v264 setObject:v270 forKey:@"isPortrait"];

LABEL_243:
    v344 = 1;
  }

  if (v347 == 0 || v252)
  {
LABEL_245:

    v271 = v366;
    goto LABEL_246;
  }

  v295 = [(CRCameraReader *)v366 pinnedFoundInfo];
  v296 = [v295 objectForKey:@"expirationDate"];
  v297 = [v296 isEqualToString:v342];

  if ((v297 & 1) == 0)
  {
    time = *a6;
    [(CRCameraReader *)v366 setLastFieldFoundTime:&time];
    v344 = 1;
  }

  v298 = [(CRCameraReader *)v366 pinnedFoundInfo];
  [v298 setObject:v342 forKey:@"expirationDate"];

  [(CRCameraReader *)v366 setFirstTimeFrameIndexForPinnedField:@"expirationDate"];
  v299 = [(CRCameraReader *)v366 pinnedFoundInfo];
  v300 = [v299 objectForKey:@"dateOrigin"];
  v301 = v300 == 0;

  if (v301)
  {
    v302 = [(CRCameraReader *)v366 pinnedFoundInfo];
    v303 = [v340 objectForKey:@"dateOrigin"];
    [v302 setObject:v303 forKey:@"dateOrigin"];
  }

  v304 = [v340 objectForKey:@"expirationYear"];
  v305 = v304 == 0;

  if (!v305)
  {
    v306 = [(CRCameraReader *)v366 pinnedFoundInfo];
    v307 = [v340 objectForKey:@"expirationYear"];
    [v306 setObject:v307 forKey:@"expirationYear"];
  }

  v308 = [v340 objectForKey:@"expirationMonth"];
  v309 = v308 == 0;

  if (!v309)
  {
    v310 = [(CRCameraReader *)v366 pinnedFoundInfo];
    v311 = [v340 objectForKey:@"expirationMonth"];
    [v310 setObject:v311 forKey:@"expirationMonth"];
  }

  v312 = [v340 objectForKey:@"expirationDay"];
  v313 = v312 == 0;

  if (!v313)
  {
    v314 = [(CRCameraReader *)v366 pinnedFoundInfo];
    v315 = [v340 objectForKey:@"expirationDay"];
    [v314 setObject:v315 forKey:@"expirationDay"];
  }

  v271 = v366;
  if (!v342)
  {
LABEL_246:
    v272 = [(CRCameraReader *)v271 pinnedFoundInfo];
    v342 = [v272 objectForKey:@"expirationDate"];

    v271 = v366;
  }

  v273 = [(CRCameraReader *)v271 pinnedFoundInfo];
  v274 = [v273 objectForKey:@"cardholderName"];

  if (v274)
  {
    v275 = [(CRCameraReader *)v366 pinnedFoundInfo];
    v276 = [v275 objectForKey:@"nameOrigin"];
    v277 = NSPointFromString(v276);
    valid = isValidNameLocationForCode(v347, v277.x, v277.y);

    if ((valid & 1) == 0)
    {

      v279 = [(CRCameraReader *)v366 pinnedFoundInfo];
      [v279 removeObjectForKey:@"cardholderName"];

      v280 = [(CRCameraReader *)v366 pinnedFoundInfo];
      [v280 removeObjectForKey:@"nameOrigin"];

      v274 = 0;
    }
  }

  v281 = [v335 containsObject:@"CRCameraReaderCreditCardExpirationDate"];
  v282 = [v335 containsObject:@"CROutputTypeCreditCardName"];
  v283 = v366;
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

  if (((v284 & 1) != 0 || v285) && (v379 = *a6, [(CRCameraReader *)v366 lastFieldFoundTime], lhs = v379, rhs = v378, CMTimeSubtract(&time, &lhs, &rhs), CMTimeGetSeconds(&time) <= 1.0))
  {
    v293 = 0;
    v294 = v347;
    v292 = v347 == 0;
  }

  else
  {
    v286 = [(CRCameraReader *)v366 pinnedFoundInfo];
    v287 = [v286 objectForKey:@"code"];
    v288 = v287 == 0;

    if (v288)
    {
      v283 = v366;
      v291 = v347;
    }

    else
    {
      v289 = [(CRCameraReader *)v366 pinnedFoundInfo];
      v290 = [v289 objectForKey:@"code"];

      v328 = 1;
      v291 = v290;
      v283 = v366;
    }

    v292 = v291 == 0;
    v293 = 1;
    v348 = v291;
    if (v291 && v328)
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
    v376 = *&a6->var0;
    var3 = a6->var3;
    v375 = v318;
    v377 = var3;
    cr_dispatch_async(v316, v374);

    v283 = v366;
  }

  if (v344)
  {
    v320 = [(CRCameraReader *)v283 pinnedFoundInfo];
    [(CRCameraReader *)v283 sendDidRecognizeNewObjects:v320];

    v283 = v366;
  }

  if (v292)
  {
    v379 = *a6;
    [(CRCameraReader *)v283 pointsFound];
    lhs = v379;
    rhs = v378;
    CMTimeSubtract(&time, &lhs, &rhs);
    if (CMTimeGetSeconds(&time) > 0.3)
    {
      v321 = [(CRCameraReader *)v283 sessionManager];
      [v321 resetFocus];

      v283 = v366;
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

    v283 = v366;
  }

  v324 = [(CRCameraReader *)v283 diagnosticHUDLayer];
  v325 = v324 == 0;

  if (!v325)
  {
    v326 = MEMORY[0x277D85CD0];
    v327 = MEMORY[0x277D85CD0];
    v367[0] = MEMORY[0x277D85DD0];
    v367[1] = 3221225472;
    v367[2] = __74__CRCameraReader_findObjects_inPixelBuffer_cameraIntrinsicData_frameTime___block_invoke_17;
    v367[3] = &unk_278EAA5E8;
    v367[4] = v366;
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

- (id)findObjectsEmbossed:(id)a3 inImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRCameraReader *)self nameCutRects];

  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    [(CRCameraReader *)self setNameCutRects:v9];
  }

  v10 = [(CRCameraReader *)self dateCutRects];

  if (!v10)
  {
    v11 = [MEMORY[0x277CBEB18] array];
    [(CRCameraReader *)self setDateCutRects:v11];
  }

  v12 = [(CRCameraReader *)self dateCutRects];
  v13 = [v12 count];

  if (!v13)
  {
    v14 = 8;
    y = 0.670120239;
    x = 0.0475194012;
    height = 0.0707215541;
    width = 0.849705277;
    do
    {
      v19 = [(CRCameraReader *)self dateCutRects];
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = width;
      v43.size.height = height;
      v20 = NSStringFromRect(v43);
      [v19 addObject:v20];

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

  v21 = [(CRCameraReader *)self nameCutRects];
  v22 = [v21 count];

  if (!v22)
  {
    v23 = 8;
    v24 = 0.929278433;
    v25 = 0.0475194012;
    v26 = 0.0707215541;
    v27 = 0.849705277;
    do
    {
      v28 = [(CRCameraReader *)self nameCutRects];
      v46.origin.x = v25;
      v46.origin.y = v24;
      v46.size.width = v27;
      v46.size.height = v26;
      v29 = NSStringFromRect(v46);
      [v28 addObject:v29];

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
  v35 = [(CRCameraReader *)self nameCutRects];
  [v34 provideInsightValue:v35 forKey:@"CRInsightsEmbossedRegionsName"];

  v36 = +[CRInsights sharedInsights];
  v37 = [(CRCameraReader *)self dateCutRects];
  [v36 provideInsightValue:v37 forKey:@"CRInsightsEmbossedRegionsExpirationDate"];

  v38 = [(CRCameraReader *)self nameCutRects];
  v39 = [(CRCameraReader *)self dateCutRects];
  v40 = [(CRCameraReader *)self findCCObjectsEmbossed:v6 inImage:v7 numberRects:v32 nameRects:v38 dateRects:v39];

  return v40;
}

+ (id)findCodeInImage:(vImage_Buffer *)a3 maxStage:(unint64_t)a4 outputObjectTypes:(id)a5
{
  width = a3->width;
  height = a3->height;
  v7 = *&a3->width;
  v10[0] = *&a3->data;
  v10[1] = v7;
  v8 = [CRCameraReader findCodeInImage:v10 maxStage:a4 roi:a5 outputObjectTypes:0.0, 0.0, width, height];

  return v8;
}

+ (id)findCodeInImage:(vImage_Buffer *)a3 maxStage:(unint64_t)a4
{
  width = a3->width;
  height = a3->height;
  v8 = [MEMORY[0x277CBEA60] arrayWithObject:@"CROutputTypeiTunesCode"];
  v9 = *&a3->width;
  v12[0] = *&a3->data;
  v12[1] = v9;
  v10 = [CRCameraReader findCodeInImage:v12 maxStage:a4 roi:v8 outputObjectTypes:0.0, 0.0, width, height];

  return v10;
}

+ (id)findCodeInImage:(vImage_Buffer *)a3 maxStage:(unint64_t)a4 roi:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = [MEMORY[0x277CBEA60] arrayWithObject:@"CROutputTypeiTunesCode"];
  v12 = *&a3->width;
  v15[0] = *&a3->data;
  v15[1] = v12;
  v13 = [CRCameraReader findCodeInImage:v15 maxStage:a4 roi:v11 outputObjectTypes:x, y, width, height];

  return v13;
}

+ (id)findCodeInImage:(vImage_Buffer *)a3 maxStage:(unint64_t)a4 roi:(CGRect)a5 outputObjectTypes:(id)a6
{
  v9 = a6;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  [MEMORY[0x277CBEB18] array];
  [v8 setObject:objc_claimAutoreleasedReturnValue() forKey:@"stageInfo"];
  CFAbsoluteTimeGetCurrent();
  v6 = [MEMORY[0x277CBEB98] setWithArray:v9];
  [v6 containsObject:@"CROutputTypeHomeKitCode"];

  _findCodeRectInImageWithModel();
}

+ (id)textFeatureWithVNTextObservation:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 boundingBox];
  v5 = v4;
  [v3 boundingBox];
  v7 = v6;
  [v3 boundingBox];
  v9 = v8;
  [v3 boundingBox];
  v11 = v10;
  [v3 boundingBox];
  v37.origin.y = 1.0 - v7 - v9;
  v37.origin.x = v5;
  v37.size.width = v11;
  v12 = NSStringFromRect(v37);
  v13 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = [v3 characterBoxes];
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v15)
  {
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v14);
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
        [v13 addObject:v27];
      }

      v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  v28 = [objc_alloc(MEMORY[0x277D700A8]) initWithFeatureRect:v12 subFeatureRects:v13];

  return v28;
}

+ (id)targetRectsForImage:(id)a3
{
  v202[1] = *MEMORY[0x277D85DE8];
  v156 = a3;
  v189 = [MEMORY[0x277CBEB18] array];
  v158 = v156;
  v3 = objc_alloc(MEMORY[0x277CE2D50]);
  v159 = [v3 initWithCIImage:v158 options:MEMORY[0x277CBEC10]];
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"com.apple.CoreRecognition.enable_vn_detector"];

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

  v161 = [v160 results];
  if (v161 && [v161 count])
  {
    v190 = [MEMORY[0x277CBEB18] array];
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v10 = v161;
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
          v15 = [v14 subFeatures];
          v9 = [v15 count];

          if ((v9 - 4) <= 0x18)
          {
            if ([v189 count] <= 0x13)
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
              [v189 addObject:v34];
            }

            if (v9 == 4)
            {
              [v190 addObject:v14];
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v195 objects:v201 count:16];
      }

      while (v11);
    }

    if ([v190 count] >= 4)
    {
      [v190 sortUsingComparator:&__block_literal_global_399];
      v155 = [v190 subarrayWithRange:{0, 4}];
      v35 = 0;
      v36 = 3.4028e38;
      while ([v190 count] - 3 > v35)
      {
        v177 = [v190 objectAtIndexedSubscript:v35];
        [v177 bounds];
        v37 = CGRectGetWidth(v207);
        v176 = [v190 objectAtIndexedSubscript:v35];
        [v176 bounds];
        v38 = CGRectGetHeight(v208);
        v39 = v35 + 1;
        v175 = [v190 objectAtIndexedSubscript:?];
        [v175 bounds];
        v40 = CGRectGetWidth(v209);
        v174 = [v190 objectAtIndexedSubscript:v35 + 1];
        [v174 bounds];
        v41 = v37 * v38 - v40 * CGRectGetHeight(v210);
        [v190 objectAtIndexedSubscript:v35];
        if (v41 < 0.0)
          v168 = {;
          [v168 bounds];
          v46 = CGRectGetWidth(v215);
          v164 = [v190 objectAtIndexedSubscript:v35];
          [v164 bounds];
          v47 = CGRectGetHeight(v216);
          v163 = [v190 objectAtIndexedSubscript:v35 + 1];
          [v163 bounds];
          v48 = CGRectGetWidth(v217);
          v162 = [v190 objectAtIndexedSubscript:v35 + 1];
          [v162 bounds];
          v45 = -(v46 * v47 - v48 * CGRectGetHeight(v218));
        }

        else
          v167 = {;
          [v167 bounds];
          v42 = CGRectGetWidth(v211);
          v166 = [v190 objectAtIndexedSubscript:v35];
          [v166 bounds];
          v43 = CGRectGetHeight(v212);
          v165 = [v190 objectAtIndexedSubscript:v35 + 1];
          [v165 bounds];
          v44 = CGRectGetWidth(v213);
          v9 = [v190 objectAtIndexedSubscript:v35 + 1];
          [v9 bounds];
          v45 = v42 * v43 - v44 * CGRectGetHeight(v214);
        }

        v186 = v9;
        v49 = [v190 objectAtIndexedSubscript:v35 + 1];
        [v49 bounds];
        v50 = CGRectGetWidth(v219);
        v173 = [v190 objectAtIndexedSubscript:v35 + 1];
        [v173 bounds];
        v51 = CGRectGetHeight(v220);
        v172 = [v190 objectAtIndexedSubscript:v35 + 2];
        [v172 bounds];
        v52 = CGRectGetWidth(v221);
        v171 = [v190 objectAtIndexedSubscript:v35 + 2];
        [v171 bounds];
        if (v50 * v51 - v52 * CGRectGetHeight(v222) < 0.0)
        {
          v183 = [v190 objectAtIndexedSubscript:v35 + 1];
          [v183 bounds];
          v58 = CGRectGetWidth(v227);
          aRect = [v190 objectAtIndexedSubscript:v35 + 1];
          [aRect bounds];
          v59 = CGRectGetHeight(v228);
          v178 = [v190 objectAtIndexedSubscript:v35 + 2];
          [v178 bounds];
          v60 = CGRectGetWidth(v229);
          v56 = [v190 objectAtIndexedSubscript:v35 + 2];
          [v56 bounds];
          v57 = -(v58 * v59 - v60 * CGRectGetHeight(v230));
        }

        else
        {
          v183 = [v190 objectAtIndexedSubscript:v35 + 1];
          [v183 bounds];
          v53 = CGRectGetWidth(v223);
          aRect = [v190 objectAtIndexedSubscript:v35 + 1];
          [aRect bounds];
          v54 = CGRectGetHeight(v224);
          v178 = [v190 objectAtIndexedSubscript:v35 + 2];
          [v178 bounds];
          v55 = CGRectGetWidth(v225);
          v56 = [v190 objectAtIndexedSubscript:v35 + 2];
          [v56 bounds];
          v57 = v53 * v54 - v55 * CGRectGetHeight(v226);
        }

        v170 = [v190 objectAtIndexedSubscript:v35 + 2];
        [v170 bounds];
        v61 = CGRectGetWidth(v231);
        v169 = [v190 objectAtIndexedSubscript:v35 + 2];
        [v169 bounds];
        v62 = CGRectGetHeight(v232);
        v63 = [v190 objectAtIndexedSubscript:v35 + 3];
        [v63 bounds];
        v64 = CGRectGetWidth(v233);
        v65 = [v190 objectAtIndexedSubscript:v35 + 3];
        [v65 bounds];
        v66 = v45 + v57;
        if (v61 * v62 - v64 * CGRectGetHeight(v234) >= 0.0)
        {
          v67 = [v190 objectAtIndexedSubscript:v35 + 2];
          [v67 bounds];
          v76 = CGRectGetWidth(v239);
          v69 = [v190 objectAtIndexedSubscript:v35 + 2];
          [v69 bounds];
          v77 = CGRectGetHeight(v240);
          v71 = [v190 objectAtIndexedSubscript:v35 + 3];
          [v71 bounds];
          v78 = CGRectGetWidth(v241);
          v73 = [v190 objectAtIndexedSubscript:v35 + 3];
          [v73 bounds];
          v74 = v49;
          v75 = v66 + v76 * v77 - v78 * CGRectGetHeight(v242);
        }

        else
        {
          v67 = [v190 objectAtIndexedSubscript:v35 + 2];
          [v67 bounds];
          v68 = CGRectGetWidth(v235);
          v69 = [v190 objectAtIndexedSubscript:v35 + 2];
          [v69 bounds];
          v70 = CGRectGetHeight(v236);
          v71 = [v190 objectAtIndexedSubscript:v35 + 3];
          [v71 bounds];
          v72 = CGRectGetWidth(v237);
          v73 = [v190 objectAtIndexedSubscript:v35 + 3];
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
          v84 = [v190 subarrayWithRange:{v35 - 1, 4}];

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
          [v189 addObject:v153];
        }
      }
    }
  }

  return v189;
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

- (id)findCCObjectEmbossed:(id)a3 inImage:(id)a4 forRect:(id)a5
{
  v8 = a3;
  v9 = a4;
  v29 = NSRectFromString(a5);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v14 = [v9 height];
  v15 = [v9 width];
  v16 = [v9 height];
  v17 = 28.0 / (height * v14);
  v18 = v17;
  v30.size.width = v18 * v15;
  v30.size.height = v18 * v16;
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v31 = CGRectIntegral(v30);
  v19 = [v9 imageByScalingToWidth:v31.size.width height:{v31.size.height, v31.origin.x, v31.origin.y}];
  v20 = [v19 width];
  v21 = [v19 width];
  v22 = [v19 height];
  v23 = [v19 height];
  v32.origin.x = x * v20;
  v32.size.width = width * v21;
  v32.origin.y = y * v22;
  v32.size.height = height * v23;
  v33 = CGRectIntegral(v32);
  *&v33.size.width = v33.size.width * 0.125;
  v24 = [v19 imageByCroppingRectangle:{v33.origin.x, v33.origin.y, ((ceilf(*&v33.size.width) * 8.0) + -5.0), 28.0}];
  if ([v8 isEqualToString:@"CROutputTypeCreditCardName"])
  {
    v25 = [(CRCameraReader *)self findCCNameInImageEmbossed:v24];
LABEL_5:
    v26 = v25;
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"CRCameraReaderCreditCardExpirationDate"])
  {
    v25 = [(CRCameraReader *)self findCCExpDateInImageEmbossed:v24];
    goto LABEL_5;
  }

  v26 = 0;
LABEL_7:

  return v26;
}

- (id)findObjectsFlat:(id)a3 inImage:(id)a4 numberRects:(id)a5 invert:(BOOL)a6
{
  v6 = a6;
  v149 = *MEMORY[0x277D85DE8];
  v110 = a3;
  v10 = a4;
  v108 = a5;
  v111 = [MEMORY[0x277CBEAA8] date];
  v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v12 = [v11 objectForKey:@"com.apple.CoreRecognition.show_engine_name"];
  v114 = [v12 BOOLValue];

  v13 = [v10 height];
  v14 = v13 > [v10 width];
  v109 = [MEMORY[0x277CBEB98] setWithArray:v110];
  v127 = [MEMORY[0x277CBEB38] dictionary];
  [v127 setObject:MEMORY[0x277CBEC38] forKey:@"isDetectedRect"];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v14];
  [v127 setObject:v15 forKey:@"isPortrait"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  [v127 setObject:v16 forKey:@"inverted"];

  v119 = [v109 containsObject:@"CROutputTypeCreditCardName"];
  v115 = [v109 containsObject:@"CRCameraReaderCreditCardExpirationDate"];
  v107 = [MEMORY[0x277CBEB18] array];
  v17 = +[CRInsights sharedInsights];
  v18 = [v17 takeContextSnapshot];

  v140[0] = MEMORY[0x277D85DD0];
  v140[1] = 3221225472;
  v140[2] = __61__CRCameraReader_findObjectsFlat_inImage_numberRects_invert___block_invoke;
  v140[3] = &unk_278EAA8C8;
  v145 = v14;
  v106 = v18;
  v141 = v106;
  v142 = self;
  v105 = v10;
  v143 = v105;
  v146 = v6;
  v19 = v107;
  v144 = v19;
  [v108 enumerateObjectsWithOptions:1 usingBlock:v140];
  v113 = [MEMORY[0x277CBEB18] array];
  v112 = [MEMORY[0x277CBEB18] array];
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
    v129 = [MEMORY[0x277CBEB18] array];
    if (!v20)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v129 = 0;
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

      v28 = [v27 BOOLValue];
      v29 = v124;
      if (v26)
      {

        v29 = v123;
      }

      if (v28)
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

                [v129 addObject:v36];
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
        [v127 setObject:v44 forKey:@"code"];

        v45 = [v23 objectForKey:@"accepted"];
        [v127 setObject:v45 forKey:@"accepted"];

        v46 = [v23 objectForKey:@"codeOrigin"];
        [v127 setObject:v46 forKey:@"codeOrigin"];

        v47 = [v23 objectForKey:@"codeFragmentOrigins"];
        if (v47)
        {
          [v127 setObject:v47 forKey:@"codeFragmentOrigins"];
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

        [v112 addObject:v126];
        v51 = [v126 objectForKey:@"expDateAccepted"];
        v52 = v51 == 0;

        if (!v52)
        {
          v53 = [v126 objectForKey:@"expirationDate"];
          [v127 setObject:v53 forKey:@"expirationDate"];

          v54 = +[CRInsights sharedInsights];
          [v54 provideInsightValue:v126 forKey:@"expirationDate"];

          v55 = [v126 objectForKey:@"expirationYear"];
          v56 = v55 == 0;

          if (!v56)
          {
            v57 = [v126 objectForKey:@"expirationYear"];
            [v127 setObject:v57 forKey:@"expirationYear"];
          }

          v58 = [v126 objectForKey:@"expirationMonth"];
          v59 = v58 == 0;

          if (!v59)
          {
            v60 = [v126 objectForKey:@"expirationMonth"];
            [v127 setObject:v60 forKey:@"expirationMonth"];
          }

          v61 = [v126 objectForKey:@"expirationDay"];
          v62 = v61 == 0;

          if (!v62)
          {
            v63 = [v126 objectForKey:@"expirationDay"];
            [v127 setObject:v63 forKey:@"expirationDay"];
          }

          v64 = [v126 objectForKey:@"dateOrigin"];
          v65 = v64 == 0;

          if (!v65)
          {
            v47 = [v126 objectForKey:@"dateOrigin"];
            [v127 setObject:v47 forKey:@"dateOrigin"];
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

        v76 = [v74 BOOLValue];
        v77 = v117;
        if (v72)
        {
          v77 = v118;
        }

        if (v76)
        {
          [v113 addObject:v128];
        }

        if (v72)
        {
        }

        v78 = [v128 objectForKey:@"nameAccepted"];
        v79 = v78 == 0;

        if (!v79)
        {
          if (v114)
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
          [v127 setObject:v81 forKey:@"cardholderName"];

          v82 = [v23 objectForKey:@"fieldCutRect"];
          [v127 setObject:v82 forKey:@"nameCutRect"];

          v83 = [v23 objectForKey:@"nameOrigin"];
          [v127 setObject:v83 forKey:@"nameOrigin"];
        }
      }

      v84 = [v127 objectForKey:@"cardholderName"];
      v85 = v84 == 0;

      if (v85)
      {
        v86 = [v128 objectForKey:@"nameResult"];
        v87 = [v128 objectForKey:@"isValidNameString"];
        v88 = [v87 BOOLValue];

        if (v88)
        {
          [v127 setObject:v86 forKey:@"cardholderName"];
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
  [v111 timeIntervalSinceNow];
  v92 = [v90 numberWithDouble:-v91];
  [v127 setObject:v92 forKey:@"recognitionTime"];

  v93 = +[CRInsights sharedInsights];
  v94 = MEMORY[0x277CCABB0];
  [v111 timeIntervalSinceNow];
  v96 = [v94 numberWithDouble:-v95];
  [v93 provideInsightValue:v96 forKey:@"recognitionTime"];

  [v127 setObject:v112 forKey:@"expDateResults"];
  [v127 setObject:v113 forKey:@"nameResults"];
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

  v100 = [v99 BOOLValue];
  if (v97)
  {
  }

  if (v100)
  {
    [v127 setObject:v129 forKey:@"numberResults"];
  }

  v101 = +[CRInsights sharedInsights];
  [v101 provideInsightValue:v129 forKey:@"numberResults"];

  v102 = +[CRInsights sharedInsights];
  [v102 provideInsightValue:v112 forKey:@"expDateResults"];

  v103 = +[CRInsights sharedInsights];
  [v103 provideInsightValue:v113 forKey:@"nameResults"];

  return v127;
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

- (id)findCCObjectsEmbossed:(id)a3 inImage:(id)a4 numberRects:(id)a5 nameRects:(id)a6 dateRects:(id)a7
{
  v208 = *MEMORY[0x277D85DE8];
  v132 = a3;
  v142 = a4;
  v129 = a5;
  v130 = a6;
  v131 = a7;
  v126 = clock();
  v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v13 = [v12 objectForKey:@"com.apple.CoreRecognition.exaustive_search"];
  v134 = [v13 BOOLValue];

  v14 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v15 = [v14 objectForKey:@"com.apple.CoreRecognition.show_engine_name"];
  LODWORD(v123) = [v15 BOOLValue];

  v146 = [v142 height];
  v145 = [v142 width];
  v133 = [MEMORY[0x277CBEB98] setWithArray:v132];
  v136 = [MEMORY[0x277CBEB38] dictionary];
  v127 = [v133 containsObject:@"CROutputTypeCreditCardName"];
  HIDWORD(v123) = [v133 containsObject:@"CRCameraReaderCreditCardExpirationDate"];
  v210.origin.x = *MEMORY[0x277CBF348];
  v210.origin.y = *(MEMORY[0x277CBF348] + 8);
  v210.size.width = 428.425;
  v210.size.height = 270.25;
  v211 = CGRectIntegral(v210);
  height = v211.size.height;
  y = v211.origin.y;
  if (v146 <= v145)
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
  v141 = [MEMORY[0x277CBEB38] dictionary];
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  obj = v129;
  v18 = [obj countByEnumeratingWithState:&v202 objects:v207 count:16];
  if (v18)
  {
    v177 = 0;
    v139 = *v203;
    v19 = 54.05;
    if (v146 <= v145)
    {
      v20 = 54.05;
    }

    else
    {
      v20 = 85.685;
    }

    if (v146 <= v145)
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
        if (v146 > v145)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        if (v146 > v145)
        {
          v29 = v27;
        }

        else
        {
          v29 = v26;
        }

        if (v146 > v145)
        {
          v30 = v24;
        }

        else
        {
          v30 = v25;
        }

        v152 = v30;
        if (v146 <= v145)
        {
          v25 = v24;
        }

        v163 = v7;
        width = v28;
        height = v29;
        v31 = [v142 imageByScalingToWidth:v29 height:{v28, v123}];
        v157 = [v31 width];
        v32 = v23 * 0.65;
        v153 = [v31 width];
        v33 = [v31 height];
        v34 = [v31 height];
        v151 = [v31 width];
        v35 = [v31 width];
        v36 = [v31 height];
        v37 = [v31 height];
        v38 = [v31 width];
        v39 = [v31 width];
        v40 = [v31 height];
        v41 = [v31 height];
        v214.origin.x = v172 * v157;
        v214.size.width = v22 * v153;
        v214.origin.y = v21 * v33;
        v214.size.height = v23 * v34;
        v215 = CGRectIntegral(v214);
        v42 = v215.origin.x;
        v43 = v215.origin.y;
        v44 = v215.size.width;
        v215.origin.x = v151 * 0.85;
        v215.size.width = v35 * 0.06;
        v215.origin.y = v160 * v36;
        v215.size.height = v32 * v37;
        v216 = CGRectIntegral(v215);
        v173 = v216.origin.x;
        v161 = v216.origin.y;
        v7 = v163;
        v45 = v216.size.width;
        v46 = v32;
        v47 = v216.size.height;
        v216.origin.x = v38 * 0.85;
        v216.size.width = v39 * 0.06;
        v216.origin.y = v155 * v40;
        v216.size.height = v46 * v41;
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
        LODWORD(v39) = v52 == 0;

        if (v39)
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

        v63 = [v62 BOOLValue];
        v64 = v144;
        if (v61)
        {

          v64 = v7;
        }

        if (v63)
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
            [v141 addEntriesFromDictionary:v65];
            v69 = NSStringFromPoint(v169);
            [v141 setObject:v69 forKey:@"codeOrigin"];

            v70 = [MEMORY[0x277CCABB0] numberWithBool:v146 > v145];
            [v141 setObject:v70 forKey:@"isPortrait"];

            if ((v134 & 1) == 0)
            {
              goto LABEL_45;
            }
          }
        }

        else
        {
          [v136 addEntriesFromDictionary:v177];
          v71 = [v177 objectForKey:@"accepted"];
          v72 = v71 == 0;

          if (!v72)
          {
            v73 = NSStringFromPoint(v169);
            [v136 setObject:v73 forKey:@"codeOrigin"];

            v74 = [MEMORY[0x277CCABB0] numberWithBool:v146 > v145];
            [v136 setObject:v74 forKey:@"isPortrait"];

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
  [v136 setObject:v76 forKey:@"codeRecognitionTime"];

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
    v80 = 1;
  }

  else
  {
    v81 = [v177 objectForKey:@"accepted"];
    v80 = [v81 BOOLValue];
  }

  if (v77)
  {
  }

  if (v80)
  {
    group = dispatch_group_create();
    v176 = [MEMORY[0x277CBEB38] dictionary];
    v174 = [MEMORY[0x277CBEB38] dictionary];
    if (v127)
    {
      v82 = clock();
      v166 = [MEMORY[0x277CBEB18] array];
      v162 = v82;
      v164 = [MEMORY[0x277CBEB58] set];
      v83 = +[CRInsights sharedInsights];
      v84 = [v83 takeContextSnapshot];

      v192[0] = MEMORY[0x277D85DD0];
      v192[1] = 3221225472;
      v192[2] = __80__CRCameraReader_findCCObjectsEmbossed_inImage_numberRects_nameRects_dateRects___block_invoke_3;
      v192[3] = &unk_278EAA8F0;
      v159 = v84;
      v193 = v159;
      v194 = self;
      v195 = v142;
      v199 = v146 > v145;
      v200 = 0;
      v170 = v166;
      v196 = v170;
      v201 = v124;
      v85 = v176;
      v197 = v85;
      v168 = v164;
      v198 = v168;
      [v130 enumerateObjectsWithOptions:1 usingBlock:v192];
      v86 = [v85 objectForKey:?];
      LODWORD(v84) = v86 == 0;

      if (v84)
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
              v94 = [v93 BOOLValue];

              if (v94)
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
      [v130 removeAllObjects];
      v95 = [v168 allObjects];
      [v130 addObjectsFromArray:v95];

      *&v96 = (clock() - v162) / 1000000.0;
      v97 = [MEMORY[0x277CCABB0] numberWithFloat:v96];
      [v85 setObject:v97 forKey:@"nameRecognitionTime"];
    }

    if (v125)
    {
      v98 = clock();
      v99 = [MEMORY[0x277CBEB58] set];
      v100 = [MEMORY[0x277CBEB18] array];
      v101 = +[CRInsights sharedInsights];
      v102 = [v101 takeContextSnapshot];

      v178[0] = MEMORY[0x277D85DD0];
      v178[1] = 3221225472;
      v178[2] = __80__CRCameraReader_findCCObjectsEmbossed_inImage_numberRects_nameRects_dateRects___block_invoke_4;
      v178[3] = &unk_278EAA8F0;
      v103 = v102;
      v179 = v103;
      v180 = self;
      v181 = v142;
      v185 = v146 > v145;
      v186 = 0;
      v104 = v100;
      v182 = v104;
      v105 = v99;
      v183 = v105;
      v106 = v174;
      v184 = v106;
      v187 = v134;
      [v131 enumerateObjectsWithOptions:1 usingBlock:v178];
      [v106 setObject:v104 forKey:@"expDateResults"];
      *&v107 = (clock() - v98) / 1000000.0;
      v108 = [MEMORY[0x277CCABB0] numberWithFloat:v107];
      [v106 setObject:v108 forKey:@"expDateRecognitionTime"];

      [v131 removeAllObjects];
      v109 = [v105 allObjects];
      [v131 addObjectsFromArray:v109];
    }

    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
    *&v110 = (clock() - v126) / 1000000.0;
    v111 = [MEMORY[0x277CCABB0] numberWithFloat:v110];
    [v136 setObject:v111 forKey:@"totalRecognitionTime"];

    [v136 addEntriesFromDictionary:v176];
    [v136 addEntriesFromDictionary:v174];
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

    v115 = [v114 BOOLValue];
    if (v112)
    {
    }

    if (v115)
    {
      [v136 addEntriesFromDictionary:v141];
    }

    v116 = +[CRInsights sharedInsights];
    [v116 provideInsightValue:v176 forKey:@"CRInsightsRecognitionResultForNameEmbossed"];

    v117 = +[CRInsights sharedInsights];
    [v117 provideInsightValue:v174 forKey:@"CRInsightsRecognitionResultForExpDateEmbossed"];

    v118 = +[CRInsights sharedInsights];
    [v118 provideInsightValue:v141 forKey:@"CRInsightsRecognitionResultForNumberEmbossed"];

    v119 = +[CRInsights sharedInsights];
    [v119 provideInsightValue:v141 forKey:@"numberResults"];

    v120 = +[CRInsights sharedInsights];
    [v120 provideInsightValue:v176 forKey:@"nameResults"];

    v121 = +[CRInsights sharedInsights];
    [v121 provideInsightValue:v174 forKey:@"expDateResults"];
  }

  return v136;
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

- (id)findCCResultsInImageFlat:(id)a3 usingTextFeatures:(id)a4 invert:(BOOL)a5
{
  v5 = a5;
  v118 = *MEMORY[0x277D85DE8];
  v96 = a3;
  v7 = a4;
  v94 = v7;
  v8 = +[CRInsights sharedInsights];
  [v8 setContextValue:v7 forKey:?];

  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [v9 objectForKey:@"com.apple.CoreRecognition.disable_prefix_check"];
  v11 = [v10 BOOLValue];

  v97 = [MEMORY[0x277CBEB38] dictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v90 = [MEMORY[0x277CCAB68] string];
    v12 = MEMORY[0x277CBEB18];
    v13 = [v7 subFeatures];
    v99 = [v12 arrayWithCapacity:{objc_msgSend(v13, "count")}];

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v14 = [v7 subFeatures];
    v15 = 0;
    v16 = [v14 countByEnumeratingWithState:&v112 objects:v117 count:16];
    if (v16)
    {
      v17 = *v113;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v113 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v112 + 1) + 8 * i) subFeatures];
          v20 = [v19 count];

          v15 += v20;
        }

        v16 = [v14 countByEnumeratingWithState:&v112 objects:v117 count:16];
      }

      while (v16);
    }

    v21 = [v94 subFeatures];
    if (v5)
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
    v106 = v96;
    v110 = v5;
    v93 = v90;
    v107 = v93;
    v111 = v11;
    v95 = v99;
    v108 = v95;
    v109 = v15;
    [v21 enumerateObjectsWithOptions:v22 usingBlock:v105];

    v98 = extractCardCode(v93);
    if (v98)
    {
      [v94 bounds];
      if (isValidCodeLocation(v98, 0, v23, v24, v25, v26))
      {
        [v97 setObject:v98 forKey:@"code"];
        [v97 setObject:MEMORY[0x277CBEC38] forKey:@"accepted"];
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

    v40 = [v29 BOOLValue];
    if (v27)
    {
    }

    if (v40)
    {
      v41 = [MEMORY[0x277CBEB38] dictionary];
      v42 = v41;
      if (v98)
      {
        [v41 setObject:v98 forKey:@"code"];
        [v42 setObject:MEMORY[0x277CBEC38] forKey:@"accepted"];
      }

      else
      {
        [v41 setObject:v93 forKey:@"code"];
      }

      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:{v42, 0}];
      [v97 setObject:v43 forKey:@"cardnumberFragmented"];
    }

    [v97 setObject:v95 forKey:@"CardNumber"];
    v44 = [MEMORY[0x277CBEAC0] dictionary];
    [v97 setObject:v44 forKey:@"Cardholder"];

    v45 = [MEMORY[0x277CBEAC0] dictionary];
    [v97 setObject:v45 forKey:@"Expiration"];

    goto LABEL_65;
  }

  v30 = +[CRInsights sharedInsights];
  [v30 setContextValue:v7 forKey:@"CRInsightsContextRecognitionTextFeature"];

  v31 = [(CRCameraReader *)self flatPrintedModel];
  v32 = [v31 creditcardResultsFromImage:v96 textFeatures:v7 invert:v5 tryPatternMatch:1];

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

  [v7 bounds];
  if (isValidCodeLocation(v98, 0, v49, v50, v51, v52))
  {
    [v97 setObject:v98 forKey:@"code"];
    [v97 setObject:MEMORY[0x277CBEC38] forKey:@"accepted"];
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

  v56 = [v55 BOOLValue];
  if (v53)
  {
  }

  if (v56)
  {
    v100 = [MEMORY[0x277CBEB18] array];
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
            [v100 addObject:v63];
          }
        }

        v58 = [v57 countByEnumeratingWithState:&v101 objects:v116 count:16];
      }

      while (v58);
    }

    [v97 setObject:v100 forKey:@"CardNumber"];
  }

  v66 = [v91 objectForKey:@"Cardholder"];
  v67 = [(CRCameraReader *)self contactsCache];
  v68 = [(CRCameraReader *)self previousContactMatches];
  v69 = extractCardholderNameResults(v66, v67, v68);

  [v97 setObject:v69 forKey:@"Cardholder"];
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

  [v97 setObject:v75 forKey:@"Expiration"];

LABEL_65:
  v86 = +[CRInsights sharedInsights];
  [v86 setContextValue:0 forKey:@"CRInsightsContextRecognitionTextFeatureGroup"];

  return v97;
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

- (id)findCCNumberInImageEmbossed:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v4 imageByApplyingHistogramCorrection];
  v7 = +[CRInsights sharedInsights];
  [v7 provideInsightValue:v6 forKey:@"CRInsightsCardImageCutEmbossedBufferKey"];

  v8 = [(CRCameraReader *)self embossedNumberModel];
  v9 = [v8 creditcardResultsFromImage:v6];
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
      [v5 setObject:v15 forKey:@"code"];
      [v5 setObject:MEMORY[0x277CBEC38] forKey:@"accepted"];
      v11 = v15;
      break;
    }

    ++v12;
    v11 = v15;
  }

  return v5;
}

- (id)findCCNumberInImageEmbossed:(id)a3 withFinalDigit:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [v7 height];
  v42 = [v7 imageByScalingToWidth:(28.0 / v9 * objc_msgSend(v7 height:{"width")), (28.0 / v9 * objc_msgSend(v7, "height"))}];
  v10 = [v42 imageByApplyingHistogramCorrection];
  v11 = [(CRCameraReader *)self embossedExpirationModel];
  v12 = [v11 creditcardResultsFromImage:v10];
  v13 = [v12 objectForKey:@"FastScanningCTCSegmentKey"];

  v43 = v13;
  v14 = [(CRCameraReader *)self extractFinalDigitStringFromNumbers:v13];
  if ([v14 length] != 1)
  {
    v15 = [v10 imageByAdjustingBrightnessAlpha:1.3 beta:128.0];
    v16 = [v15 imageByApplyingHistogramCorrection];

    v17 = [(CRCameraReader *)self embossedExpirationModel];
    v18 = [v17 creditcardResultsFromImage:v16];
    v19 = [v18 objectForKey:@"FastScanningCTCSegmentKey"];

    v20 = [(CRCameraReader *)self extractFinalDigitStringFromNumbers:v19];

    v10 = v16;
    v43 = v19;
    v14 = v20;
  }

  if ([v14 length] == 1)
  {
    v39 = v6;
    v40 = v8;
    v41 = [v6 imageByApplyingHistogramCorrection];
    v21 = [(CRCameraReader *)self embossedNumberModel];
    v22 = [v21 creditcardResultsFromImage:v41];
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

    v29 = [v41 imageByAdjustingBrightnessAlpha:2.0 beta:100.0];
    v30 = [v29 imageByApplyingHistogramCorrection];

    v31 = [(CRCameraReader *)self embossedNumberModel];
    v32 = [v31 creditcardResultsFromImage:v30];
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

    v6 = v39;
    v8 = v40;
  }

  return v8;
}

- (id)findCCNameInImageEmbossed:(id)a3
{
  v4 = [a3 imageByApplyingHistogramCorrection];
  v5 = [(CRCameraReader *)self embossedCardholderModel];
  v6 = [v5 creditcardResultsFromImage:v4];
  v7 = [v6 objectForKey:@"arrayResult"];

  v8 = [(CRCameraReader *)self contactsCache];
  v9 = [(CRCameraReader *)self previousContactMatches];
  v10 = extractCardholderNameResults(v7, v8, v9);

  return v10;
}

- (id)findCCExpDateInImageEmbossed:(id)a3
{
  v4 = [a3 imageByApplyingHistogramCorrection];
  v5 = [(CRCameraReader *)self embossedExpirationModel];
  v6 = [v5 creditcardResultsFromImage:v4];

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
  v4 = [(CRCameraReader *)self diagnosticHUDLayer];
  [v4 removeFromSuperlayer];

  v5 = [(CRCameraReader *)self alignmentLayer];
  [v5 removeFromSuperlayer];

  v6 = [(CRCameraReader *)self boxLayer];
  [v6 removeFromSuperlayer];

  v7 = [(CRCameraReader *)self sessionManager];
  v3 = [v7 previewLayer];
  [v3 removeFromSuperlayer];
}

- (void)primeBoxLayerHideTimerWithFrameTime:(id *)a3
{
  v5 = [(CRCameraReader *)self boxLayerHideTimer];
  v8 = *a3;
  Seconds = CMTimeGetSeconds(&v8);
  [(CRCameraReader *)self configDemoSpeed];
  CMTimeMakeWithSeconds(&v8, Seconds + 0.5 / v7, a3->var1);
  [v5 setFireTime:&v8];
}

- (void)pauseBoxLayerHideTimer
{
  v2 = [(CRCameraReader *)self boxLayerHideTimer];
  v3 = *MEMORY[0x277CC08B0];
  v4 = *(MEMORY[0x277CC08B0] + 16);
  [v2 setFireTime:&v3];
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
  v3 = [(CRCameraReader *)self view];
  v4 = [v3 layer];
  [v4 bounds];
  Width = CGRectGetWidth(v28);
  v6 = [(CRCameraReader *)self view];
  v7 = [v6 layer];
  [v7 bounds];
  if (Width <= CGRectGetHeight(v29))
  {
    v8 = [(CRCameraReader *)self view];
    v9 = [v8 layer];
    [v9 bounds];
    v10 = CGRectGetWidth(v31);
    v11 = 0.8;
  }

  else
  {
    v8 = [(CRCameraReader *)self view];
    v9 = [v8 layer];
    [v9 bounds];
    v10 = CGRectGetWidth(v30);
    v11 = 0.65;
  }

  v12 = v10 * v11;

  v13 = [(CRCameraReader *)self boxLayer];
  [v13 bounds];
  Height = CGRectGetHeight(v32);
  v15 = [(CRCameraReader *)self boxLayer];
  [v15 bounds];
  v16 = CGRectGetWidth(v33);

  v17 = [(CRCameraReader *)self view];
  v18 = [v17 layer];
  [v18 bounds];
  MidX = CGRectGetMidX(v34);
  v20 = [(CRCameraReader *)self view];
  v21 = [v20 layer];
  [v21 bounds];
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

- (void)animatePresentCodeAtFrameTime:(id *)a3
{
  v73[3] = *MEMORY[0x277D85DE8];
  v4 = [(CRCameraReader *)self boxLayer];
  v5 = [v4 animationKeys];
  v6 = [v5 containsObject:@"CRBoxLayerAnimationReveal"];

  if ((v6 & 1) == 0)
  {
    v7 = [(CRCameraReader *)self boxLayer];
    [v7 removeAllAnimations];
  }

  v62 = [MEMORY[0x277CD9E00] animation];
  v63 = [MEMORY[0x277CD9E00] animation];
  v8 = [(CRCameraReader *)self boxLayer];
  [v8 position];
  MidX = v9;
  MidY = v11;

  memset(&v72, 0, sizeof(v72));
  v13 = [(CRCameraReader *)self boxLayer];
  v14 = v13;
  if (v13)
  {
    [v13 transform];
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
    v20 = [(CRCameraReader *)self boxLayer];
    [v20 bounds];
    v21 = CGRectGetWidth(v77);

    CATransform3DMakeScale(&v71, v19 / v21, v19 / v21, 1.0);
    v72 = v71;
    if ([(CRCameraReader *)self codeInverted])
    {
      v70 = v72;
      CATransform3DRotate(&v71, &v70, 3.14159265, 0.0, 0.0, 1.0);
      v72 = v71;
    }

    v22 = [(CRCameraReader *)self sessionManager];
    v23 = [v22 isPreviewVideoMirrored];

    if (v23)
    {
      v70 = v72;
      CATransform3DRotate(&v71, &v70, 3.14159265, 0.0, 1.0, 0.0);
      v72 = v71;
    }

    v24 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"position"];
    v25 = [(CRCameraReader *)self boxLayer];
    [v25 position];
    v27 = v26;
    v28 = [(CRCameraReader *)self boxLayer];
    [v28 position];
    v30 = v29;

    v31 = MEMORY[0x277CBEA60];
    v32 = MEMORY[0x277CCAE60];
    v33 = [(CRCameraReader *)self boxLayer];
    [v33 position];
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
    v43 = [(CRCameraReader *)self boxLayer];
    v44 = v43;
    if (v43)
    {
      [v43 transform];
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
    [v62 setDuration:0.5 / v54];
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:{v24, v38, v41, 0}];
    [v62 setAnimations:v55];

    [(CRCameraReader *)self configDemoSpeed];
    [v63 setDuration:0.5 / v56];
    v57 = [MEMORY[0x277CBEA60] arrayWithObject:v51];
    [v63 setAnimations:v57];
  }

  else
  {
    v24 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    v45 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
    [v24 setFromValue:v45];

    v46 = [MEMORY[0x277CCABB0] numberWithDouble:0.4];
    [v24 setToValue:v46];

    [(CRCameraReader *)self configDemoSpeed];
    [v62 setDuration:0.25 / v47];
    [(CRCameraReader *)self configDemoSpeed];
    [v63 setDuration:0.25 / v48];
    v38 = [MEMORY[0x277CBEA60] arrayWithObject:v24];
    [v63 setAnimations:v38];
  }

  objc_initWeak(&v71, self);
  v58 = [(CRCameraReader *)self boxLayer];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __48__CRCameraReader_animatePresentCodeAtFrameTime___block_invoke;
  v64[3] = &unk_278EAA940;
  objc_copyWeak(v67, &v71);
  v59 = v62;
  v65 = v59;
  v67[1] = a2;
  v60 = v63;
  v66 = v60;
  v67[2] = *&MidX;
  v67[3] = *&MidY;
  v68 = v72;
  v69 = 0x3FD999999999999ALL;
  [v58 addCompletionBlock:v64];

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

- (void)showMessage:(id)a3 color:(id)a4 style:(int64_t)a5 duration:(double)a6
{
  v10 = a3;
  v78 = a4;
  v11 = 0;
  if (a5 > 1)
  {
    if (a5 == 2)
    {
      v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRecognition"];
      v11 = [v15 localizedStringForKey:@"Success" value:&stru_2859636D0 table:0];

      v13 = 0;
      v12 = v10;
      goto LABEL_11;
    }

    if (a5 != 3)
    {
      goto LABEL_12;
    }

    v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRecognition"];
    v14 = [v12 localizedStringForKey:@"Error" value:&stru_2859636D0 table:0];
    goto LABEL_9;
  }

  if (!a5)
  {
    v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRecognition"];
    v14 = [v12 localizedStringForKey:@"Note" value:&stru_2859636D0 table:0];
LABEL_9:
    v11 = v14;
    v13 = v10;
    goto LABEL_11;
  }

  v12 = v10;
  v13 = 0;
  if (a5 == 1)
  {
LABEL_11:

    v10 = v13;
  }

LABEL_12:
  v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRecognition"];
  v17 = [v16 localizedStringForKey:@"OK" value:&stru_2859636D0 table:0];

  v18 = [(CRCameraReader *)self activityIndicator];

  if (v18)
  {
    goto LABEL_23;
  }

  v19 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:0];
  [(CRCameraReader *)self setActivityIndicator:v19];

  v20 = [(CRCameraReader *)self activityIndicator];
  [v20 setHidesWhenStopped:1];

  v21 = [(CRCameraReader *)self view];
  v22 = [(CRCameraReader *)self activityIndicator];
  [v21 addSubview:v22];

  if (![(CRCameraReader *)self configPresentCentered])
  {
    v77 = [(CRCameraReader *)self activityIndicator];
    v76 = [(CRCameraReader *)self view];
    [v76 bounds];
    MidX = CGRectGetMidX(v93);
    v43 = [(CRCameraReader *)self activityIndicator];
    [v43 bounds];
    Width = CGRectGetWidth(v94);
    v45 = [(CRCameraReader *)self view];
    [v45 bounds];
    MaxY = CGRectGetMaxY(v95);
    v47 = [(CRCameraReader *)self activityIndicator];
    [v47 bounds];
    Height = CGRectGetHeight(v96);
    v49 = [(CRCameraReader *)self activityIndicator];
    [v49 bounds];
    v50 = CGRectGetWidth(v97);
    v51 = [(CRCameraReader *)self activityIndicator];
    [v51 bounds];
    [v77 setFrame:{MidX + Width * -0.5, MaxY + Height * -1.5 + -44.0, v50, CGRectGetHeight(v98)}];

    v52 = [MEMORY[0x277D75418] currentDevice];
    if ([v52 userInterfaceIdiom] == 1)
    {
      v53 = [(CRCameraReader *)self view];
      [v53 bounds];
      v105.size.width = 1024.0;
      v105.size.height = 748.0;
      v105.origin.x = 0.0;
      v105.origin.y = 0.0;
      if (CGRectEqualToRect(v99, v105))
      {
      }

      else
      {
        v54 = [(CRCameraReader *)self view];
        [v54 bounds];
        v106.size.width = 768.0;
        v106.size.height = 1004.0;
        v106.origin.x = 0.0;
        v106.origin.y = 0.0;
        v55 = CGRectEqualToRect(v100, v106);

        if (!v55)
        {
LABEL_21:
          v41 = [(CRCameraReader *)self activityIndicator];
          [v41 setAutoresizingMask:13];
          goto LABEL_22;
        }
      }

      v52 = [(CRCameraReader *)self activityIndicator];
      v56 = [(CRCameraReader *)self activityIndicator];
      [v56 frame];
      MinX = CGRectGetMinX(v101);
      v58 = [(CRCameraReader *)self activityIndicator];
      [v58 frame];
      MinY = CGRectGetMinY(v102);
      v60 = [(CRCameraReader *)self activityIndicator];
      [v60 frame];
      v61 = CGRectGetWidth(v103);
      v62 = [(CRCameraReader *)self activityIndicator];
      [v62 frame];
      [v52 setFrame:{MinX, MinY + -44.0, v61, CGRectGetHeight(v104)}];
    }

    goto LABEL_21;
  }

  [(CRCameraReader *)self boxLayerPresentationFrame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [(CRCameraReader *)self activityIndicator];
  v87.origin.x = v24;
  v87.origin.y = v26;
  v87.size.width = v28;
  v87.size.height = v30;
  v32 = CGRectGetMidX(v87);
  v33 = [(CRCameraReader *)self activityIndicator];
  [v33 bounds];
  v34 = CGRectGetWidth(v88);
  v89.origin.x = v24;
  v89.origin.y = v26;
  v89.size.width = v28;
  v89.size.height = v30;
  v35 = CGRectGetMaxY(v89);
  v36 = [(CRCameraReader *)self activityIndicator];
  [v36 bounds];
  v37 = CGRectGetHeight(v90);
  v38 = [(CRCameraReader *)self activityIndicator];
  [v38 bounds];
  v39 = CGRectGetWidth(v91);
  v40 = [(CRCameraReader *)self activityIndicator];
  [v40 bounds];
  [v31 setFrame:{v32 + v34 * -0.5, v35 + v37 * 0.5, v39, CGRectGetHeight(v92)}];

  v41 = [(CRCameraReader *)self activityIndicator];
  [v41 setAutoresizingMask:45];
LABEL_22:

LABEL_23:
  v63 = [(CRCameraReader *)self activityIndicator];
  if (a5 == 1)
  {
    [v63 startAnimating];
  }

  else
  {
    [v63 stopAnimating];
  }

  objc_initWeak(location, self);
  v64 = [(CRCameraReader *)self configPresentCentered];
  [(CRCameraReader *)self configDemoSpeed];
  v66 = v65;
  v67 = [(CRCameraReader *)self codePresented];
  [v67 timeIntervalSinceNow];
  v69 = 0.25;
  if (v64)
  {
    v69 = 0.5;
  }

  v70 = v69 / v66 + v68;

  v71 = dispatch_time(0, (fmax(v70, 0.0) * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CRCameraReader_showMessage_color_style_duration___block_invoke;
  block[3] = &unk_278EAA9E0;
  v80 = v78;
  v81 = self;
  v82 = v10;
  v85[1] = *&a6;
  v72 = v10;
  v73 = v78;
  objc_copyWeak(v85, location);
  v85[2] = a5;
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
  v3 = [(CRCameraReader *)self delegateQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__CRCameraReader_sendDidCancel__block_invoke;
  v4[3] = &unk_278EAA5E8;
  v4[4] = self;
  cr_dispatch_async(v3, v4);
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

- (void)sendDidEndWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(CRCameraReader *)self delegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__CRCameraReader_sendDidEndWithInfo___block_invoke;
  v7[3] = &unk_278EAA6D0;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  cr_dispatch_async(v5, v7);
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

- (void)sendDidRecognizeNewObjects:(id)a3
{
  v4 = a3;
  v5 = [(CRCameraReader *)self delegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__CRCameraReader_sendDidRecognizeNewObjects___block_invoke;
  v7[3] = &unk_278EAA6D0;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  cr_dispatch_async(v5, v7);
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
  v4 = [(CRCameraReader *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CRCameraReader_sendDidEndAnimation__block_invoke;
  block[3] = &unk_278EAA5E8;
  block[4] = self;
  dispatch_after(v3, v4, block);
}

void __37__CRCameraReader_sendDidEndAnimation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callbackDelegate];
  [v2 cameraReaderDidEnd:*(a1 + 32)];
}

- (void)sendDidEndWithError:(id)a3
{
  v4 = a3;
  v5 = [(CRCameraReader *)self delegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__CRCameraReader_sendDidEndWithError___block_invoke;
  v7[3] = &unk_278EAA6D0;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  cr_dispatch_async(v5, v7);
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

- (id)attributedStringWithFrame:(CGSize)a3 withFont:(id)a4 withString:(id)a5 color:(CGColor *)a6
{
  height = a3.height;
  width = a3.width;
  v35[3] = *MEMORY[0x277D85DE8];
  name = a4;
  v31 = a5;
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
    v35[1] = a6;
    v34[2] = v13;
    v35[2] = v33;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
    v18 = [v16 initWithString:v31 attributes:v17];

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

- (id)createTextLayerForRecognizedObject:(id)a3
{
  v4 = a3;
  v5 = [v4 overlayString];

  if (v5)
  {
    [v4 boundingBox];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(CRCameraReader *)self sessionManager];
    v15 = [(CRCameraReader *)self sessionManager];
    v16 = [v15 previewLayer];
    v17 = 1.0 - v7;
    [v14 convertCameraPointOCR:v16 toLayer:0 flipped:{v9, 1.0 - v7}];
    v19 = v18;
    v21 = v20;

    v22 = [(CRCameraReader *)self sessionManager];
    v23 = [(CRCameraReader *)self sessionManager];
    v24 = [v23 previewLayer];
    v25 = v9 + v13;
    [v22 convertCameraPointOCR:v24 toLayer:0 flipped:{v9 + v13, v17}];
    v27 = v26;

    v28 = [(CRCameraReader *)self sessionManager];
    v29 = [(CRCameraReader *)self sessionManager];
    v30 = [v29 previewLayer];
    v31 = v11 + v17;
    [v28 convertCameraPointOCR:v30 toLayer:0 flipped:{v25, v31}];

    v32 = [(CRCameraReader *)self sessionManager];
    v33 = [(CRCameraReader *)self sessionManager];
    v34 = [v33 previewLayer];
    [v32 convertCameraPointOCR:v34 toLayer:0 flipped:{v9, v31}];
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
    v5 = [MEMORY[0x277CD9FC8] layer];
    v41 = +[CRColor whiteColor];
    [v5 setBackgroundColor:{objc_msgSend(v41, "CGColor")}];

    [(CRCameraReader *)self ocrOverlayBackgroundOpacity];
    [v5 setOpacity:?];
    v42 = +[CRColor blackColor];
    [v5 setForegroundColor:{objc_msgSend(v42, "CGColor")}];

    [v5 setFrame:{x, y, width, height}];
    [v5 setAlignmentMode:*MEMORY[0x277CDA020]];
    [v5 setFontSize:24.0];
    [v4 rotation];
    CATransform3DMakeRotation(&v50, -v43, 0.0, 0.0, 1.0);
    v49 = v50;
    [v5 setTransform:&v49];
    [v5 setAllowsFontSubpixelQuantization:1];
    [v5 setMasksToBounds:1];
    [v5 setCornerRadius:10.0];
    v44 = [(CRCameraReader *)self ocrOverlayFontName];
    v45 = [v4 overlayString];
    v46 = [v45 string];
    v47 = -[CRCameraReader attributedStringWithFrame:withFont:withString:color:](self, "attributedStringWithFrame:withFont:withString:color:", v44, v46, [v5 foregroundColor], width, height);
    [v5 setString:v47];
  }

  return v5;
}

- (void)showTextDetectorObjects:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__CRCameraReader_showTextDetectorObjects___block_invoke;
  v6[3] = &unk_278EAA6D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)sendDidDisplayMessageStyle:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__CRCameraReader_sendDidDisplayMessageStyle___block_invoke;
  v3[3] = &unk_278EAA6F8;
  v3[4] = self;
  v3[5] = a3;
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

- (void)sendDidFindTarget:(id)a3 frameTime:(id *)a4
{
  v6 = a3;
  v7 = [(CRCameraReader *)self delegateQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__CRCameraReader_sendDidFindTarget_frameTime___block_invoke;
  v9[3] = &unk_278EAA830;
  v9[4] = self;
  v11 = *a4;
  v8 = v6;
  v10 = v8;
  cr_dispatch_async(v7, v9);
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

- (void)sendDidEndWithErrorDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5
{
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:a3 code:a4 userInfo:a5];
  [(CRCameraReader *)self sendDidEndWithError:?];
}

- (NSArray)outputObjectTypes
{
  v2 = [(NSArray *)self->_outputObjectTypes copy];

  return v2;
}

- (void)setOutputObjectTypes:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_outputObjectTypes != v5)
  {
    objc_storeStrong(&self->_outputObjectTypes, a3);
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

      v10 = [(CRCameraReader *)self optionsDictionary];
      LOBYTE(v8) = v10 == 0;

      if ((v8 & 1) == 0)
      {
        v11 = [(CRCameraReader *)self optionsDictionary];
        [v9 addEntriesFromDictionary:v11];
      }

      v12 = [v9 objectForKey:v7];
      v13 = [v12 isEqualToString:@"zh-Hans"];

      if (v13)
      {
        [v9 setObject:*MEMORY[0x277D70050] forKey:*MEMORY[0x277D70048]];
      }

      v14 = [objc_alloc(MEMORY[0x277D70090]) initWithOptions:v9];
      [(CRCameraReader *)self setOcrImageReader:v14];

      v15 = [(CRCameraReader *)self ocrImageReader];
      v19 = *MEMORY[0x277D70058];
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      [v15 setOutputObjectTypes:v16];

      v17 = objc_opt_new();
      [(CRCameraReader *)self setTextDetectorRTFeedback:v17];

      LODWORD(v18) = 0.75;
      [(CRCameraReader *)self setOcrOverlayBackgroundOpacity:v18];
      [(CRCameraReader *)self setOcrOverlayFontName:@"Helvetica"];
    }
  }
}

- (void)setOutputCapturedImageWidth:(unint64_t)a3
{
  if (a3 > 0x5FF)
  {
    if (self->_outputCapturedImageWidth != a3)
    {
      self->_outputCapturedImageWidth = a3;
      self->_outputCapturedImageHeight = [objc_opt_class() capturedCardHeightForTargetWidth:a3];
      [(CRCameraReader *)self releaseCorrectedCardBuffer];

      [(CRCameraReader *)self createCorrectedCardBuffer];
    }
  }

  else
  {
    NSLog(&cfstr_IgnoringAttemp.isa, a2, a3, 1536);
  }
}

- (void)setHidePlacementText:(BOOL)a3
{
  v3 = a3;
  self->_hidePlacementText = a3;
  v5 = [(CRCameraReader *)self alignmentLayer];
  v4 = [v5 instructionLayer];
  [v4 setHidden:v3];
}

- (id)generateStringFromDate:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyyMMddHHmmssSSS"];
  v5 = [v4 stringFromDate:v3];

  return v5;
}

- (void)updateContactsCache:(id)a3
{
  v23[6] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionary];
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
    v11 = [(CRCameraReader *)self previousContactMatches];
    [v11 removeAllObjects];

    v22 = 0;
    v12 = [v10 _crossPlatformUnifiedMeContactWithKeysToFetch:v8 error:&v22];
    v13 = v22;
    v14 = [v4 objectForKey:@"meContact"];
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
      [v4 setObject:v17 forKey:@"meContact"];

      v18 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];
      [(CRCameraReader *)self setContactsCache:v18];
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __38__CRCameraReader_updateContactsCache___block_invoke;
    v20[3] = &unk_278EAAA08;
    v21 = v4;
    [v10 enumerateContactsWithFetchRequest:v9 error:0 usingBlock:v20];
  }

  v19 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];
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

- (void)mergeInfo:(id)a3 intoFindInfo:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__CRCameraReader_mergeInfo_intoFindInfo___block_invoke;
  v7[3] = &unk_278EAAA30;
  v8 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
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

- (id)extractFinalDigitStringFromNumbers:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndex:0];
    v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789 "];
    v6 = [v5 invertedSet];

    v7 = [v4 componentsSeparatedByCharactersInSet:v6];
    v8 = [v7 componentsJoinedByString:&stru_2859636D0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (CGRect)uniformPadRect:(CGRect)a3 widthPadding:(float)a4 heightPadding:(float)a5 width:(double)a6 height:(double)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = fmin(a4, fmin(a3.origin.x, a6 - CGRectGetMaxX(a3)));
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v15 = fmin(a5, fmin(y, a7 - CGRectGetMaxY(v20)));
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
  v26.size.width = a6;
  v26.size.height = a7;
  v24 = CGRectIntersection(v23, v26);

  return CGRectIntegral(v24);
}

+ (CGRect)aspectRatioPaddedRect:(CGRect)a3 expectedWidth:(double)a4 height:(double)a5 orientation:(unsigned int)a6
{
  width = a3.size.width;
  height = a3.size.height;
  x = a3.origin.x;
  y = a3.origin.y;
  v11 = a4 / a5;
  if (a6 != 6)
  {
    width = a3.size.width;
    height = a3.size.height;
    x = a3.origin.x;
    y = a3.origin.y;
    if (a6 != 8)
    {
      width = a3.size.height;
      height = a3.size.width;
      x = a3.origin.y;
      y = a3.origin.x;
    }
  }

  if (width / height <= v11)
  {
    if (v11 <= width / height)
    {
      goto LABEL_22;
    }

    v14 = (height * a4 / a5 - width) * 0.5;
    v13 = 0.0;
    if (x >= v14)
    {
      x = v14;
    }

    else
    {
      v13 = (v14 - x) * a5 / a4;
    }

    if (a6 != 8 && a6 != 6)
    {
      v15 = -x;
      goto LABEL_14;
    }

    v16 = -x;
LABEL_20:
    v15 = v13;
    goto LABEL_21;
  }

  v12 = (width * a5 / a4 - height) * 0.5;
  v13 = 0.0;
  if (y >= v12)
  {
    y = v12;
  }

  else
  {
    v13 = (v12 - y) * a4 / a5;
  }

  if (a6 != 8 && a6 != 6)
  {
    v16 = -y;
    goto LABEL_20;
  }

  v15 = -y;
LABEL_14:
  v16 = v13;
LABEL_21:
  a3 = CGRectInset(a3, v16, v15);
LABEL_22:

  return CGRectIntegral(a3);
}

+ (id)perspectiveCorrectedImage:(id)a3 p1:(CGPoint)a4 p2:(CGPoint)a5 p3:(CGPoint)a6 p4:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  v9 = a6.y;
  v10 = a6.x;
  v11 = a5.y;
  v12 = a5.x;
  v13 = a4.y;
  v14 = a4.x;
  v15 = a3;
  v16 = [MEMORY[0x277CBF750] filterWithName:@"CIPerspectiveCorrection"];
  v17 = [MEMORY[0x277CBF788] vectorWithCGPoint:{v14, v13}];
  [v16 setValue:v17 forKey:@"inputTopLeft"];

  v18 = [MEMORY[0x277CBF788] vectorWithCGPoint:{v12, v11}];
  [v16 setValue:v18 forKey:@"inputTopRight"];

  v19 = [MEMORY[0x277CBF788] vectorWithCGPoint:{v10, v9}];
  [v16 setValue:v19 forKey:@"inputBottomRight"];

  v20 = [MEMORY[0x277CBF788] vectorWithCGPoint:{x, y}];
  [v16 setValue:v20 forKey:@"inputBottomLeft"];

  [v16 setValue:v15 forKey:*MEMORY[0x277CBFAF0]];
  v21 = [v16 valueForKey:*MEMORY[0x277CBFB50]];

  return v21;
}

+ (id)scaledImage:(id)a3 width:(double)a4 height:(double)a5
{
  v7 = a3;
  [v7 extent];
  v9 = v8;
  [v7 extent];
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeScale(&v14, a4 / v9, a5 / v10);
  v13 = v14;
  v11 = [v7 imageByApplyingTransform:&v13];

  return v11;
}

+ (id)platformImageFromCIImage:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBF740] contextWithOptions:0];
  [v3 extent];
  v5 = [v4 createCGImage:v3 fromRect:?];
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