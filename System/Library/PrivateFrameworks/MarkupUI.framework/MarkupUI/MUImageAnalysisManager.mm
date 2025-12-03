@interface MUImageAnalysisManager
- (BOOL)actionInfoItemExistsAtPoint:(CGPoint)point;
- (BOOL)addInteractionIfNeeded;
- (BOOL)dataDetectorExistsAtPoint:(CGPoint)point;
- (BOOL)hasActiveTextSelection;
- (BOOL)hasAnalysis;
- (BOOL)hasResultsForVisualSearch;
- (BOOL)imageAnalysisInteraction:(id)interaction shouldBeginAtPoint:(CGPoint)point forAnalysisType:(unint64_t)type;
- (BOOL)imageSubjectExistsAtPoint:(CGPoint)point;
- (BOOL)isImageSubjectHighlightingEnabled;
- (BOOL)isInteractionActive;
- (BOOL)isTextSelectionEnabled;
- (BOOL)isVisualSearchEnabled;
- (BOOL)textExistsAtPoint:(CGPoint)point;
- (BOOL)visualSearchExistsAtPoint:(CGPoint)point;
- (MUImageAnalysisManager)initWithDelegate:(id)delegate presentingView:(id)view;
- (MUImageAnalysisManagerDelegate)delegate;
- (NSString)filledInfoButtonGlyphName;
- (NSString)infoButtonGlyphName;
- (UIView)presentingView;
- (VKCImageAnalyzer)imageAnalyzer;
- (id)image;
- (id)imageAnalysisQueue;
- (id)presentingViewControllerForImageAnalysisInteraction:(id)interaction;
- (unint64_t)_defaultInteractionTypes;
- (void)_activateInteractionTypes:(unint64_t)types;
- (void)_handleImageAnalysis:(id)analysis error:(id)error;
- (void)_setupAnalysisButtonsContainerInView:(id)view;
- (void)_setupImageAnalysis;
- (void)_setupNotificationsObservation;
- (void)_startImageAnalysisWithRequest:(id)request;
- (void)_updateAnalysisButtonContainerWithAnimation:(BOOL)animation;
- (void)_updateAnalysisButtonWithAnimation:(BOOL)animation;
- (void)_updateInfoButtonWithAnimation:(BOOL)animation;
- (void)adjustImageInteractionForScrollView:(id)view;
- (void)cancelAllRequests;
- (void)dealloc;
- (void)enableMarkupMode:(BOOL)mode;
- (void)imageAnalysisInteraction:(id)interaction prepareForCalloutAction:(SEL)action competion:(id)competion;
- (void)imageAnalysisPopoverDidDisappear;
- (void)imageAnalysisPopoverWillAppear;
- (void)infoButtonTapped;
- (void)setupAnalysisButtonsContainer;
- (void)shouldHideInteraction:(BOOL)interaction animated:(BOOL)animated;
- (void)startImageAnalysis;
- (void)stopImageAnalysis;
- (void)updateBottomRightContainerPositionForImageView:(id)view view:(id)a4;
- (void)updateForFullScreen:(BOOL)screen animated:(BOOL)animated;
@end

@implementation MUImageAnalysisManager

- (MUImageAnalysisManager)initWithDelegate:(id)delegate presentingView:(id)view
{
  delegateCopy = delegate;
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = MUImageAnalysisManager;
  v8 = [(MUImageAnalysisManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MUImageAnalysisManager *)v8 setDelegate:delegateCopy];
    [(MUImageAnalysisManager *)v9 setPresentingView:viewCopy];
  }

  [(MUImageAnalysisManager *)v9 _setupImageAnalysis];
  [(MUImageAnalysisManager *)v9 _setupNotificationsObservation];
  [(MUImageAnalysisManager *)v9 startImageAnalysis];
  [(MUImageAnalysisManager *)v9 setupAnalysisButtonsContainer];

  return v9;
}

- (void)_setupImageAnalysis
{
  v3 = objc_alloc_init(MEMORY[0x277D78510]);
  [(MUImageAnalysisManager *)self setImageInteraction:v3];

  _defaultInteractionTypes = [(MUImageAnalysisManager *)self _defaultInteractionTypes];
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  [imageInteraction setActiveInteractionTypes:_defaultInteractionTypes];

  imageInteraction2 = [(MUImageAnalysisManager *)self imageInteraction];
  [imageInteraction2 setDelegate:self];

  imageInteraction3 = [(MUImageAnalysisManager *)self imageInteraction];
  [imageInteraction3 setAutomaticallyShowVisualSearchResults:1];

  delegate = [(MUImageAnalysisManager *)self delegate];
  imageAnalysisView = [delegate imageAnalysisView];
  imageInteraction4 = [(MUImageAnalysisManager *)self imageInteraction];
  [imageAnalysisView addInteraction:imageInteraction4];

  [(MUImageAnalysisManager *)self _updateAnalysisButtonWithAnimation:1];
}

- (void)_setupNotificationsObservation
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v3 = getDDDetectionControllerWillPresentActionNotificationSymbolLoc_ptr;
  v16 = getDDDetectionControllerWillPresentActionNotificationSymbolLoc_ptr;
  if (!getDDDetectionControllerWillPresentActionNotificationSymbolLoc_ptr)
  {
    v4 = DataDetectorsUILibrary();
    v14[3] = dlsym(v4, "DDDetectionControllerWillPresentActionNotification");
    getDDDetectionControllerWillPresentActionNotificationSymbolLoc_ptr = v14[3];
    v3 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v3)
  {
    +[MUImageReader imageDescriptionFromSourceContent:];
    goto LABEL_13;
  }

  v5 = *v3;
  if (v5)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_dataDetectorDetectionControllerWillPresentAction_ name:v5 object:0];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v7 = getDDDetectionControllerDidDismissActionNotificationSymbolLoc_ptr;
  v16 = getDDDetectionControllerDidDismissActionNotificationSymbolLoc_ptr;
  if (!getDDDetectionControllerDidDismissActionNotificationSymbolLoc_ptr)
  {
    v8 = DataDetectorsUILibrary();
    v14[3] = dlsym(v8, "DDDetectionControllerDidDismissActionNotification");
    getDDDetectionControllerDidDismissActionNotificationSymbolLoc_ptr = v14[3];
    v7 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v7)
  {
LABEL_13:
    v12 = +[MUImageReader imageDescriptionFromSourceContent:];
    _Block_object_dispose(&v13, 8);
    _Unwind_Resume(v12);
  }

  if (*v7)
  {
    v9 = MEMORY[0x277CCAB98];
    v10 = *v7;
    defaultCenter2 = [v9 defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_dataDetectorDetectionControllerDidDismissAction_ name:v10 object:0];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MUImageAnalysisManager;
  [(MUImageAnalysisManager *)&v4 dealloc];
}

- (void)_setupAnalysisButtonsContainerInView:(id)view
{
  v96[4] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    bottomRightButtonsContainer = [(MUImageAnalysisManager *)self bottomRightButtonsContainer];

    if (!bottomRightButtonsContainer)
    {
      v6 = objc_opt_new();
      [(MUImageAnalysisManager *)self setBottomRightButtonsContainer:v6];
      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      [viewCopy addSubview:v6];
      [viewCopy rightAnchor];
      v7 = v90 = self;
      rightAnchor = [v6 rightAnchor];
      v9 = [v7 constraintEqualToAnchor:rightAnchor];

      [(MUImageAnalysisManager *)v90 setBottomRightButtonsContainerRightConstraint:v9];
      LODWORD(v10) = 1148829696;
      [(NSLayoutConstraint *)v90->_bottomRightButtonsContainerRightConstraint setPriority:v10];
      bottomAnchor = [viewCopy bottomAnchor];
      bottomAnchor2 = [v6 bottomAnchor];
      v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

      [(MUImageAnalysisManager *)v90 setBottomRightButtonsContainerBottomConstraint:v13];
      LODWORD(v14) = 1148829696;
      [v13 setPriority:v14];
      v83 = MEMORY[0x277CCAAD0];
      rightAnchor2 = [viewCopy rightAnchor];
      rightAnchor3 = [v6 rightAnchor];
      v17 = [rightAnchor2 constraintGreaterThanOrEqualToAnchor:rightAnchor3 constant:16.0];
      v96[0] = v17;
      v88 = viewCopy;
      safeAreaLayoutGuide = [viewCopy safeAreaLayoutGuide];
      bottomAnchor3 = [safeAreaLayoutGuide bottomAnchor];
      v89 = v6;
      bottomAnchor4 = [v6 bottomAnchor];
      v21 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4 constant:12.0];
      v96[1] = v21;
      v96[2] = v9;
      v86 = v13;
      v87 = v9;
      v96[3] = v13;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:4];
      [v83 activateConstraints:v22];

      v23 = v90;
      imageInteraction = [(MUImageAnalysisManager *)v90 imageInteraction];
      visualSearchCornerView = [imageInteraction visualSearchCornerView];

      superview = [visualSearchCornerView superview];

      if (!superview)
      {
        v27 = objc_opt_new();
        [(MUImageAnalysisManager *)v90 setVisualSearchViewContainer:v27];
        [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v89 addSubview:v27];
        [visualSearchCornerView setTranslatesAutoresizingMaskIntoConstraints:0];
        [v27 addSubview:visualSearchCornerView];
        v63 = MEMORY[0x277CCAAD0];
        topAnchor = [visualSearchCornerView topAnchor];
        topAnchor2 = [v27 topAnchor];
        v79 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v95[0] = v79;
        bottomAnchor5 = [visualSearchCornerView bottomAnchor];
        bottomAnchor6 = [v27 bottomAnchor];
        v73 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
        v95[1] = v73;
        trailingAnchor = [visualSearchCornerView trailingAnchor];
        trailingAnchor2 = [v27 trailingAnchor];
        v67 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v95[2] = v67;
        leadingAnchor = [visualSearchCornerView leadingAnchor];
        leadingAnchor2 = [v27 leadingAnchor];
        v59 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v95[3] = v59;
        trailingAnchor3 = [v27 trailingAnchor];
        trailingAnchor4 = [v89 trailingAnchor];
        v53 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
        v95[4] = v53;
        bottomAnchor7 = [v27 bottomAnchor];
        bottomAnchor8 = [v89 bottomAnchor];
        v28 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
        v95[5] = v28;
        widthAnchor = [v27 widthAnchor];
        widthAnchor2 = [v89 widthAnchor];
        v31 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
        v95[6] = v31;
        heightAnchor = [v27 heightAnchor];
        heightAnchor2 = [v89 heightAnchor];
        v34 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
        v95[7] = v34;
        v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:8];
        [v63 activateConstraints:v35];

        v23 = v90;
      }

      imageInteraction2 = [(MUImageAnalysisManager *)v23 imageInteraction];
      analysisButton = [imageInteraction2 analysisButton];

      superview2 = [analysisButton superview];

      if (!superview2)
      {
        v39 = objc_opt_new();
        [(MUImageAnalysisManager *)v23 setAnalysisButtonContainer:v39];
        [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v89 addSubview:v39];
        [analysisButton setTranslatesAutoresizingMaskIntoConstraints:0];
        [v39 addSubview:analysisButton];
        v66 = MEMORY[0x277CCAAD0];
        topAnchor3 = [analysisButton topAnchor];
        topAnchor4 = [v39 topAnchor];
        v82 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
        v94[0] = v82;
        bottomAnchor9 = [analysisButton bottomAnchor];
        bottomAnchor10 = [v39 bottomAnchor];
        v76 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
        v94[1] = v76;
        trailingAnchor5 = [analysisButton trailingAnchor];
        trailingAnchor6 = [v39 trailingAnchor];
        v70 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
        v94[2] = v70;
        leadingAnchor3 = [analysisButton leadingAnchor];
        leadingAnchor4 = [v39 leadingAnchor];
        v62 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
        v94[3] = v62;
        trailingAnchor7 = [v39 trailingAnchor];
        trailingAnchor8 = [v89 trailingAnchor];
        v56 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
        v94[4] = v56;
        bottomAnchor11 = [v39 bottomAnchor];
        bottomAnchor12 = [v89 bottomAnchor];
        v50 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12];
        v94[5] = v50;
        widthAnchor3 = [v39 widthAnchor];
        widthAnchor4 = [v89 widthAnchor];
        v42 = [widthAnchor3 constraintLessThanOrEqualToAnchor:widthAnchor4];
        v94[6] = v42;
        heightAnchor3 = [v39 heightAnchor];
        heightAnchor4 = [v89 heightAnchor];
        v45 = [heightAnchor3 constraintLessThanOrEqualToAnchor:heightAnchor4];
        v94[7] = v45;
        [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:8];
        v47 = v46 = visualSearchCornerView;
        [v66 activateConstraints:v47];

        visualSearchCornerView = v46;
      }

      v48 = MEMORY[0x277D75D18];
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __63__MUImageAnalysisManager__setupAnalysisButtonsContainerInView___block_invoke;
      v92[3] = &unk_27986E2C8;
      viewCopy = v88;
      v93 = v88;
      [v48 performWithoutAnimation:v92];
    }
  }
}

- (unint64_t)_defaultInteractionTypes
{
  if (_os_feature_enabled_impl())
  {
    return 9;
  }

  else
  {
    return 1;
  }
}

- (id)image
{
  delegate = [(MUImageAnalysisManager *)self delegate];
  imageForAnalysis = [delegate imageForAnalysis];

  return imageForAnalysis;
}

- (VKCImageAnalyzer)imageAnalyzer
{
  imageAnalyzer = self->_imageAnalyzer;
  if (!imageAnalyzer)
  {
    v4 = objc_alloc_init(MEMORY[0x277D78518]);
    [(MUImageAnalysisManager *)self setImageAnalyzer:v4];

    imageAnalysisQueue = [(MUImageAnalysisManager *)self imageAnalysisQueue];
    imageAnalyzer = [(MUImageAnalysisManager *)self imageAnalyzer];
    [imageAnalyzer setCallbackQueue:imageAnalysisQueue];

    imageAnalyzer = self->_imageAnalyzer;
  }

  return imageAnalyzer;
}

- (void)_updateAnalysisButtonWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  if (_os_feature_enabled_impl())
  {
    imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
    analysis = [imageInteraction analysis];

    v6 = analysis;
    if (analysis)
    {
      v7 = [analysis hasResultsForAnalysisTypes:29];
      if ([(MUImageAnalysisManager *)self isFullScreen])
      {
        if ([(MUImageAnalysisManager *)self isVisualSearchEnabled])
        {
          v8 = ![(MUImageAnalysisManager *)self isImageAnalysisPopoverPresented];
        }

        else
        {
          LOBYTE(v8) = 1;
        }
      }

      else
      {
        LOBYTE(v8) = 0;
      }

      v9 = v8 | ~v7;
      imageInteraction2 = [(MUImageAnalysisManager *)self imageInteraction];
      [imageInteraction2 setActionInfoViewHidden:v9 & 1 animated:animationCopy];

      v6 = analysis;
    }
  }

  else
  {

    [(MUImageAnalysisManager *)self _updateAnalysisButtonContainerWithAnimation:animationCopy];
  }
}

- (void)_updateAnalysisButtonContainerWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  analysis = [imageInteraction analysis];

  if (analysis)
  {
    v7 = [analysis hasResultsForAnalysisTypes:13];
  }

  else
  {
    v7 = 0;
  }

  v8 = ![(MUImageAnalysisManager *)self isVisualSearchEnabled]& v7;
  if ([(MUImageAnalysisManager *)self isFullScreen])
  {
    imageInteraction2 = [(MUImageAnalysisManager *)self imageInteraction];
    analysisButton = [imageInteraction2 analysisButton];
    if ([analysisButton state] != 4)
    {
      LOBYTE(v8) = 0;
    }
  }

  if (v8)
  {
    analysisButtonContainer = [(MUImageAnalysisManager *)self analysisButtonContainer];
    [analysisButtonContainer setHidden:0];

    delegate = [(MUImageAnalysisManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate imageAnalyzerWantsUpdateOverlayViews];
    }

    v13 = 1;
  }

  else
  {
    delegate = [(MUImageAnalysisManager *)self delegate];
    v13 = 0;
  }

  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__MUImageAnalysisManager__updateAnalysisButtonContainerWithAnimation___block_invoke;
  v16[3] = &unk_27986E918;
  objc_copyWeak(&v17, &location);
  v18 = v13;
  v14 = MEMORY[0x259C7BE00](v16);
  v15 = v14;
  if (animationCopy)
  {
    [MEMORY[0x277D75D18] animateWithDuration:5242880 delay:v14 options:0 animations:0.4 completion:0.0];
  }

  else
  {
    (*(v14 + 16))(v14);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __70__MUImageAnalysisManager__updateAnalysisButtonContainerWithAnimation___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained analysisButtonContainer];
  [v2 setAlpha:v1];
}

- (void)_activateInteractionTypes:(unint64_t)types
{
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  [imageInteraction setActiveInteractionTypes:types];

  [(MUImageAnalysisManager *)self _updateAnalysisButtonWithAnimation:1];

  [(MUImageAnalysisManager *)self _updateInfoButtonWithAnimation:1];
}

- (void)setupAnalysisButtonsContainer
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    presentingView = [(MUImageAnalysisManager *)self presentingView];
    if (presentingView)
    {
      [(MUImageAnalysisManager *)self _setupAnalysisButtonsContainerInView:presentingView];
    }

    MEMORY[0x2821F96F8]();
  }
}

- (id)imageAnalysisQueue
{
  if (imageAnalysisQueue_once != -1)
  {
    [MUImageAnalysisManager imageAnalysisQueue];
  }

  v3 = imageAnalysisQueue_queue;

  return v3;
}

void __44__MUImageAnalysisManager_imageAnalysisQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.markup.image-analysis", attr);
  v2 = imageAnalysisQueue_queue;
  imageAnalysisQueue_queue = v1;
}

- (void)startImageAnalysis
{
  image = [(MUImageAnalysisManager *)self image];
  v9 = image;
  if (image)
  {
    NSLog(&cfstr_CreatingImageA.isa, image);
    v4 = [objc_alloc(MEMORY[0x277D78520]) initWithImage:v9 requestType:-65];
    delegate = [(MUImageAnalysisManager *)self delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      clientPreviewOptions = [delegate clientPreviewOptions];
      v7 = [clientPreviewOptions objectForKeyedSubscript:@"imageURL"];
      [v4 setImageURL:v7];

      v8 = [clientPreviewOptions objectForKeyedSubscript:@"pageURL"];
      [v4 setPageURL:v8];
    }

    [(MUImageAnalysisManager *)self _startImageAnalysisWithRequest:v4];
  }

  else
  {
    NSLog(&cfstr_CouldNotCreate.isa);
  }
}

- (void)_startImageAnalysisWithRequest:(id)request
{
  requestCopy = request;
  [(MUImageAnalysisManager *)self cancelAllRequests];
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  [imageInteraction setAnalysis:0];

  objc_initWeak(&location, self);
  imageAnalysisQueue = [(MUImageAnalysisManager *)self imageAnalysisQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MUImageAnalysisManager__startImageAnalysisWithRequest___block_invoke;
  block[3] = &unk_27986E4F0;
  objc_copyWeak(&v10, &location);
  v7 = requestCopy;
  v9 = v7;
  dispatch_async(imageAnalysisQueue, block);

  [(MUImageAnalysisManager *)self _updateInfoButtonWithAnimation:1];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __57__MUImageAnalysisManager__startImageAnalysisWithRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    NSLog(&cfstr_ProcessingImag.isa, *(a1 + 32));
    v3 = [WeakRetained imageAnalyzer];
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __57__MUImageAnalysisManager__startImageAnalysisWithRequest___block_invoke_2;
    v5[3] = &unk_27986E940;
    objc_copyWeak(&v6, (a1 + 40));
    [WeakRetained setImageAnalysisRequestId:{objc_msgSend(v3, "processRequest:progressHandler:completionHandler:", v4, 0, v5)}];

    objc_destroyWeak(&v6);
  }
}

void __57__MUImageAnalysisManager__startImageAnalysisWithRequest___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] == -2 && (objc_msgSend(v7, "domain"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"com.apple.VisionKit.ImageAnalyzer"), v8, (v9 & 1) != 0))
    {
      NSLog(&cfstr_ImageAnalysisC.isa, v7);
    }

    else
    {
      NSLog(&cfstr_ImageAnalysisF.isa, v7);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setImageAnalysisRequestId:0];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MUImageAnalysisManager__startImageAnalysisWithRequest___block_invoke_3;
  block[3] = &unk_27986E390;
  objc_copyWeak(&v16, (a1 + 32));
  v14 = v5;
  v15 = v7;
  v11 = v7;
  v12 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v16);
}

void __57__MUImageAnalysisManager__startImageAnalysisWithRequest___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleImageAnalysis:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_handleImageAnalysis:(id)analysis error:(id)error
{
  analysisCopy = analysis;
  errorCopy = error;
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  v9 = imageInteraction;
  if (!analysisCopy || errorCopy)
  {
    v10 = 0;
  }

  else
  {
    v10 = analysisCopy;
  }

  [imageInteraction setAnalysis:v10];

  [(MUImageAnalysisManager *)self _updateAnalysisButtonWithAnimation:1];
  [(MUImageAnalysisManager *)self _updateInfoButtonWithAnimation:1];
  if (self->_shouldEnterVisualSearchAfterNextAnalysis)
  {
    self->_shouldEnterVisualSearchAfterNextAnalysis = 0;
    [(MUImageAnalysisManager *)self activateVisualSearchInteraction];
  }

  else if (self->_shouldHighlightTextAndDDAfterNextAnalysis)
  {
    self->_shouldHighlightTextAndDDAfterNextAnalysis = 0;
    v11 = dispatch_time(0, 10000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__MUImageAnalysisManager__handleImageAnalysis_error___block_invoke;
    block[3] = &unk_27986E2C8;
    block[4] = self;
    dispatch_after(v11, MEMORY[0x277D85CD0], block);
  }

  else if (self->_shouldUpliftSubjectAfterNextAnalysis)
  {
    self->_shouldUpliftSubjectAfterNextAnalysis = 0;
    imageInteraction2 = [(MUImageAnalysisManager *)self imageInteraction];
    [imageInteraction2 setSubjectHighlightActive:1];
  }
}

void __53__MUImageAnalysisManager__handleImageAnalysis_error___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) imageInteraction];
  [v1 setHighlightSelectableItems:1];
}

- (void)_updateInfoButtonWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  delegate = [(MUImageAnalysisManager *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 imageAnalyzerWantsUpdateInfoButtonWithAnimation:animationCopy];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)updateBottomRightContainerPositionForImageView:(id)view view:(id)a4
{
  if (view && a4)
  {
    v6 = a4;
    viewCopy = view;
    [viewCopy bounds];
    MaxX = CGRectGetMaxX(v26);
    [viewCopy bounds];
    [viewCopy convertPoint:v6 toView:{MaxX, CGRectGetMaxY(v27)}];
    v10 = v9;
    v12 = v11;

    [v6 frame];
    v13 = CGRectGetMaxX(v28) - v10 + 16.0;
    [v6 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v29.origin.x = v15;
    v29.origin.y = v17;
    v29.size.width = v19;
    v29.size.height = v21;
    v22 = CGRectGetMaxY(v29) - v12 + 12.0;
    bottomRightButtonsContainerRightConstraint = [(MUImageAnalysisManager *)self bottomRightButtonsContainerRightConstraint];
    [bottomRightButtonsContainerRightConstraint setConstant:v13];

    bottomRightButtonsContainerBottomConstraint = [(MUImageAnalysisManager *)self bottomRightButtonsContainerBottomConstraint];
    [bottomRightButtonsContainerBottomConstraint setConstant:v22];
  }
}

- (void)updateForFullScreen:(BOOL)screen animated:(BOOL)animated
{
  animatedCopy = animated;
  [(MUImageAnalysisManager *)self setIsFullScreen:screen];
  [(MUImageAnalysisManager *)self _updateAnalysisButtonWithAnimation:animatedCopy];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
    if (imageInteraction && (![(MUImageAnalysisManager *)self isVisualSearchEnabled]? (v7 = 0) : (v7 = [(MUImageAnalysisManager *)self hasResultsForVisualSearch]), ![(MUImageAnalysisManager *)self isFullScreen]? (v8 = 1) : (v8 = [(MUImageAnalysisManager *)self isImageAnalysisPopoverPresented]), v7 && v8))
    {
      visualSearchViewContainer = [(MUImageAnalysisManager *)self visualSearchViewContainer];
      [visualSearchViewContainer setHidden:0];

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__MUImageAnalysisManager_updateForFullScreen_animated___block_invoke;
    v12[3] = &unk_27986E918;
    objc_copyWeak(&v13, &location);
    v14 = v10;
    v11 = MEMORY[0x259C7BE00](v12);
    [MEMORY[0x277D75D18] animateWithDuration:5242880 delay:v11 options:0 animations:0.4 completion:0.0];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __55__MUImageAnalysisManager_updateForFullScreen_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained visualSearchViewContainer];
  [v2 setAlpha:v1];
}

- (void)stopImageAnalysis
{
  [(MUImageAnalysisManager *)self _updateInfoButtonWithAnimation:1];
  [(MUImageAnalysisManager *)self cancelAllRequests];
  delegate = [(MUImageAnalysisManager *)self delegate];
  imageAnalysisView = [delegate imageAnalysisView];
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  [imageAnalysisView removeInteraction:imageInteraction];

  bottomRightButtonsContainer = [(MUImageAnalysisManager *)self bottomRightButtonsContainer];
  [bottomRightButtonsContainer removeFromSuperview];

  [(MUImageAnalysisManager *)self setBottomRightButtonsContainer:0];
}

- (void)cancelAllRequests
{
  NSLog(&cfstr_CancelAllImage.isa, a2);
  imageAnalyzer = [(MUImageAnalysisManager *)self imageAnalyzer];
  [imageAnalyzer cancelAllRequests];
}

- (BOOL)hasAnalysis
{
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  analysis = [imageInteraction analysis];
  v4 = analysis != 0;

  return v4;
}

- (BOOL)addInteractionIfNeeded
{
  delegate = [(MUImageAnalysisManager *)self delegate];
  imageAnalysisView = [delegate imageAnalysisView];

  if (imageAnalysisView)
  {
    imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
    if (imageInteraction && ([imageAnalysisView interactions], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", imageInteraction), v6, (v7 & 1) == 0))
    {
      [imageAnalysisView addInteraction:imageInteraction];
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)enableMarkupMode:(BOOL)mode
{
  modeCopy = mode;
  delegate = [(MUImageAnalysisManager *)self delegate];
  imageAnalysisView = [delegate imageAnalysisView];

  if (imageAnalysisView)
  {
    imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
    v7 = imageInteraction;
    if (modeCopy || !imageInteraction)
    {
      if (modeCopy)
      {
        interactions = [imageAnalysisView interactions];
        v9 = [interactions containsObject:v7];

        if (v9)
        {
          if (([v7 activeInteractionTypes] & 4) != 0)
          {
            [(MUImageAnalysisManager *)self _activateInteractionTypes:[(MUImageAnalysisManager *)self _defaultInteractionTypes]];
          }

          [(MUImageAnalysisManager *)self cancelAllRequests];
          [v7 setAnalysis:0];
          [imageAnalysisView removeInteraction:v7];
        }
      }
    }

    else
    {
      [imageAnalysisView addInteraction:imageInteraction];
    }
  }
}

- (BOOL)isInteractionActive
{
  delegate = [(MUImageAnalysisManager *)self delegate];
  imageAnalysisView = [delegate imageAnalysisView];

  if (imageAnalysisView)
  {
    imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
    if (imageInteraction)
    {
      interactions = [imageAnalysisView interactions];
      v7 = [interactions containsObject:imageInteraction];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasResultsForVisualSearch
{
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  analysis = [imageInteraction analysis];

  if (analysis)
  {
    v4 = [analysis hasResultsForAnalysisTypes:16];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isVisualSearchEnabled
{
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  v3 = imageInteraction;
  if (imageInteraction)
  {
    v4 = ([imageInteraction activeInteractionTypes] >> 2) & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (NSString)infoButtonGlyphName
{
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    imageInteraction2 = [(MUImageAnalysisManager *)self imageInteraction];
    visualSearchResultItems = [imageInteraction2 visualSearchResultItems];
    firstObject = [visualSearchResultItems firstObject];

    if (objc_opt_respondsToSelector())
    {
      infoButtonGlyphName = [firstObject infoButtonGlyphName];
    }

    else
    {
      infoButtonGlyphName = 0;
    }
  }

  else
  {
    infoButtonGlyphName = 0;
  }

  return infoButtonGlyphName;
}

- (NSString)filledInfoButtonGlyphName
{
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    imageInteraction2 = [(MUImageAnalysisManager *)self imageInteraction];
    visualSearchResultItems = [imageInteraction2 visualSearchResultItems];
    firstObject = [visualSearchResultItems firstObject];

    if (objc_opt_respondsToSelector())
    {
      filledInfoButtonGlyphName = [firstObject filledInfoButtonGlyphName];
    }

    else
    {
      filledInfoButtonGlyphName = 0;
    }
  }

  else
  {
    filledInfoButtonGlyphName = 0;
  }

  return filledInfoButtonGlyphName;
}

- (BOOL)isTextSelectionEnabled
{
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  v3 = imageInteraction;
  if (imageInteraction && ([imageInteraction activeInteractionTypes] & 1) != 0)
  {
    highlightSelectableItems = [v3 highlightSelectableItems];
  }

  else
  {
    highlightSelectableItems = 0;
  }

  return highlightSelectableItems;
}

- (BOOL)isImageSubjectHighlightingEnabled
{
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  v3 = imageInteraction;
  if (imageInteraction)
  {
    v4 = ([imageInteraction activeInteractionTypes] >> 3) & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)infoButtonTapped
{
  if ([(MUImageAnalysisManager *)self isVisualSearchEnabled])
  {
    _defaultInteractionTypes = [(MUImageAnalysisManager *)self _defaultInteractionTypes];
  }

  else
  {
    _defaultInteractionTypes = 4;
  }

  [(MUImageAnalysisManager *)self _activateInteractionTypes:_defaultInteractionTypes];
}

- (void)shouldHideInteraction:(BOOL)interaction animated:(BOOL)animated
{
  animatedCopy = animated;
  interactionCopy = interaction;
  delegate = [(MUImageAnalysisManager *)self delegate];
  imageAnalysisView = [delegate imageAnalysisView];
  if (imageAnalysisView)
  {
    imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
    if (imageInteraction)
    {
      interactions = [imageAnalysisView interactions];
      v10 = [interactions containsObject:imageInteraction];

      if (interactionCopy && v10)
      {
        imageAnalysisView2 = [delegate imageAnalysisView];
        [imageAnalysisView2 removeInteraction:imageInteraction];
LABEL_8:

        [(MUImageAnalysisManager *)self _updateAnalysisButtonWithAnimation:animatedCopy];
        [(MUImageAnalysisManager *)self _updateInfoButtonWithAnimation:animatedCopy];
        goto LABEL_9;
      }

      if (((interactionCopy | v10) & 1) == 0)
      {
        imageAnalysisView2 = [delegate imageAnalysisView];
        [imageAnalysisView2 addInteraction:imageInteraction];
        goto LABEL_8;
      }
    }

LABEL_9:
  }
}

- (BOOL)dataDetectorExistsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  v6 = [imageInteraction dataDetectorExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)textExistsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  v6 = [imageInteraction textExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)imageSubjectExistsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  v6 = [imageInteraction imageSubjectExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)visualSearchExistsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  v6 = [imageInteraction visualSearchExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)actionInfoItemExistsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  v6 = [imageInteraction actionInfoItemExistsAtPoint:{x, y}];

  return v6;
}

- (BOOL)hasActiveTextSelection
{
  imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
  hasActiveTextSelection = [imageInteraction hasActiveTextSelection];

  return hasActiveTextSelection;
}

- (void)adjustImageInteractionForScrollView:(id)view
{
  viewCopy = view;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    delegate = [(MUImageAnalysisManager *)self delegate];
    imageAnalysisView = [delegate imageAnalysisView];

    if (viewCopy && imageAnalysisView)
    {
      [viewCopy bounds];
      [viewCopy convertRect:imageAnalysisView toView:?];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [imageAnalysisView bounds];
      v15 = v7 / v14;
      [imageAnalysisView bounds];
      v17 = v9 / v16;
      [imageAnalysisView bounds];
      v19 = v11 / v18;
      [imageAnalysisView bounds];
      v21 = v13 / v20;
      imageInteraction = [(MUImageAnalysisManager *)self imageInteraction];
      [imageInteraction scrollViewDidZoomToUnitRect:{v15, v17, v19, v21}];
    }
  }
}

- (BOOL)imageAnalysisInteraction:(id)interaction shouldBeginAtPoint:(CGPoint)point forAnalysisType:(unint64_t)type
{
  y = point.y;
  x = point.x;
  interactionCopy = interaction;
  v8 = [interactionCopy textExistsAtPoint:{x, y}];
  v9 = [interactionCopy imageSubjectExistsAtPoint:{x, y}];
  v10 = [interactionCopy dataDetectorExistsAtPoint:{x, y}];
  v11 = [interactionCopy visualSearchExistsAtPoint:{x, y}];
  hasActiveTextSelection = 1;
  if ((v8 & 1) == 0 && (v9 & 1) == 0 && (v10 & 1) == 0 && (v11 & 1) == 0)
  {
    hasActiveTextSelection = [interactionCopy hasActiveTextSelection];
  }

  return hasActiveTextSelection;
}

- (void)imageAnalysisPopoverWillAppear
{
  [(MUImageAnalysisManager *)self setIsImageAnalysisPopoverPresented:1];
  delegate = [(MUImageAnalysisManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate imageAnalysisInteractionWillPresentVisualSearchController];
  }
}

- (void)imageAnalysisPopoverDidDisappear
{
  [(MUImageAnalysisManager *)self setIsImageAnalysisPopoverPresented:0];
  delegate = [(MUImageAnalysisManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate imageAnalysisInteractionDidDismissVisualSearchController];
  }
}

- (void)imageAnalysisInteraction:(id)interaction prepareForCalloutAction:(SEL)action competion:(id)competion
{
  competionCopy = competion;
  v7 = NSStringFromSelector(action);
  v8 = [MEMORY[0x277CBEB98] setWithObjects:{@"_define:", @"_translate:", @"_share:", @"_addShortcut:", 0}];
  if ([v8 containsObject:v7])
  {
    [(MUImageAnalysisManager *)self imageAnalysisPopoverWillAppear];
  }

  competionCopy[2]();
}

- (id)presentingViewControllerForImageAnalysisInteraction:(id)interaction
{
  interactionCopy = interaction;
  delegate = [(MUImageAnalysisManager *)self delegate];
  v6 = [delegate presentingViewControllerForImageAnalysisInteraction:interactionCopy];

  return v6;
}

- (MUImageAnalysisManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)presentingView
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingView);

  return WeakRetained;
}

@end